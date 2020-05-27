/*
 *  iceprogduino -- simple programming tool for FTDI-based Lattice iCE programmers
 *  and Olinuxino based programmers for iCE40HX1K-EVB
 *
 *  Copyright (C) 2015  Clifford Wolf <clifford@clifford.at>
 *  Olimexino Nano edition by Chris B. <chris@protonic.co.uk> @ Olimex Ltd. <c> 2016
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

//#define Olinuxino
//#define FTDI
#define Nano

#define READ_ID 	0x9F
#define PWR_UP 		0xAB
#define PWR_DOWN 	0xB9
#define WR_EN		0x06
#define BULK_ERASE	0xC7
#define SEC_ERASE	0xd8
#define PROG		0x02
#define READ		0x03
#define READY  		0x44
#define READ_ALL    0x83
#define EMPTY    0x45


#define _GNU_SOURCE
#include <stdio.h>
#include <stdint.h>
#include <stdbool.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <errno.h>
#include <fcntl.h>
#include <sys/types.h>
#include <sys/stat.h>


#pragma GCC diagnostic ignored "-Wdeprecated-declarations"


 


void serial_read(int x);

#define FEND	0xc0
#define FESC	0xdb
#define TFEND 	0xdc
#define TFESC	0xdd
bool newframe;
bool timeout;
bool escaped;
#include <termios.h>
#define SerialPort  "/dev/ttyACM0"
int fd;
uint8_t rxframe[512], txframe[512], fcs, tfcs;
uint16_t txp,rxp;
uint8_t membuf[0x200000];
uint8_t pages[0x2000];

 




bool verbose = false;




 

int set_interface_attribs (int fd, int speed, int parity)
{
        struct termios tty;
        memset (&tty, 0, sizeof tty);
        if (tcgetattr (fd, &tty) != 0)
        {
                fprintf(stderr,"error %d from tcgetattr", errno);
                return -1;
        }

        cfsetospeed (&tty, speed);
        cfsetispeed (&tty, speed);

        tty.c_cflag = (tty.c_cflag & ~CSIZE) | CS8;     // 8-bit chars
        tty.c_iflag &= ~IGNBRK;         // disable break processing
        tty.c_lflag = 0;                // no signaling chars, no echo,
                                        // no canonical processing
        tty.c_oflag = 0;                // no remapping, no delays
        tty.c_cc[VMIN]  = 0;            // read doesn't block
        tty.c_cc[VTIME] = 0;            // no read timeout

        tty.c_iflag &= ~(IXON | IXOFF | IXANY); // shut off xon/xoff ctrl

        tty.c_cflag |= (CLOCAL | CREAD);// ignore modem controls,
                                        // enable reading
        tty.c_cflag &= ~(PARENB | PARODD);      // shut off parity
        tty.c_cflag |= parity;
        tty.c_cflag |= parity;
        tty.c_cflag &= ~CSTOPB;
        tty.c_cflag &= ~CRTSCTS;

        if (tcsetattr (fd, TCSANOW, &tty) != 0)
        {
                fprintf(stderr,"error %d from tcsetattr", errno);
                return -1;
        }
        return 0;
}

void set_blocking (int fd, int should_block)
{
        struct termios tty;
        memset (&tty, 0, sizeof tty);
        if (tcgetattr (fd, &tty) != 0)
        {
                fprintf(stderr,"error %d from tggetattr", errno);
                return;
        }

        tty.c_cc[VMIN]  = should_block ? 1 : 0;
        tty.c_cc[VTIME] = 0;            

        if (tcsetattr (fd, TCSANOW, &tty) != 0)
               fprintf(stderr,"error %d setting term attributes", errno);
}

void startframe(uint8_t command){
  txframe[0]=FEND;
  txframe[1]=command;
  tfcs = command;
  txp = 2;
}

void addbyte(uint8_t newbyte){
 tfcs+=newbyte;
 
 switch(newbyte){
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
if (fd>=0)
 write(fd,txframe,txp);
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

for (uint32_t to=0;to<5000;to++)
{
serial_read(0);
usleep(50);	

if (newframe){
//	int rxpp = rxp;
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
	              
						for (int x=3; x < 259;x++)
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

 
	startframe(BULK_ERASE);
	sendframe();
    waitframe(BULK_ERASE);
    fprintf(stderr, "\rbulk erased\n");
 	
}

void flash_64kB_sector_erase(int addr)
{
	fprintf(stderr, "erase 64kB sector at 0x%06X..", addr);
 
	startframe(SEC_ERASE);
	addbyte(addr>>16);
	addbyte(addr>>8);
	sendframe();
    waitframe(READY);
    fprintf(stderr, "erased\n");
 
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
				while (1){
					notready = false;
					int s = 0;
				for(int x = 0; x < 0x2000;x++)
				{
	
					if (pages[x]>0){
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
	fprintf(stderr, "iceprog -- simple programming tool for Olinuxino Nano-based Lattice iCE programmers\n");
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
	fprintf(stderr, "        port to connect Arduino (default /dev/ttyACM0)\n");	
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
	fprintf(stderr, "    -o <offset in bytes>  start address for write [default: 0]\n");
	fprintf(stderr, "                          (append 'k' to the argument for size in kilobytes,\n");
	fprintf(stderr, "                          or 'M' for size in megabytes)\n");
	fprintf(stderr, "                          this feature works not with all options.\n");
	fprintf(stderr, "                          tested with -b, -v\n");
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
   		int n;
 
   if (fd < 0)
		{
			printf(".");
			break;
		}
	else
		{
        n=read(fd, buf, 1);
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
}
 
int main(int argc, char **argv)
{
	int addr;
	int max_read_size = 0x200000;
	bool read_mode = false;
	bool check_mode = false;
	bool bulk_erase = false;
	bool dont_erase = false;
	bool prog_sram = false;
	bool test_mode = false;
 
	bool noverify = true; // verify performs by arduino board
	bool ff_mode = false;
	bool bulk_erase_only = false;
	const char *filename = NULL;
	const char *devstr = NULL;
  int rw_offset = 0;

	int opt;
  char *endptr;

 		
char *portname = SerialPort;
	while ((opt = getopt(argc, argv, "I:o:rcbntvwfeh")) != -1)
 

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
    case 'o': /* set address offset */
      rw_offset = strtol(optarg, &endptr, 0);
      if (*endptr == '\0')
        /* ok */;
      else if (!strcmp(endptr, "k"))
        rw_offset *= 1024;
      else if (!strcmp(endptr, "M"))
        rw_offset *= 1024 * 1024;
      else {
        fprintf(stderr, "'%s' is not a valid offset\n", optarg);
        return EXIT_FAILURE;
      }
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
	
	//bulk_erase = true;  // comment this line if you do not want to bulk erase by default

 

		   
