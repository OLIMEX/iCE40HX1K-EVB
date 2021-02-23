/*
 *  iceprog -- firmware scetch for Arduino based Lattice iCE programmers
 *
 *  Chris B. <chris@protonic.co.uk> @ Olimex Ltd. <c> 2017
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
 *  http://www.ftdichip.com/Support/Documents/AppNotes/AN_108_Command_Processor_for_MPSSE_and_MCU_Host_Bus_Emulation_Modes.pdf
 *  https://www.olimex.com/Products/FPGA/iCE40/iCE40HX1K-EVB/
 *  https://github.com/Marzogh/SPIFlash  
 */

#include <SPI.h>

// The demo uses SPIFlash v2.2.0, its files are included in the project folders the author is Prajwal Bhattaram - Marzogh

#include "SPIFlash.h"

#define LED 17
#define CDONE 3
#define RESET 2
#define UEXT_POWER 8
#define CS  13

//commands list
#define READ_ID   0x9F
#define PWR_UP    0xAB
#define PWR_DOWN  0xB9
#define WR_EN   0x06
#define BULK_ERASE  0xC7
#define SEC_ERASE 0xd8
#define PROG    0x02
#define READ    0x03
#define READ_ALL    0x83
#define CMD_ERROR 0xee
#define READY   0x44
#define EMPTY    0x45

#define FEND  0xc0
#define FESC  0xdb
#define TFEND   0xdc
#define TFESC  0xdd

#define cselect digitalWrite(CS,LOW)
#define deselect digitalWrite(CS,HIGH)

//Toggle iceprogduino with serial bridge by pressing the HWB button
#define HWB (PINE & B00000100)==0     // Check if the button has been pressed
#define HWB_INPUT DDRE &= B11111011   // Initialize the port
#define LED_G 7                       // The GREEN  LED is on Pin 7
#define LED_Y 9                       // The YELLOW  LED is on Pin 9
boolean isProg;

uint8_t rxframe[512], txframe[512], fcs,rfcs;
uint8_t membuf[256];
uint8_t data_buffer[256];
uint16_t txp;
uint32_t maxPage;
bool escaped;
SPIFlash flash(CS);

void secerase(uint32_t sector);
void decodeFrame(void);
void writepage(int pagenr);
bool readSerialFrame(void);
void flash_bulk_erase(void);
void SendID(void);
void sendframe();
void startframe(uint8_t command);
void addbyte(uint8_t newbyte);
void readAllPages(void);
void readpage(uint16_t adr);

// FRAME:   <FEND><CMD>{data if any}<FCS(sume of all bytes = 0xFF)><FEND>
// if FEND, FESC in data - <FEND>=<FESC><TFEND>;  <FESC>=<FESC><TFESC>

void setup() {
  // put your setup code here, to run once:
    // Power Up UEXT
   pinMode(CDONE,INPUT);
   pinMode(RESET,OUTPUT);
   pinMode(LED,OUTPUT);
   digitalWrite(LED,0);
   pinMode(CS,OUTPUT);
   digitalWrite(CS,HIGH);
   pinMode(UEXT_POWER, OUTPUT);
   digitalWrite(UEXT_POWER, HIGH);
   delay(1000);
   digitalWrite(UEXT_POWER, LOW);
   delay(500);
   digitalWrite(RESET, HIGH);
   Serial.begin(230400);
   while (!Serial);

   isProg=true;
   HWB_INPUT;                   // Initialize HWB
   Serial1.begin(115200);
   pinMode(LED_Y,OUTPUT);   
   digitalWrite(LED_Y,isProg);  //Yellow LED is Prog
   pinMode(LED_G,OUTPUT);
   digitalWrite(LED_G,!isProg); //Green LED is Bridge

}

void loop(){
  if (isProg) loopProg();
  else loopBridge();
  if (HWB) {
    isProg = !isProg;
    digitalWrite(LED_Y,isProg);
    digitalWrite(LED_G,!isProg);
    delay(1000);
  }
}

void loopBridge(){
  // read from port 1, send to port 0:
  if (Serial1.available()) {
    int inByte = Serial1.read();
    Serial.write(inByte);
  }

  // read from port 0, send to port 1:
  if (Serial.available()) {
    int inByte = Serial.read();
    Serial1.write(inByte);
  }
}

