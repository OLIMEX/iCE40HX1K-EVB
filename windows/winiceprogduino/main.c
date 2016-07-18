/*
 *  iceprogduino -- simple programming tool for FTDI-based Lattice iCE programmers
 *  and Olimexino-32U4 based programmers for iCE40HX1K-EVB
 *
 *  Copyright (C) 2015  Clifford Wolf <clifford@clifford.at>
 *  Olimexino-32U4 edition by Chris B. <chris@protonic.co.uk> @ Olimex Ltd. <c> 2016
 *  
 *  Permission to use, copy, modify, and/or distribute this software for any
 *  purpose with or without fee is hereby granted, provided that the above
 *  copyright notice and this permission notice appear in all copies.
 *  
 *  THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
 *  WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
 *  MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
 *  ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
 *  WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
 *  ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
 *  OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
 *
 *  Relevant Documents:
 *  -------------------
 *  http://www.latticesemi.com/~/media/Documents/UserManuals/EI/icestickusermanual.pdf
 *  http://www.micron.com/~/media/documents/products/data-sheet/nor-flash/serial-nor/n25q/n25q_32mb_3v_65nm.pdf
 *  https://www.olimex.com/ iCE40HX1K-EVB
 */

#define READ_ID 	0x9F
#define PWR_UP 		0xAB
#define PWR_DOWN 	0xB9
#define WR_EN		0x06
#define BULK_ERASE	0xC7
#define SEC_ERASE	0xd8
#define PROG		0x02
#define READ		0x03
#define READY		0x44
#define READ_ALL	0x83
#define EMPTY		0x45

#define _GNU_SOURCE
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>

#include <windows.h>
#include <sys/stat.h>
#include <direct.h>

#pragma GCC diagnostic ignored "-Wdeprecated-declarations"

DWORD bytes_written;
DWORD bytes_read;
uint32_t to=0;
int x;
uint8_t buffer_file[0x200000];

void serial_read(int x);

#define FEND	0xc0
#define FESC	0xdb
#define TFEND 	0xdc
#define TFESC	0xdd
bool newframe;
bool timeout;
bool escaped;
	bool dont_erase = false;
	bool mode = false;

#define SerialPort  "COM24"
uint8_t rxframe[512], txframe[512], fcs, tfcs;
uint16_t txp,rxp;
uint8_t membuf[0x200000];
uint8_t pages[0x2000];

bool verbose = false;

//those fellas
HANDLE hSerial;
DCB dcbSerialParams = {0};
COMMTIMEOUTS timeouts = {0};

COMMPROP commProp = {0};

int sermemsize = 8192;

int set_interface_attribs (char *pname)
{
	hSerial = CreateFile(pname, GENERIC_READ|GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL );
	if (hSerial == INVALID_HANDLE_VALUE)
	{
		fprintf(stderr,"error %d (invalid file handle)", errno);
		return -1;
	}
    
	SetupComm (hSerial, sermemsize, sermemsize);  /* Set buffer size. */
	PurgeComm (hSerial, PURGE_TXABORT | PURGE_TXCLEAR | PURGE_RXABORT | PURGE_RXCLEAR);
    
	dcbSerialParams.DCBlength = sizeof(dcbSerialParams);
	if (GetCommState(hSerial, &dcbSerialParams) == 0)
	{
		fprintf(stderr, "Error getting device state\n");
		CloseHandle(hSerial);
		return -1;
	}
     
	dcbSerialParams.BaudRate = CBR_57600;
	dcbSerialParams.ByteSize = 8;
	dcbSerialParams.StopBits = ONESTOPBIT;
	dcbSerialParams.Parity = NOPARITY;
	if(SetCommState(hSerial, &dcbSerialParams) == 0)
	{
		fprintf(stderr, "Error setting device parameters\n");
		CloseHandle(hSerial);
		return -1;
	}
	memset ((void *) &timeouts, 0, sizeof (timeouts));
 
	timeouts.ReadIntervalTimeout = 1000;
	timeouts.ReadTotalTimeoutConstant = 2;
	timeouts.ReadTotalTimeoutMultiplier = 1;
	timeouts.WriteTotalTimeoutConstant = 2;
	timeouts.WriteTotalTimeoutMultiplier = 1;    

	if(SetCommTimeouts(hSerial, &timeouts) == 0)
	{
		fprintf(stderr, "Error setting timeouts\n");
		CloseHandle(hSerial);
		return -1;
	}
	
	
	memset ((void *) &commProp, 0, sizeof (commProp));

	return 0;
}

