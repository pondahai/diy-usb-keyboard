/*
  Copyright (c) 2014-2015 NicoHood
  See the readme for credit to other people.

  Improved Keyboard example

  Shows how to use the new Keyboard API.

  See HID Project documentation for more information.
  https://github.com/NicoHood/HID/wiki/Keyboard-API#improved-keyboard
*/

#include "HID-Project.h"

#define KEY_A 0x04 // Keyboard a and A
#define KEY_B 0x05 // Keyboard b and B
#define KEY_C 0x06 // Keyboard c and C
#define KEY_D 0x07 // Keyboard d and D
#define KEY_E 0x08 // Keyboard e and E
#define KEY_F 0x09 // Keyboard f and F
#define KEY_G 0x0a // Keyboard g and G
#define KEY_H 0x0b // Keyboard h and H
#define KEY_I 0x0c // Keyboard i and I
#define KEY_J 0x0d // Keyboard j and J
#define KEY_K 0x0e // Keyboard k and K
#define KEY_L 0x0f // Keyboard l and L
#define KEY_M 0x10 // Keyboard m and M
#define KEY_N 0x11 // Keyboard n and N
#define KEY_O 0x12 // Keyboard o and O
#define KEY_P 0x13 // Keyboard p and P
#define KEY_Q 0x14 // Keyboard q and Q
#define KEY_R 0x15 // Keyboard r and R
#define KEY_S 0x16 // Keyboard s and S
#define KEY_T 0x17 // Keyboard t and T
#define KEY_U 0x18 // Keyboard u and U
#define KEY_V 0x19 // Keyboard v and V
#define KEY_W 0x1a // Keyboard w and W
#define KEY_X 0x1b // Keyboard x and X
#define KEY_Y 0x1c // Keyboard y and Y
#define KEY_Z 0x1d // Keyboard z and Z

#define KEY_1 0x1e // Keyboard 1 and !
#define KEY_2 0x1f // Keyboard 2 and @
#define KEY_3 0x20 // Keyboard 3 and #
#define KEY_4 0x21 // Keyboard 4 and $
#define KEY_5 0x22 // Keyboard 5 and %
#define KEY_6 0x23 // Keyboard 6 and ^
#define KEY_7 0x24 // Keyboard 7 and &
#define KEY_8 0x25 // Keyboard 8 and *
#define KEY_9 0x26 // Keyboard 9 and (
#define KEY_0 0x27 // Keyboard 0 and )

#define KEY_ENTER 0x28 // Keyboard Return (ENTER)
#define KEY_ESC 0x29 // Keyboard ESCAPE
#define KEY_BACKSPACE 0x2a // Keyboard DELETE (Backspace)
#define KEY_TAB 0x2b // Keyboard Tab
#define KEY_SPACE 0x2c // Keyboard Spacebar
#define KEY_MINUS 0x2d // Keyboard - and _
#define KEY_EQUAL 0x2e // Keyboard = and +
#define KEY_LEFTBRACE 0x2f // Keyboard [ and {
#define KEY_RIGHTBRACE 0x30 // Keyboard ] and }
#define KEY_BACKSLASH 0x31 // Keyboard \ and |
#define KEY_HASHTILDE 0x32 // Keyboard Non-US # and ~
#define KEY_SEMICOLON 0x33 // Keyboard ; and :
#define KEY_APOSTROPHE 0x34 // Keyboard ' and "
#define KEY_GRAVE 0x35 // Keyboard ` and ~
#define KEY_COMMA 0x36 // Keyboard , and <
#define KEY_DOT 0x37 // Keyboard . and >
#define KEY_SLASH 0x38 // Keyboard / and ?
#define KEY_CAPSLOCK 0x39 // Keyboard Caps Lock

#define KEY_F1 0x3a // Keyboard F1
#define KEY_F2 0x3b // Keyboard F2
#define KEY_F3 0x3c // Keyboard F3
#define KEY_F4 0x3d // Keyboard F4
#define KEY_F5 0x3e // Keyboard F5
#define KEY_F6 0x3f // Keyboard F6
#define KEY_F7 0x40 // Keyboard F7
#define KEY_F8 0x41 // Keyboard F8
#define KEY_F9 0x42 // Keyboard F9
#define KEY_F10 0x43 // Keyboard F10
#define KEY_F11 0x44 // Keyboard F11
#define KEY_F12 0x45 // Keyboard F12

#define KEY_SYSRQ 0x46 // Keyboard Print Screen
#define KEY_SCROLLLOCK 0x47 // Keyboard Scroll Lock
#define KEY_PAUSE 0x48 // Keyboard Pause
#define KEY_INSERT 0x49 // Keyboard Insert
#define KEY_HOME 0x4a // Keyboard Home
#define KEY_PAGEUP 0x4b // Keyboard Page Up
#define KEY_DELETE 0x4c // Keyboard Delete Forward
#define KEY_END 0x4d // Keyboard End
#define KEY_PAGEDOWN 0x4e // Keyboard Page Down
#define KEY_RIGHT 0x4f // Keyboard Right Arrow
#define KEY_LEFT 0x50 // Keyboard Left Arrow
#define KEY_DOWN 0x51 // Keyboard Down Arrow
#define KEY_UP 0x52 // Keyboard Up Arrow