void loopProg() {
    
  if (readSerialFrame())
  {
    decodeFrame();
    if (rfcs==0xff)
    {
  digitalWrite(RESET, LOW);

  switch (rxframe[0]){
    
    case FEND:
    break;
    
    case READ_ID:
    SendID();
    break;
    
    case BULK_ERASE:
    flash_bulk_erase();
    break;

    case SEC_ERASE:
    flash.powerUp();
    secerase((rxframe[1]<<8) | rxframe[2]);
    flash.powerDown();

    break;
    
    case READ:
    flash.powerUp();
    readpage((rxframe[1]<<8) | rxframe[2]);
    flash.powerDown();
    break;
    
    case READ_ALL:
    readAllPages();
    break;   
    
    case PROG:
    writepage((rxframe[1]<<8) | rxframe[2]);
    break;
    
    default:
    break;


  }//switch
   digitalWrite(RESET, HIGH);  

    } 
   
  }
}


void secerase(uint32_t  sector){
  flash.eraseBlock64K(sector<<8);
  startframe(READY);
  sendframe();
  
}
void decodeFrame(void){
  int x,y;
  escaped = false;
  y = 1;
  rfcs = rxframe[1];
  rxframe[0]=rxframe[1];
     for (x=2;x<512;x++)
   {
     switch (rxframe[x]){

      case FEND:
      x = 513;
      break;

     case FESC:
     escaped = true;
     break;

     case TFEND:
     if (escaped)
     {
     rxframe[y++] = FEND;
     rfcs+=FEND;
     escaped = false;
     }
     else 
     {
      rxframe[y++]=TFEND;
      rfcs+=TFEND;
     }
    
     break;

     case TFESC:
     if (escaped)
     {
     rxframe[y++]=FESC;
     rfcs+=FESC;
     escaped = false;
     }
     else 
     {
      rxframe[y++]=TFESC;
      rfcs+=TFESC;
     }

     break;    

     default:
     escaped = false;
     rxframe[y++] = rxframe[x];
     rfcs+=rxframe[x];
      break;
     }
    
   }
 
}

void writepage(int pagenr){
int x;
flash.powerUp();

for (x=0; x<256;x++)
              membuf[x]=rxframe[x+3];

flash.writePage(pagenr,membuf);
flash.readPage(pagenr,data_buffer);
flash.powerDown();

 for (int a = 0; a < 256; a++)
      if (data_buffer[a] != membuf[a])
                  return;

  startframe(READY);
  sendframe();

  
}



//Reads a frame from Serial
bool readSerialFrame(void) 
{
  Serial.setTimeout(50);
  
  if (!Serial)
  Serial.begin(230400);
  // Serial.begin(1000000);
  while (Serial.available()) {
    Serial.readBytesUntil(FEND,rxframe,512);
    //if (rxframe[0]!=FEND)
                return true;
  }
  return false;
}
void flash_bulk_erase(void)
{
 flash.powerUp();
 flash.eraseChip();
 flash.powerDown();
  startframe(READY);
  addbyte(BULK_ERASE);
  sendframe();
}

void SendID(void)
{
  
 flash.powerUp();
      uint32_t JEDEC = flash.getJEDECID();
 flash.powerDown();
      startframe(READ_ID);
      addbyte(JEDEC >> 16);
      addbyte(JEDEC >> 8);
      addbyte(JEDEC >> 0);
      sendframe();


} 


void sendframe(){
  fcs = 0xff - fcs;
 addbyte(fcs);
 txframe[txp++] = FEND;
 Serial.write(txframe,txp);
  
}


void startframe(uint8_t command){
  txframe[0]=FEND;
  txframe[1]=command;
  txp = 2;
  fcs = command;
}
void addbyte(uint8_t newbyte)
{
fcs+=newbyte;
if (newbyte == FEND)
{
  txframe[txp++] = FESC;
  txframe[txp++] = TFEND;
} else
  if (newbyte == FESC)
  {
  txframe[txp++] = FESC;
  txframe[txp++] = TFESC;
  } else  
   txframe[txp++] = newbyte;

}


void readAllPages(void){
flash.powerUp();
maxPage=0x2000;
delay(10);
int p;
for (p=0;p<maxPage;p++)
              readpage(p);
  startframe(READY);
  sendframe();
//
   flash.powerDown();
}


void  readpage(uint16_t adr){

bool sendempty = true;  
//delay(5);

 flash.readPage(adr,data_buffer);

 for (int a = 0; a < 256; a++){
  if (data_buffer[a] != 0xff){
      startframe(READ);
      addbyte(adr >> 8);
      addbyte(adr >> 0);
      for (int b = 0;b<256;b++)
                addbyte(data_buffer[b]);
      sendframe();
      sendempty=false;
    break;
    
  }
  
 }
 if (sendempty){
  startframe(EMPTY);
  addbyte(adr >> 8);
  addbyte(adr >> 0);  
  sendframe();
 }
}