void usleep(unsigned long int val)
{
    LARGE_INTEGER ticksPerSecond;
	LARGE_INTEGER tick;
	LARGE_INTEGER tick_n;
	QueryPerformanceFrequency(&ticksPerSecond);
	QueryPerformanceCounter(&tick);
	val = (float)val * ((float)ticksPerSecond.QuadPart / (float)1000000);
	while(1)
	{
		QueryPerformanceCounter(&tick_n);
		if((tick_n.QuadPart - tick.QuadPart) > val)
		{
			break;
		}
	}
}

void startframe(uint8_t command)
{
	txframe[0]=FEND;
	txframe[1]=command;
	tfcs = command;
	txp = 2;
}

void addbyte(uint8_t newbyte)
{
	tfcs+=newbyte;

	switch(newbyte)
	{
		case FEND:
		txframe[txp++] = FESC;
		txframe[txp++] = TFEND;
		break;
		case FESC:
		txframe[txp++] = FESC;
		txframe[txp++] = TFESC;
		break; 

		default:
		txframe[txp++] = newbyte;
		break;
	}
}

void sendframe(){
	tfcs=0xff-tfcs;
 addbyte(tfcs);	
 txframe[txp++] = FEND;
#ifdef frdebug  
printf("%02X-L:%04X/%02X\n",txframe[txp-1],txp,tfcs);
#endif 

if(!WriteFile(hSerial, txframe, txp, &bytes_written, NULL))
{
    fprintf(stderr, "Error\n");
    CloseHandle(hSerial);
    return;
}  
 
}


void error()
{
	exit(1);
}


 

bool waitframe(uint8_t cmd)
{
	rxp = 0;
	newframe = false;
	fcs = 0;

uint32_t addr;

for (to=0;to<5000;to++)
{
serial_read(0);
usleep(50);	

if (newframe){

	rxp = 0;
	newframe = false;
	usleep(10);

	     
				if ((rxframe[0]==READ_ID) && (cmd == READ_ID)){
			
						if (rxframe[1]==0xef) fprintf(stderr, "Winbond Serial Flash ");
						else fprintf(stderr, "Manufacturer ID: 0x%02X",rxframe[1]);
						if ((rxframe[2]==0x40) && (rxframe[3]==0x15)) fprintf(stderr, "- W25Q16BV\n");  
						else fprintf(stderr, " / Device ID: 0x%02X%02X\n",rxframe[2],rxframe[3]);
						
						return true;
						
										}	 
	     
				if (rxframe[0]==READ)
	     
					{
			
						addr = (rxframe[1]<<16) | (rxframe[2]<<8);
						pages[addr>>8]=0;
	              
						for (x=3; x < 259;x++)
						{

							membuf[addr++]=rxframe[x];
						}
					}

		if (rxframe[0]==READY)  if (cmd==READY) return true; else to = 0;
  
		if (rxframe[0]==EMPTY)  pages[(rxframe[1]<<8) | rxframe[2]]=0;
	
		if ((rxframe[0]==READ)||(rxframe[0]==EMPTY)) if (cmd==READ) return true; else to = 0;
rxframe[0]=0;
fcs = 0;
}

}
return false;
}
 



void flash_read_id()
{
	startframe(READ_ID);
	sendframe();
	waitframe(READ_ID);
	return;
 	
	fprintf(stderr, "\n");
}


