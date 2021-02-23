This firmware has to be uploaded to OLIMEXINO-32u4 in order to use it as an iCE40 programmer.


### Using Arduino IDE ###

This firmware can be uploaded via Arduino IDE. Just go to iceprog folder and load iceprog.ino.

We used SPIFlash 2.2.0 library for Winbond Flash Memory by Prajwal Bhattaram - Marzogh (the 
project is now called "SPIMemory". The files we used are already inside the project, no need to
install it separately. But our advice is to the check the full project. It is availalbe here:

https://github.com/Marzogh/SPIMemory/tree/v2.2.0


### Using PlatformIO ###

Install PlatformIO, use this guide for details http://docs.platformio.org/en/stable/installation.html

Build & Upload:

    platformio run
    platformio run --target upload

Alternatively you can use SPI programmer to burn firmware into OLIMEXINO-32u4, e.g.:

    avrdude -p atmega32u4 -P /dev/ttyUSB0 -c buspirate -b115200 -D -Uflash:w:[.pioenvs/leonardo/firmware.hex]:i
