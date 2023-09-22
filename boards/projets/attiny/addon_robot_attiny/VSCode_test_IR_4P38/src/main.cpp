
#include <Arduino.h>
#include "rgb_lcd.h"
#include "SoftwareSerial.h"

// choix du décodage
#define DECODE_RC5
#include <IRremote.hpp>

// on place ici les valeurs lues lors de l'appui sur la télécommande
#define IR_BUTTON_1 1 // valeur à modifier lue sur lcd
#define IR_BUTTON_2 2 // valeur à modifier lue sur lcd
#define IR_BUTTON_3 3 // valeur à modifier lue sur lcd

// SimpleReceiver.cpp

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
//  BP               (D  0)  PB0  2|    |13  AREF (D 10)  TX
//  LED              (D  1)  PB1  3|    |12  PA1  (D  9)  LED1
//                          PB3  4|    |11  PA2  (D  8)  RX
//  PWM  BP INT0   (D  2)  PB2  5|    |10  PA3  (D  7) IN_4P38
//      Cmd_jack   (D  3)  PA7  6|    |9   PA4  (D  6) SCK
//  PWM  MOSI      (D  4)  PA6  7|    |8   PA5  (D  5) MISO  TX
//                               +----+
const int LED = 1;
const int BP = 0;
const int IN_4P38 = 7;
const int cmd_JACK = 3; 
const int TX= 5; // broche MISO
const int RX = 8;

rgb_lcd lcd;
SoftwareSerial mySerial(RX, TX); // RX, TX

void setup()
{
  IrReceiver.begin(IN_4P38);
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
  pinMode(cmd_JACK, OUTPUT);
  digitalWrite(cmd_JACK, 1);
  pinMode(BP, INPUT_PULLUP);
  lcd.begin(16, 2);
  lcd.setPWM(GREEN, 100);
  // Print a message to the LCD.
  lcd.print("hello, world!");
  mySerial.begin(9600);
  mySerial.print("hello world!");

  delay(1000);
}

void loop()
{
  int touche = 0;
  // test pour debug
  int bp = digitalRead(BP);
  digitalWrite(LED, !bp);
  /*
   * Check if received data is available and if yes, try to decode it.
   * Decoded result is in the IrReceiver.decodedIRData structure.
   *
   * E.g. command is in IrReceiver.decodedIRData.command
   * address is in command is in IrReceiver.decodedIRData.address
   * and up to 32 bit raw data in IrReceiver.decodedIRData.decodedRawData
   */
  if (IrReceiver.decode())
  {
    IrReceiver.resume(); // Enable receiving of the next value
    lcd.clear();
    lcd.print("Commande=");
    int command = IrReceiver.decodedIRData.command;
    lcd.print(command);
    mySerial.print("commande=");
    mySerial.println(command);
    lcd.setCursor(0, 1);
    lcd.print("Touche");
    // on peut ajouter d'autres touches si on veut...
    switch (command)
    {
    case IR_BUTTON_1:
      touche = 1;
      break;
    case IR_BUTTON_2:
      touche = 2;
      break;
    case IR_BUTTON_3:
      touche = 3;
      break;
    }
    lcd.print(touche);
    // a chaque code on allume la led pendant 200ms
    digitalWrite(LED, 1); // on allume la led
    digitalWrite(cmd_JACK, 0);// on ouvre le jack (départ sans jack)
    delay(2000);// on allume 2 s, quel que soit le code envoyé
    digitalWrite(LED, LOW);
    digitalWrite(cmd_JACK, 1);
/*    // si on a le bon code on ferme le transistor de commande, c'est à tester
    if (IrReceiver.decodedIRData.command == 0x10)
      digitalWrite(cmd_JACK, 0);
    else
      digitalWrite(cmd_JACK, 1);
*/
  }
#include <stdio.h>
#define TAILLE 7
int gTabSecret[TAILLE]={0,0,0,1,0,1,1};

int BateauPresent(int position){
    return(gTabSecret[position]);
}
int BateauCoule (int position){
    gTabSecret[position]=0;
}
int BateauFinPartie(){
    for(int i=0;i<TAILLE;i++)
        if(gTabSecret[i]==1)
            return 0;
    return 1;
}

#include <stdio.h>
#include <string.h>

int main()
{
    char szSrc[80]="Bonjour";
    char szDest[80]="Bonjour a tous";
    printf("longueur de szSrc : %d\n",strlen(szSrc));
    printf("longueur de szDest : %d\n",strlen(szDest));
    if(strcmp(szSrc,szDest)==0)
        printf("chaines identiques\n");
    else
        printf("chaines differentes\n");
    strcpy(szDest, szSrc);
    printf("apres copie de szSrc vers szDest\n");
    printf("longueur de szSrc : %d\n",strlen(szSrc));
    printf("longueur de szDest : %d\n",strlen(szDest));
    if(strcmp(szSrc,szDest)==0)
        printf("chaines identiques\n");
    else
        printf("chaines différentes\n");
    return 0;
}