/* open serial port */
 fd = open(portname, O_RDWR | O_NOCTTY);
// fd = open(portname, O_RDWR | O_ASYNC | O_NDELAY);
if (fd < 0)
{
        fprintf(stderr,"error %d opening %s: %s\n", errno, portname, strerror (errno));
        return -1;
}

set_interface_attribs (fd, B57600, 0);  // set speed to 57600 bps, 8n1 (no parity)
set_blocking (fd, 0);                // set no blocking



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
				fopen(filename, "r");
			if (f == NULL) {
				fprintf(stderr, "Error: Can't open '%s' for reading: %s\n", filename, strerror(errno));
				error();
							}

			if (!dont_erase)
			{
				if (bulk_erase)
				{
				
					flash_bulk_erase();
				    sleep(1);
				    flash_read_id();
				    usleep(10000);
				}
				else
				{
					struct stat st_buf;
					if (stat(filename, &st_buf)) {
						fprintf(stderr, "Error: Can't stat '%s': %s\n", filename, strerror(errno));
						error();
					}

          fprintf(stderr, "file size: %d\n", (int)st_buf.st_size);
          /* 64 k */
          int begin_addr = rw_offset & ~0xffff;
          int end_addr = (rw_offset + st_buf.st_size + 0xffff) & ~0xffff;
          for (addr = begin_addr; addr < end_addr; addr += 0x10000) {
					
						flash_64kB_sector_erase(addr);
						
					}
				}
			}

			fprintf(stderr, "\nprogramming..\n");
int ccc;	

				flash_read_id();
				
				
      /* page is 256 */
      for (int rc, addr = 0; true; addr += rc) {
        uint8_t buffer[256];
        int page_size = 256 - (rw_offset + addr) % 256;
        rc = fread(buffer, 1, page_size, f);

        int offset_addr = addr + rw_offset;
				if (rc <= 0) break;
					if (verbose)
					fprintf(stderr, "prog 0x%06X +0x%03X..\n", offset_addr, rc);
					else
					fprintf(stderr, "\rprog 0x%06X +0x%03X..", offset_addr, rc);
				for (ccc=0;ccc<rc;ccc++){
					if ((buffer[ccc] != 0xFF) || (ff_mode))
						{
						int x;
						
				
						while(1){
							
						startframe(PROG);
						addbyte(offset_addr>>16);
						addbyte(offset_addr>>8);
						for (x=0;x<rc;x++)
							addbyte(buffer[x]);
							
							sendframe();
							
							//if (verbose)
					       fprintf(stderr, ".");
						
						//usleep(1000);						
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
				fopen(filename, "w");
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
				fopen(filename, "r");
			if (f == NULL) {
				fprintf(stderr, "Error: Can't open '%s' for reading: %s\n", filename, strerror(errno));
				error();
			}

			fprintf(stderr, "\nreading..\n");
 
				flash_read_id();
			    flash_read_all();
				uint8_t buffer_file[0x200000];
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

 

				close(fd);
 
	return 0;
}