void flash_bulk_erase()
{
	fprintf(stderr, "\nbulk erase..");
    mode = true;

 
	startframe(BULK_ERASE);
	sendframe();
    waitframe(BULK_ERASE);
    fprintf(stderr, "\rbulk erased\n");
    mode = false;
 	
}

void flash_64kB_sector_erase(int addr)
{
	fprintf(stderr, "erase 64kB sector at 0x%06X..", addr);
 
    mode = true;
	startframe(SEC_ERASE);
	addbyte(addr>>8);
	addbyte(addr>>0);
	sendframe();
    waitframe(READY);
    fprintf(stderr, "erased\n");
    mode = false;
 
}
 
void flash_read_all(void){
	
  	fprintf(stderr, "read 0x%06X +0x%06X..\n", 0, 0x200000);
	 memset(&membuf,0xff,sizeof(membuf));
	 memset(&pages,0xff,sizeof(pages));
     startframe(READ_ALL);
     sendframe();
	 if (!waitframe(READY))
	 {
		error();
		 
	 }	 
	 
	 fprintf(stderr, "Requesting missmatched frames...");
		bool notready=false;
		while (1)
		{
			notready = false;
			int s = 0;
			for(x = 0; x < 0x2000;x++)
			{

				if (pages[x]>0)
				{
					if (s++ > 25)
					{
						fprintf(stderr, "ERROR Reading..\n");
						notready = false;
						break;
					} 
					notready=true;	
					fprintf(stderr, ".");
					startframe(READ);
					addbyte(x >> 8);
					addbyte(x >> 0);
					sendframe();
					waitframe(READ);
				}
			}
			if (!notready) break;
		}
		fprintf(stderr, "\n");
		uint32_t i;
		if (verbose)
		for (i = 0; i < 1024; i++)
			fprintf(stderr, "%02x%c", membuf[i], i == 0 || i % 32 == 31 ? '\n' : ' ');
			
			

	
	
}	
 



