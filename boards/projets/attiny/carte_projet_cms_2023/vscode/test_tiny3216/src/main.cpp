#include <Arduino.h>
/***********************************************************************
 * 
 * Interfacing Arduino with DS1631 digital temperature sensor.
 * Temperature values are printed on 16x2 LCD screen.
 * This is a free software with NO WARRANTY.
 * https://simple-circuit.com/
 *
 ***********************************************************************/
#include <Wire.h>            // include Arduino Wire library (required for I2C devices)
#include <LiquidCrystal.h>   // include Arduino LCD library
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include <Adafruit_MCP9808.h>

Adafruit_SSD1306 display(-1);

// Create the MCP9808 temperature sensor object
Adafruit_MCP9808 tempsensor = Adafruit_MCP9808();
 
// LCD module connections (RS, E, D4, D5, D6, D7)
LiquidCrystal lcd(2, 3, 4, 5, 6, 7);
 
// define DS1631 I2C slave address (1001+A2+A1+A0)
// A2, A1 & A0 connected to GND --> 1001000 = 0x48
#define DS1631_ADDRESS  0x48

int16_t ds1631_temperature() {
  Wire.beginTransmission(DS1631_ADDRESS); // connect to DS1631 (send DS1631 address)
  Wire.write(0xAA);                       // read temperature command
  Wire.endTransmission(false);            // send repeated start condition
  Wire.requestFrom(DS1631_ADDRESS, 2);    // request 2 bytes from DS1631 and release I2C bus at end of reading
  uint8_t t_msb = Wire.read();            // read temperature MSB register
  uint8_t t_lsb = Wire.read();            // read temperature LSB register
 
  // calculate full temperature (raw value)
  int16_t raw_t = (int8_t)t_msb << 8 | t_lsb;
  raw_t >>= 4;
  return raw_t;
}
 
void setup(void) {
  Serial.begin(9600);
  while (!Serial); //waits for serial terminal to be open, necessary in newer arduino boards.
  Serial.println("MCP9808 demo");
  
  // Make sure the sensor is found, you can also pass in a different i2c
  // address with tempsensor.begin(0x19) for example, also can be left in blank for default address use
  // Also there is a table with all addres possible for this sensor, you can connect multiple sensors
  // to the same i2c bus, just configure each sensor with a different address and define multiple objects for that
  //  A2 A1 A0 address
  //  0  0  0   0x18  this is the default address
  //  0  0  1   0x19
  //  0  1  0   0x1A
  //  0  1  1   0x1B
  //  1  0  0   0x1C
  //  1  0  1   0x1D
  //  1  1  0   0x1E
  //  1  1  1   0x1F
  if (!tempsensor.begin(0x18)) {
    Serial.println("Couldn't find MCP9808! Check your connections and verify the address is correct.");
    while (1);
  }
    
   Serial.println("Found MCP9808!");

  tempsensor.setResolution(3); // sets the resolution mode of reading, the modes are defined in the table bellow:
  // Mode Resolution SampleTime
  //  0    0.5°C       30 ms
  //  1    0.25°C      65 ms
  //  2    0.125°C     130 ms
  //  3    0.0625°C    250 ms
  lcd.begin(16, 2);     // set up the LCD's number of columns and rows
  lcd.setCursor(0, 0);  // move cursor to column 0, row 0 [position (0, 0)]
  lcd.print("Temp =");
  
  Wire.begin();           // join i2c bus
  // initialize DS1631 sensor
  Wire.beginTransmission(DS1631_ADDRESS); // connect to DS1631 (send DS1631 address)
  Wire.write(0xAC);                       // send configuration register address (Access Config)
  Wire.write(0x0C);                       // perform continuous conversion with 12-bit resolution
  Wire.beginTransmission(DS1631_ADDRESS); // send repeated start condition
  Wire.write(0x51);                       // send start temperature conversion command
  Wire.endTransmission();                 // stop transmission and release the I2C bus

  
// initialize with the I2C addr 0x3C
display.begin(SSD1306_SWITCHCAPVCC, 0x3C);

// Clear the buffer.
display.clearDisplay();

// Display Text
display.setTextSize(2);
display.setTextColor(WHITE);
display.setCursor(0,15);
display.println("Robu.in!");
display.display();
delay(1000);
display.clearDisplay();

// Display Inverted Text
display.setTextColor(BLACK, WHITE); // 'inverted' text
display.setCursor(0,15);
display.println("Robu.in!");
display.display();
delay(1000);
display.clearDisplay();

// Changing Font Size
display.setTextColor(WHITE);
display.setCursor(0,15);
display.setTextSize(2);
display.println("Hello!");
display.display();
delay(2000);
display.clearDisplay();

// Display Numbers
display.setTextSize(2);
display.setCursor(0,15);
display.println("SKU:62312");
display.display();
delay(2000);
display.clearDisplay();

// Display ASCII Characters
display.setCursor(0,0);
display.setTextSize(3);
display.write(3);
display.write(3);
display.write(3);
display.write(3);
display.write(3);
display.write(3);
display.write(3);
display.display();
delay(2000);
display.clearDisplay();

// Scroll full screen
display.setCursor(0,0);
display.setTextSize(1);
display.println("Made with");
display.println("Love");
display.println("by Apurva");
display.display();
display.startscrollright(0x00, 0x07);
delay(2000);
display.stopscroll();
delay(1000);
display.startscrollleft(0x00, 0x07);
delay(2000);
display.stopscroll();
delay(1000); 
display.startscrolldiagright(0x00, 0x07);
delay(2000);
display.startscrolldiagleft(0x00, 0x07);
delay(2000);
display.stopscroll();
display.clearDisplay();

// Scroll part of the screen
display.setCursor(0,0);
display.setTextSize(1);
display.println("Robu.in");
display.println("Follow on IG");
display.println("Subscribe on Youtube");
display.println("Like On Facebook");
display.display();
display.startscrollright(0x00, 0x00);
}
 
