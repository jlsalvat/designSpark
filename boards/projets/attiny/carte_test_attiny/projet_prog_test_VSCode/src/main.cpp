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
//                   (D  0)  PB0  2|    |13  AREF (D 10)  TX
//                  (D  1)  PB1  3|    |12  PA1  (D  9)  LED1
//                          PB3  4|    |11  PA2  (D  8)  RX
//  PWM  BP INT0   (D  2)  PB2  5|    |10  PA3  (D  7) LED2
//  PWM  POT       (D  3)  PA7  6|    |9   PA4  (D  6) SCK
//  PWM  MOSI      (D  4)  PA6  7|    |8   PA5  (D  5) MISO       PWM
//                               +----+
const int LED1 = 9;
const int LED2 = 7;
const int BP = 2;
const int TX = 10;
const int RX = 8;
const int POT = 3;

int valeur_potentiometre;

SoftwareSerial mySerial(RX, TX); // RX, TX

rgb_lcd lcd;

//pb par défaut on utilise PA0 pour AREF pour l'ADC de l'attiny.
// donc analogRead() ne fonctionne pas car AREF=0, ca renvoie 0
//changer la carte et mettre PA0=Vcc

void analog_voie(int n){
  //0x07 (0x27) REFS1 REFS0 MUX5 MUX4 MUX3 MUX2 MUX1 MUX0 ADMUX
  //REFS1 REFS0 Voltage Reference Selection
  //0     0     VCC used as analog reference, disconnected from PA0 (AREF).
   ADMUX=n&0x7;// on choisie PA0,PA1,PA2,... et Vcc
}
int analog_conversion(){
    sbi(ADCSRA, ADSC); //Start conversion
  while(ADCSRA & (1<<ADSC)); //Wait for conversion to complete.
  uint8_t low = ADCL;
  uint8_t high = ADCH;
  return (high << 8) | low;
}

void setup()
{
  // Open serial communications and wait for port to open:
  mySerial.begin(4800);
  /*  while (!Serial) {
      ; // wait for serial port to connect. Needed for native USB port only
    }*/

  mySerial.println("Hello, world?");
  // put your setup code here, to run once:
  pinMode(LED1, OUTPUT);
  pinMode(LED2, OUTPUT);
  pinMode(BP, INPUT_PULLUP);
  analog_voie(7);//on choisit PA7
    lcd.begin(16, 2);
    // Print a message to the LCD.
    lcd.print("hello, world!");
    delay(1000);
}


void loop()
{
    // scroll 13 positions (string length) to the left

  // put your main code here, to run repeatedly:
 // valeur_potentiometre= analogRead(POT);//marche pas
  valeur_potentiometre=analog_conversion();
  mySerial.println(valeur_potentiometre);
  float tension=valeur_potentiometre*5.0/1024;
  lcd.clear();
  lcd.blinkLED();
  lcd.print("pot=");
  lcd.print(tension);
  lcd.print(" V");
  digitalWrite(LED1, !digitalRead(BP));
  digitalWrite(LED2, HIGH);
  delay(200);
  digitalWrite(LED1, !digitalRead(BP));
  digitalWrite(LED2, LOW);
  delay(200);
}