// --------------------------------------
// i2c_scanner
//
// Version 1
//    This program (or code that looks like it)
//    can be found in many places.
//    For example on the Arduino.cc forum.
//    The original author is not know.
// Version 2, Juni 2012, Using Arduino 1.0.1
//     Adapted to be as simple as possible by Arduino.cc user Krodal
// Version 3, Feb 26  2013
//    V3 by louarnold
// Version 4, March 3, 2013, Using Arduino 1.0.3
//    by Arduino.cc user Krodal.
//    Changes by louarnold removed.
//    Scanning addresses changed from 0...127 to 1...119,
//    according to the i2c scanner by Nick Gammon
//    https://www.gammon.com.au/forum/?id=10896
// Version 5, March 28, 2013
//    As version 4, but address scans now to 127.
//    A sensor seems to use address 120.
// Version 6, November 27, 2015.
//    Added waiting for the Leonardo serial communication.
//
//
// This sketch tests the standard 7-bit addresses
// Devices with higher bit address might not be seen properly.
//_

#ifdef _SCAN_I2C
#include <Arduino.h>
#include <Wire.h>
#include "SoftwareSerial.h"

const int TX = 10;
const int RX = 8;

SoftwareSerial mySerial(RX, TX); // RX, TX

void setup()
{
    Wire.begin();

    mySerial.begin(9600);
    mySerial.println("\nI2C Scanner");
}

void loop()
{
    byte error, address;
    int nDevices;

    mySerial.println("Scanning...");

    nDevices = 0;
    for (address = 1; address < 127; address++)
    {
        // The i2c_scanner uses the return value of
        // the Write.endTransmisstion to see if
        // a device did acknowledge to the address.
        Wire.beginTransmission(address);
        error = Wire.endTransmission();

        if (error == 0)
        {
            mySerial.print("I2C device found at address 0x");
            if (address < 16)
                mySerial.print("0");
            mySerial.print(address, HEX);
            mySerial.println("  !");

            nDevices++;
        }
        else if (error == 4)
        {
            mySerial.print("Unknown error at address 0x");
            if (address < 16)
                mySerial.print("0");
            mySerial.println(address, HEX);
        }
    }
    if (nDevices == 0)
        mySerial.println("No I2C devices found\n");
    else
        mySerial.println("done\n");

    delay(5000); // wait 5 seconds for next scan
}
#endif