#define KEY_NUMLOCK 0x53 // Keyboard Num Lock and Clear
#define KEY_KPSLASH 0x54 // Keypad /
#define KEY_KPASTERISK 0x55 // Keypad *
#define KEY_KPMINUS 0x56 // Keypad -
#define KEY_KPPLUS 0x57 // Keypad +
#define KEY_KPENTER 0x58 // Keypad ENTER
#define KEY_KP1 0x59 // Keypad 1 and End
#define KEY_KP2 0x5a // Keypad 2 and Down Arrow
#define KEY_KP3 0x5b // Keypad 3 and PageDn
#define KEY_KP4 0x5c // Keypad 4 and Left Arrow
#define KEY_KP5 0x5d // Keypad 5
#define KEY_KP6 0x5e // Keypad 6 and Right Arrow
#define KEY_KP7 0x5f // Keypad 7 and Home
#define KEY_KP8 0x60 // Keypad 8 and Up Arrow
#define KEY_KP9 0x61 // Keypad 9 and Page Up
#define KEY_KP0 0x62 // Keypad 0 and Insert
#define KEY_KPDOT 0x63 // Keypad . and Delete

#define KEY_102ND 0x64 // Keyboard Non-US \ and |
#define KEY_COMPOSE 0x65 // Keyboard Application
#define KEY_POWER 0x66 // Keyboard Power
#define KEY_KPEQUAL 0x67 // Keypad =

#define KEY_F13 0x68 // Keyboard F13
#define KEY_F14 0x69 // Keyboard F14
#define KEY_F15 0x6a // Keyboard F15
#define KEY_F16 0x6b // Keyboard F16
#define KEY_F17 0x6c // Keyboard F17
#define KEY_F18 0x6d // Keyboard F18
#define KEY_F19 0x6e // Keyboard F19
#define KEY_F20 0x6f // Keyboard F20
#define KEY_F21 0x70 // Keyboard F21
#define KEY_F22 0x71 // Keyboard F22
#define KEY_F23 0x72 // Keyboard F23
#define KEY_F24 0x73 // Keyboard F24

#define KEY_OPEN 0x74 // Keyboard Execute
#define KEY_HELP 0x75 // Keyboard Help
#define KEY_PROPS 0x76 // Keyboard Menu
#define KEY_FRONT 0x77 // Keyboard Select
#define KEY_STOP 0x78 // Keyboard Stop
#define KEY_AGAIN 0x79 // Keyboard Again
#define KEY_UNDO 0x7a // Keyboard Undo
#define KEY_CUT 0x7b // Keyboard Cut
#define KEY_COPY 0x7c // Keyboard Copy
#define KEY_PASTE 0x7d // Keyboard Paste
#define KEY_FIND 0x7e // Keyboard Find
#define KEY_MUTE 0x7f // Keyboard Mute
#define KEY_VOLUMEUP 0x80 // Keyboard Volume Up
#define KEY_VOLUMEDOWN 0x81 // Keyboard Volume Down

#define KEY_LEFTCTRL 0xe0 // Keyboard Left Control
#define KEY_LEFTSHIFT 0xe1 // Keyboard Left Shift
#define KEY_LEFTALT 0xe2 // Keyboard Left Alt
#define KEY_LEFTMETA 0xe3 // Keyboard Left GUI
#define KEY_RIGHTCTRL 0xe4 // Keyboard Right Control
#define KEY_RIGHTSHIFT 0xe5 // Keyboard Right Shift
#define KEY_RIGHTALT 0xe6 // Keyboard Right Alt
#define KEY_RIGHTMETA 0xe7 // Keyboard Right GUI

//#define KEY_LEFTBRACE 0x2f // Keyboard [ and {
//#define KEY_RIGHTBRACE 0x30 // Keyboard ] and }
//#define KEY_APOSTROPHE 0x34 // Keyboard ' and "
//#define KEY_GRAVE 0x35 // Keyboard ` and ~
//#define KEY_DOT 0x37 // Keyboard . and >
//#define KEY_CAPSLOCK 0x39 // Keyboard Caps Lock
//#define KEY_SYSRQ 0x46 // Keyboard Print Screen
//#define KEY_SCROLLLOCK 0x47 // Keyboard Scroll Lock
//#define KEY_PAGEUP 0x4b // Keyboard Page Up
//#define KEY_PAGEDOWN 0x4e // Keyboard Page Down
//#define KEY_NUMLOCK 0x53 // Keyboard Num Lock and Clear
//#define KEY_LEFTCTRL 0xe0 // Keyboard Left Control
//#define KEY_LEFTSHIFT 0xe1 // Keyboard Left Shift
//#define KEY_LEFTALT 0xe2 // Keyboard Left Alt
//#define KEY_LEFTMETA 0xe3 // Keyboard Left GUI
//#define KEY_RIGHTSHIFT 0xe5 // Keyboard Right Shift
//#define KEY_RIGHTALT 0xe6 // Keyboard Right Alt

