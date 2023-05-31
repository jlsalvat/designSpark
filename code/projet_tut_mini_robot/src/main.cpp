#include <Arduino.h>
#include "SoftwareSerial.h"
#include "rgb_lcd.h"

#ifndef cbi
#define cbi(sfr, bit) (_SFR_BYTE(sfr) &= ~_BV(bit))
#endif
#ifndef sbi
#define sbi(sfr, bit) (_SFR_BYTE(sfr) |= _BV(bit))
#endif
// ATMEL ATTINY84 / ARDUINO
//
//                                 +-\/-+
//                            VCC  1|    |14  GND
// BP                (D  0)  PB0  2|    |13  AREF (D 10)
// LED_DEBUG         (D  1)  PB1  3|    |12  PA1  (D  9) LDR2
//                          PB3  4|    |11  PA2  (D  8) CMD_LED
//  PWM_MOT1        (D  2)  PB2  5|    |10  PA3  (D  7) LDR1
//  PWM_MOT2        (D  3)  PA7  6|    |9   PA4  (D  6) SCL
//  SDA             (D  4)  PA6  7|    |8   PA5  (D  5) MISO
//                               +----+

const int BP = 0;
const int LED_DEBUG = 1;
const int PWM_MOT1 = 2;
const int PWM_MOT2 = 3;
const int LDR1 = 7;
const int CMD_LED = 8;
const int LDR2 = 9;

int valeur_LDR1, valeur_LDR2;

//

rgb_lcd lcd;

void setup()
{
  // put your setup code here, to run once:
  pinMode(LED_DEBUG, OUTPUT);
  pinMode(CMD_LED, OUTPUT);
  pinMode(BP, INPUT_PULLUP);
  lcd.begin(16, 2);
  lcd.clear();
  // Print a message to the LCD.
  lcd.print("hello, world!");
  delay(100);
}

void loop()
{
  valeur_LDR1 = analogRead(LDR1) * 5.0 / 1024;
  int bp=digitalRead(BP);
  valeur_LDR2 = analogRead(LDR1) * 5.0 / 1024;
  ;
  lcd.clear();
  lcd.blinkLED();
  lcd.print("LDR1=");
  lcd.print(valeur_LDR1);
  lcd.print(" V");
  lcd.print(" BP=");
  lcd.print(bp);
  lcd.setCursor(0, 1);
  lcd.print("LDR2=");
  lcd.print(valeur_LDR2);
  lcd.print(" V");
  digitalWrite(LED_DEBUG, !digitalRead(BP));
  delay(200);
  digitalWrite(LED_DEBUG, !digitalRead(BP));
  delay(200);
}