// variables
char c_buffer[11], f_buffer[11];
 
// main loop
void loop() {
    Serial.println("wake up MCP9808.... "); // wake up MCP9808 - power consumption ~200 mikro Ampere
  tempsensor.wake();   // wake up, ready to read!

  // Read and print out the temperature, also shows the resolution mode used for reading.
  Serial.print("Resolution in mode: ");
  Serial.println (tempsensor.getResolution());
  float c = tempsensor.readTempC();
  float f = tempsensor.readTempF();
  Serial.print("Temp: "); 
  Serial.print(c, 4); Serial.print("*C\t and "); 
  Serial.print(f, 4); Serial.println("*F.");
  
  delay(2000);
  Serial.println("Shutdown MCP9808.... ");
  tempsensor.shutdown_wake(1); // shutdown MSP9808 - power consumption ~0.1 mikro Ampere, stops temperature sampling
  Serial.println("");
  delay(200);
 
  delay(1000);    // wait a second
  // get temperature in °C ( actual temperature in °C = c_temp/16)
  int16_t c_temp = ds1631_temperature();
  // calculate temperature in °F (actual temperature in °F = f_temp/160)
  // °F = °C x 9/5 + 32
  int32_t f_temp = (int32_t)c_temp * 90/5 + 5120;  // 5120 = 32 x 16 x 10
 
  if(c_temp < 0) {   // if temperature < 0 °C
    c_temp = abs(c_temp);  // absolute value
    sprintf(c_buffer, "-%02u.%04u%cC", c_temp/16, (c_temp & 0x0F) * 625, 223);
  }
  else {
    if (c_temp/16 >= 100)    // if temperature >= 100.0 °C
      sprintf(c_buffer, "%03u.%04u%cC", c_temp/16, (c_temp & 0x0F) * 625, 223);
    else
      sprintf(c_buffer, " %02u.%04u%cC", c_temp/16, (c_temp & 0x0F) * 625, 223);
  }
 
  if(f_temp < 0) {   // if temperature < 0 °F
    f_temp = abs(f_temp);  // absolute value
    sprintf(f_buffer, "-%02u.%04u%cF", (uint16_t)f_temp/160, (uint16_t)(f_temp*1000/16 % 10000), 223);
  }
  else {
    if (f_temp/160 >= 100)    // if temperature >= 100.0 °F
      sprintf(f_buffer, "%03u.%04u%cF", (uint16_t)f_temp/160, (uint16_t)(f_temp*1000/16 % 10000), 223);
    else
      sprintf(f_buffer, " %02u.%04u%cF", (uint16_t)f_temp/160, (uint16_t)(f_temp*1000/16 % 10000), 223);
  }
 
  lcd.setCursor(6, 0);  // move cursor to position (6, 0)
  lcd.print(c_buffer);  // print c_buffer (temperature in °C)
  lcd.setCursor(6, 1);  // move cursor to position (6, 1)
  lcd.print(f_buffer);  // print f_buffer (temperature in °F)
 
}
 

 
// end of code.