#define IN4 A0
#define IN5 A1
#define IN6 A2
#define IN7 A3

void setup() {
  //Initialize serial and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);

  
  pinMode(6, INPUT_PULLUP);
  pinMode(7, INPUT_PULLUP);
  pinMode(8, INPUT_PULLUP);
  pinMode(9, INPUT_PULLUP);

  pinMode(IN7, INPUT_PULLUP);
  pinMode(IN6, INPUT_PULLUP);
  pinMode(IN5, INPUT_PULLUP);
  pinMode(IN4, INPUT_PULLUP);
  
  // Sends a clean report to the host. This is important on any Arduino type.
  Keyboard.begin();
}

KeyboardKeycode scancode[16][8]={
 /*0 */ {          ' ',        KEY_TAB,          KEY_A,         KEY_1,        KEY_ESC,       KEY_GRAVE,          KEY_Z,          KEY_Q},
 /*1 */ {          ' ',            ' ',   KEY_LEFTCTRL,  KEY_PAGEDOWN,            ' ',      KEY_PAGEUP,            ' ',            ' '},
 /*2 */ {          ' ',  KEY_LEFTSHIFT,            ' ',           ' ',            ' ',             ' ', KEY_RIGHTSHIFT,            ' '},
 /*3 */ {        KEY_N,          KEY_Y,          KEY_J,         KEY_7,          KEY_H,           KEY_6,          KEY_M,          KEY_U},
 /*4 */ {          ' ',   KEY_CAPSLOCK,          KEY_S,         KEY_2,            ' ',          KEY_F1,          KEY_X,          KEY_W},
 /*5 */ {        KEY_B,          KEY_T,          KEY_F,         KEY_4,          KEY_G,           KEY_5,          KEY_V,          KEY_R},
 /*6 */ {     KEY_DOWN,            ' ',            ' ',       KEY_F11,            ' ',      KEY_DELETE,    KEY_NUMLOCK,            ' '},
 /*7 */ { KEY_RIGHTALT,            ' ',            ' ',     KEY_SYSRQ,    KEY_LEFTALT,             ' ',            ' ', KEY_SCROLLLOCK},
 /*8 */ {    KEY_SPACE,  KEY_BACKSPACE,  KEY_BACKSLASH,       KEY_F10,         KEY_F5,          KEY_F9,      KEY_ENTER,            ' '},
 /*9 */ {          ' ',         KEY_F3,          KEY_D,         KEY_3,         KEY_F4,          KEY_F2,          KEY_C,          KEY_E},
 /*10*/ {          ' ',         KEY_F7,          KEY_L,         KEY_9,            ' ',          KEY_F8,        KEY_DOT,          KEY_O},
 /*11*/ {    KEY_SLASH,  KEY_LEFTBRACE,  KEY_SEMICOLON,         KEY_0, KEY_APOSTROPHE,       KEY_MINUS,           0x80,          KEY_P},
 /*12*/ {         0x82,           0x83,           0x84,          0x85,           0x86,    KEY_LEFTMETA,           0x88,           0x89},
 /*13*/ {         0x8a, KEY_RIGHTBRACE,          KEY_K,         KEY_8,         KEY_F6,       KEY_EQUAL,      KEY_COMMA,          KEY_I},
 /*14*/ {     KEY_LEFT,           0x93,           0x94,       KEY_END,         KEY_UP,        KEY_HOME,      KEY_PAUSE,           0x99},
 /*15*/ {    KEY_RIGHT,           0x9b,           0x9c,       KEY_F12,           0x9e,      KEY_INSERT,           0xa0,           0xa1},
};

uint8_t now_state;
uint8_t old_state[16][8];

void check_now_and_old(int i, int j, unsigned char now_state) {
    if(now_state != old_state[i][j]){
      if(now_state){
//        convert_scancode(i,j,0x55);
        Keyboard.press(scancode[i][j]);
//        Serial.println(String(scancode[i][j],HEX));
      }else{
//        convert_scancode(i,j,0xaa);
        Keyboard.release(scancode[i][j]);
      }
    }
    old_state[i][j] = now_state;
}

void loop() {
  int i,j;
  
  now_state=0;
      
  for ( i=0 ;i<16; i++){
    digitalWrite(2,(i&0x08) >> 3);
    digitalWrite(3,(i&0x04) >> 2);
    digitalWrite(4,(i&0x02) >> 1);
    digitalWrite(5,(i&0x01) >> 0);
  
    j=0;
    check_now_and_old(i, j++, !digitalRead(6));
    check_now_and_old(i, j++, !digitalRead(7));
    check_now_and_old(i, j++, !digitalRead(8));
    check_now_and_old(i, j++, !digitalRead(9));
    check_now_and_old(i, j++, !digitalRead(IN7));
    check_now_and_old(i, j++, !digitalRead(IN6));
    check_now_and_old(i, j++, !digitalRead(IN5));
    check_now_and_old(i, j++, !digitalRead(IN4));
  }

  delay(10);
}