void help(const char *progname)
{

	fprintf(stderr, "\n");
	fprintf(stderr, "winiceprogduino -- simple programming tool for Olimexino-32U4 based Lattice iCE programmers\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "Usage: %s [options] <filename>\n", progname);
	fprintf(stderr, "\n");
	fprintf(stderr, "    -e\n");
	fprintf(stderr, "        bulk erase entire flash only\n");
	fprintf(stderr, "\n");	
	fprintf(stderr, "    -w\n");
	fprintf(stderr, "        write only, do not verify\n\n");
	fprintf(stderr, "    -f\n");
	fprintf(stderr, "        write all data, including 0xFF's pages\n\n");	
	fprintf(stderr, "    -I<serialport>\n");
	fprintf(stderr, "        port to connect Arduino\n");	
	fprintf(stderr, "\n");
	fprintf(stderr, "    -r\n");
	fprintf(stderr, "        read entire flash (2MB) and write to file\n");
	fprintf(stderr, "\n");

	 	
	fprintf(stderr, "    -c\n");
	fprintf(stderr, "        do not write flash, only verify (check)\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "    -b\n");
	fprintf(stderr, "        bulk erase entire flash before writing\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "    -n\n");
	fprintf(stderr, "        do not erase flash before writing\n");
	fprintf(stderr, "\n");

 	
	fprintf(stderr, "    -t\n");
	fprintf(stderr, "        just read the flash ID sequence\n");
	fprintf(stderr, "\n");
	fprintf(stderr, "    -v\n");
	fprintf(stderr, "        verbose output\n");
	fprintf(stderr, "\n");
  exit(1);
}

 
void serial_read(int x)
{
	DWORD dwCommEvent;
   		DWORD   n;
	
while (1)
{
	if (rxp>512)
	{
	newframe = 0;	
	rxp = 0;
	escaped = false;
	fcs = 0;	
	break;
	}	 
	usleep(5);
   uint8_t buf[1];
 n = 0;

        //n=read(fd, buf, 1);
    if(mode)
    {
    	while(n == 1)
    	{
            if (!ReadFile(hSerial, buf, 1, &n, NULL))
            {
                fprintf(stderr, "Error\n");
                CloseHandle(hSerial);
                return;
            }
    	}
    }
    else
    {
        if (!ReadFile(hSerial, buf, 1, &n, NULL))
        {
            fprintf(stderr, "Error\n");
            CloseHandle(hSerial);
            return;
        }
    }

  
		if (n==1){
			
	switch(buf[0]){
		case FEND:
		if (fcs==0xff)
		{
		newframe = 1;
		return;
		}
		newframe = 0;	
		rxp = 0;
		escaped = false;
		fcs = 0;
        
		break;
		
		case FESC:
		escaped = true;
		break;
		
		case TFESC:
		if (escaped)
		{
		rxframe[rxp++]=FESC;
		fcs+=FESC;
		escaped = false;
		}
		else 
		{
		rxframe[rxp++]=TFESC;
		fcs += TFESC;
		}
		
		break;
		
		case TFEND:
		if (escaped)
		{
		rxframe[rxp++]=FEND;
		fcs += FEND;
		escaped=false;
		}
		else
		{
		 rxframe[rxp++]=TFEND;
		fcs += TFEND;
		}
		break;
		
		default:	
		escaped=false;
		rxframe[rxp++]=buf[0];
		fcs+=buf[0];
		break;
	}	
	}
	else break;
}	
}
 
int main(int argc, char **argv)
{
	int addr;
	int max_read_size = 0x200000;
	bool read_mode = false;
	bool check_mode = false;
	bool bulk_erase = false;
	bool prog_sram = false;
	bool test_mode = false;
 
	bool noverify = true; // verify performs by arduino board
	bool ff_mode = false;
	bool bulk_erase_only = false;
	const char *filename = NULL;
	const char *devstr = NULL;

	int opt;

 		
char *portname = SerialPort;
	while ((opt = getopt(argc, argv, "I:rcbntvwfeh")) != -1)
 

	{
		switch (opt)
		{
		case 'd':
			devstr = optarg;
			break;

 			
		case 'I':
			portname = optarg;
			break;
 			
		case 'r':
			read_mode = true;
			noverify=false;
			break;
		case 'e':
			bulk_erase_only = true;
			break;			
		case 'f':
			ff_mode = true;
			break;			
		case 'R':
			read_mode = true;
			max_read_size = 256 * 1024;
			break;
		case 'c':
			check_mode = true;
			noverify=false;
			break;
		case 'b':
			bulk_erase = true;
			break;
		case 'n':
		
			dont_erase = true;
			break;
		case 'S':
			prog_sram = true;
			break;
		case 't':
			test_mode = true;
			printf("\nTest mode\n");
			break;
		case 'v':
			verbose = true;
			break;
		case 'w':
			noverify = true;
			break;			
		default:
			help(argv[0]);
		}
	}




	if (read_mode + check_mode + prog_sram + test_mode > 1)
		help(argv[0]);

	if (bulk_erase && dont_erase)
		help(argv[0]);

	if (optind+1 != argc && !test_mode && !bulk_erase_only)
		help(argv[0]);

	filename = argv[optind];

	bulk_erase = true;  // comment this line if you do not want to bulk erase by default

 

		   
set_interface_attribs (portname);  // set speed to 57600 bps, 8n1 (no parity)
				    usleep(100000);

PurgeComm(hSerial, PURGE_RXCLEAR);
PurgeComm(hSerial, PURGE_TXCLEAR);

    fprintf(stderr,"Serial: %s: %s\n",  portname, strerror (errno));
 


	
	rxp = 0;
	
	if (test_mode)
	{
 
		
		flash_read_id();
	
	
		

 
	}
	else if (prog_sram)
	{
		fprintf(stderr, "\nprogramming SRAM is not supported!\n");
	}
	else
	{
		
		// ---------------------------------------------------------
		// Program
		// ---------------------------------------------------------

		if (!read_mode && !check_mode && !bulk_erase_only)
		{
			
			FILE *f = (strcmp(filename, "-") == 0) ? stdin :
				fopen(filename, "rb");
			if (f == NULL) {
				fprintf(stderr, "Error: Can't open '%s' for reading: %s\n", filename, strerror(errno));
				error();
							}

			if (!dont_erase)
			{
				if (bulk_erase)
				{
				
					flash_bulk_erase();

				    usleep(1000000);
				    flash_read_id();
	
				}
				else
				{
					struct stat st_buf;
					if (stat(filename, &st_buf)) {
						fprintf(stderr, "Error: Can't stat '%s': %s\n", filename, strerror(errno));
						error();
					}

					fprintf(stderr, "file size: %d\n", (int)st_buf.st_size);
					for (addr = 0; addr < st_buf.st_size; addr += 0x10000) {
					
						flash_64kB_sector_erase(addr);
						
					}
				}
			}

			fprintf(stderr, "\nprogramming..\n");
int ccc;	

PurgeComm(hSerial, PURGE_RXCLEAR);
PurgeComm(hSerial, PURGE_TXCLEAR);

				
			for (addr = 0; true; addr += 256) {
				uint8_t buffer[256];
				int rc = fread(buffer, 1, 256, f);

				if (rc <= 0) break;
					if (verbose)
					fprintf(stderr, "prog 0x%06X +0x%03X..\n", addr, rc);
					else
					fprintf(stderr, "\rprog 0x%06X +0x%03X..", addr, rc);
				for (ccc=0;ccc<rc;ccc++){
					if ((buffer[ccc] != 0xFF) || (ff_mode))
						{
						int x;
						
				
						while(1){
							
						startframe(PROG);
						addbyte(addr>>16);
						addbyte(addr>>8);
						for (x=0;x<rc;x++)
							addbyte(buffer[x]);
							
							sendframe();
							
							//if (verbose)
					       fprintf(stderr, ".");
						
				
						if (waitframe(READY)) break;
						
						}
						break;
					}	
					}
			
			}
			fprintf(stderr, "\n");
 

			if (f != stdin)
				fclose(f);
		}
        if (!noverify && !bulk_erase_only)
        {
		// ---------------------------------------------------------
		// Read/Verify
		// ---------------------------------------------------------

		if (read_mode)
		{
			FILE *f = (strcmp(filename, "-") == 0) ? stdout :
				fopen(filename, "wb");
			if (f == NULL) {
				fprintf(stderr, "Error: Can't open '%s' for writing: %s\n", filename, strerror(errno));
				error();
			}

			fprintf(stderr, "\nreading..\n");
		
			
 
	 flash_read_id();
     flash_read_all();
				printf("\nWriting data to file %s\n",filename);
				fwrite(membuf, 0x200000, 1, f);
 
			if (f != stdout)
				fclose(f);
		}
		else
		{
			FILE *f = (strcmp(filename, "-") == 0) ? stdin :
				fopen(filename, "rb");
			if (f == NULL) {
				fprintf(stderr, "Error: Can't open '%s' for reading: %s\n", filename, strerror(errno));
				error();
			}

			fprintf(stderr, "\nreading..\n");
 
				flash_read_id();
			    flash_read_all();
				int rc = fread(buffer_file, 1, 0x200000, f);
				
				if (memcmp(buffer_file, membuf, rc)) 
				{
					fprintf(stderr, "Found difference between flash and file!\n");
					error();
				}


 				
	
			

			fprintf(stderr, "\nVERIFY OK\n");

			if (f != stdin)
				fclose(f);
		}
	}
	if (bulk_erase_only)
				{
 

					flash_bulk_erase();
 					
					fprintf(stderr, "Flash erased!\n");
				}
		// ---------------------------------------------------------
		// Reset
		// ---------------------------------------------------------

	}


	// ---------------------------------------------------------
	// Exit
	// ---------------------------------------------------------
	
	fprintf(stderr, "Bye.\n");

    CloseHandle(hSerial);
 
	return 0;
}

