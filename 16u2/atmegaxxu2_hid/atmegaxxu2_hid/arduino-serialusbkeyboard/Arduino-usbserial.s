	.file	"Arduino-usbserial.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB90:
	.file 1 "Arduino-usbserial.c"
	.loc 1 140 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 142 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
.LBB40:
.LBB41:
	.file 2 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/avr/wdt.h"
	.loc 2 515 0
/* #APP */
 ;  515 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/avr/wdt.h" 1
	in __tmp_reg__,__SREG__
	cli
	wdr
	lds r24,96
	ori r24,24
	sts 96,r24
	sts 96,__zero_reg__
	out __SREG__,__tmp_reg__
	
 ;  0 "" 2
.LVL0:
/* #NOAPP */
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.file 3 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 3 102 0
	ldi r24,lo8(103)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 3 104 0
	ldi r24,lo8(6)
	sts 202,r24
	.loc 3 105 0
	sts 200,__zero_reg__
	.loc 3 106 0
	ldi r24,lo8(24)
	sts 201,r24
	.loc 3 108 0
	sbi 0xa,3
	.loc 3 109 0
	sbi 0xb,2
.LVL1:
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.file 4 "./Board/LEDs.h"
	.loc 4 69 0
	in r24,0xa
	ori r24,lo8(48)
	out 0xa,r24
	.loc 4 70 0
	in r24,0xb
	ori r24,lo8(48)
	out 0xb,r24
.LBE45:
.LBE44:
	.loc 1 148 0
	call USB_Init
.LVL2:
	.loc 1 151 0
	ldi r24,lo8(4)
	out 0x25,r24
	.loc 1 154 0
	sbi 0xb,7
	.loc 1 155 0
	sbi 0xa,7
/* epilogue start */
	.loc 1 156 0
	ret
	.cfi_endproc
.LFE90:
	.size	SetupHardware, .-SetupHardware
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB89:
	.loc 1 81 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 82 0
	call SetupHardware
.LVL3:
.LBB118:
.LBB119:
	.file 5 "Lib/LightweightRingBuff.h"
	.loc 5 87 0
	in r18,__SREG__
.LVL4:
.LBB120:
.LBB121:
	.file 6 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h"
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBE121:
.LBE120:
	.loc 5 89 0
	ldi r24,lo8(USBtoUSART_Buffer)
	ldi r25,hi8(USBtoUSART_Buffer)
	sts USBtoUSART_Buffer+128+1,r25
	sts USBtoUSART_Buffer+128,r24
	.loc 5 90 0
	sts USBtoUSART_Buffer+130+1,r25
	sts USBtoUSART_Buffer+130,r24
.LVL6:
.LBB122:
.LBB123:
	.loc 6 70 0
	out __SREG__,r18
	.loc 6 71 0
.LVL7:
.LBE123:
.LBE122:
.LBE119:
.LBE118:
.LBB124:
.LBB125:
	.loc 5 87 0
	in r18,__SREG__
.LVL8:
.LBB126:
.LBB127:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL9:
/* #NOAPP */
.LBE127:
.LBE126:
	.loc 5 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 5 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL10:
.LBB128:
.LBB129:
	.loc 6 70 0
	out __SREG__,r18
	.loc 6 71 0
.LVL11:
.LBE129:
.LBE128:
.LBE125:
.LBE124:
	.loc 1 87 0
/* #APP */
 ;  87 "Arduino-usbserial.c" 1
	sei
 ;  0 "" 2
/* #NOAPP */
.LBB130:
.LBB131:
.LBB132:
.LBB133:
.LBB134:
	.loc 5 113 0
	ldi r28,lo8(USBtoUSART_Buffer)
	ldi r29,hi8(USBtoUSART_Buffer)
.LBE134:
.LBE133:
.LBE132:
.LBE131:
.LBB142:
.LBB143:
	.loc 5 184 0
	movw r16,r24
.LBE143:
.LBE142:
	.loc 1 109 0
	ldi r24,lo8(3)
	mov r14,r24
.LVL12:
.L23:
.LBB151:
.LBB141:
.LBB140:
.LBB139:
	.loc 5 111 0
	in r25,__SREG__
.LVL13:
.LBB135:
.LBB136:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL14:
/* #NOAPP */
.LBE136:
.LBE135:
	.loc 5 113 0
	lds r24,USBtoUSART_Buffer+132
.LVL15:
.LBB137:
.LBB138:
	.loc 6 70 0
	out __SREG__,r25
	.loc 6 71 0
.LVL16:
.LBE138:
.LBE137:
.LBE139:
.LBE140:
.LBE141:
.LBE151:
	.loc 1 92 0
	cpi r24,lo8(-128)
	breq .L4
.LBB152:
	.loc 1 94 0
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_ReceiveByte
.LVL17:
	.loc 1 97 0
	sbrc r25,7
	rjmp .L4
.LVL18:
.LBB153:
.LBB154:
	.loc 5 161 0
	lds r30,USBtoUSART_Buffer+128
	lds r31,USBtoUSART_Buffer+128+1
.LBE154:
.LBE153:
	.loc 1 98 0
	st Z,r24
.LBB162:
.LBB160:
	.loc 5 163 0
	lds r24,USBtoUSART_Buffer+128
	lds r25,USBtoUSART_Buffer+128+1
.LVL19:
	adiw r24,1
	ldi r18,hi8(USBtoUSART_Buffer+128)
	cpi r24,lo8(USBtoUSART_Buffer+128)
	cpc r25,r18
	brne .+2
	rjmp .L6
	sts USBtoUSART_Buffer+128+1,r25
	sts USBtoUSART_Buffer+128,r24
.L7:
.LBB155:
	.loc 5 166 0
	in r25,__SREG__
.LVL20:
.LBB156:
.LBB157:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL21:
/* #NOAPP */
.LBE157:
.LBE156:
	.loc 5 168 0
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(1))
	sts USBtoUSART_Buffer+132,r24
.LVL22:
.LBB158:
.LBB159:
	.loc 6 70 0
	out __SREG__,r25
	.loc 6 71 0
.LVL23:
.L4:
.LBE159:
.LBE158:
.LBE155:
.LBE160:
.LBE162:
.LBE152:
.LBB164:
.LBB165:
.LBB166:
	.loc 5 111 0
	in r24,__SREG__
.LVL24:
.LBB167:
.LBB168:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL25:
/* #NOAPP */
.LBE168:
.LBE167:
	.loc 5 113 0
	lds r15,USARTtoUSB_Buffer+132
.LVL26:
.LBB169:
.LBB170:
	.loc 6 70 0
	out __SREG__,r24
	.loc 6 71 0
.LVL27:
.LBE170:
.LBE169:
.LBE166:
.LBE165:
.LBE164:
	.loc 1 103 0
	sbic 0x15,0
	rjmp .L8
	.loc 1 103 0 is_stmt 0 discriminator 1
	ldi r24,lo8(96)
	cp r24,r15
	brsh .L9
.L8:
	.loc 1 105 0 is_stmt 1
	sbi 0x15,0
	.loc 1 107 0
	lds r24,USARTtoUSB_Buffer+132
	tst r24
	breq .L11
.LVL28:
.LBB171:
.LBB172:
	.loc 4 75 0
	cbi 0xb,5
.LVL29:
.LBE172:
.LBE171:
	.loc 1 109 0
	sts PulseMSRemaining,r14
.LVL30:
.L11:
	.loc 1 113 0
	dec r15
.LVL31:
	ldi r24,lo8(-1)
	cpse r15,r24
	rjmp .L14
	.loc 1 117 0
	lds r24,PulseMSRemaining
	tst r24
	breq .L16
	.loc 1 117 0 is_stmt 0 discriminator 1
	lds r24,PulseMSRemaining
	subi r24,lo8(-(-1))
	sts PulseMSRemaining,r24
	cpse r24,__zero_reg__
	rjmp .L16
.LVL32:
.LBB173:
.LBB174:
	.loc 4 80 0 is_stmt 1
	sbi 0xb,5
.LVL33:
.L16:
.LBE174:
.LBE173:
	.loc 1 121 0
	lds r24,PulseMSRemaining+1
	tst r24
	breq .L9
	.loc 1 121 0 is_stmt 0 discriminator 1
	lds r24,PulseMSRemaining+1
	subi r24,lo8(-(-1))
	sts PulseMSRemaining+1,r24
	cpse r24,__zero_reg__
	rjmp .L9
.LVL34:
.LBB175:
.LBB176:
	.loc 4 80 0 is_stmt 1
	sbi 0xb,4
.LVL35:
.L9:
.LBE176:
.LBE175:
.LBB177:
.LBB178:
.LBB179:
.LBB180:
	.loc 5 111 0
	in r25,__SREG__
.LVL36:
.LBB181:
.LBB182:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL37:
/* #NOAPP */
.LBE182:
.LBE181:
	.loc 5 113 0
	lds r24,USBtoUSART_Buffer+132
.LVL38:
.LBB183:
.LBB184:
	.loc 6 70 0
	out __SREG__,r25
	.loc 6 71 0
.LVL39:
.LBE184:
.LBE183:
.LBE180:
.LBE179:
.LBE178:
.LBE177:
	.loc 1 126 0
	tst r24
	breq .L19
.LVL40:
.LBB185:
.LBB186:
	.loc 5 184 0
	lds r30,USBtoUSART_Buffer+130
	lds r31,USBtoUSART_Buffer+130+1
	ld r25,Z+
.LVL41:
	.loc 5 186 0
	ldi r18,hi8(USBtoUSART_Buffer+128)
	cpi r30,lo8(USBtoUSART_Buffer+128)
	cpc r31,r18
	brne .+2
	rjmp .L20
	sts USBtoUSART_Buffer+130+1,r31
	sts USBtoUSART_Buffer+130,r30
.L21:
.LBB187:
	.loc 5 189 0
	in r18,__SREG__
.LVL42:
.LBB188:
.LBB189:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL43:
/* #NOAPP */
.LBE189:
.LBE188:
	.loc 5 191 0
	lds r24,USBtoUSART_Buffer+132
	subi r24,lo8(-(-1))
	sts USBtoUSART_Buffer+132,r24
.LVL44:
.LBB190:
.LBB191:
	.loc 6 70 0
	out __SREG__,r18
	.loc 6 71 0
.LVL45:
.L22:
.LBE191:
.LBE190:
.LBE187:
.LBE186:
.LBE185:
.LBB193:
.LBB194:
	.loc 3 142 0
	lds r24,200
	sbrs r24,5
	rjmp .L22
	.loc 3 143 0
	sts 206,r25
.LVL46:
.LBE194:
.LBE193:
.LBB195:
.LBB196:
	.loc 4 75 0
	cbi 0xb,4
.LVL47:
.LBE196:
.LBE195:
	.loc 1 130 0
	sts PulseMSRemaining+1,r14
.LVL48:
.L19:
	.loc 1 133 0
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_USBTask
.LVL49:
	.loc 1 134 0
	call USB_USBTask
.LVL50:
.LBE130:
	.loc 1 90 0
	rjmp .L23
.LVL51:
.L6:
.LBB201:
.LBB197:
.LBB163:
.LBB161:
	.loc 5 164 0
	sts USBtoUSART_Buffer+128+1,r29
	sts USBtoUSART_Buffer+128,r28
	rjmp .L7
.LVL52:
.L14:
.LBE161:
.LBE163:
.LBE197:
.LBB198:
.LBB149:
	.loc 5 184 0
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r22,Z+
.LVL53:
	.loc 5 186 0
	ldi r18,hi8(USARTtoUSB_Buffer+128)
	cpi r30,lo8(USARTtoUSB_Buffer+128)
	cpc r31,r18
	breq .L12
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
.L13:
.LBB144:
	.loc 5 189 0
	in r25,__SREG__
.LVL54:
.LBB145:
.LBB146:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL55:
/* #NOAPP */
.LBE146:
.LBE145:
	.loc 5 191 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r24
.LVL56:
.LBB147:
.LBB148:
	.loc 6 70 0
	out __SREG__,r25
	.loc 6 71 0
.LVL57:
.LBE148:
.LBE147:
.LBE144:
.LBE149:
.LBE198:
	.loc 1 114 0
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	call CDC_Device_SendByte
.LVL58:
	rjmp .L11
.LVL59:
.L12:
.LBB199:
.LBB150:
	.loc 5 187 0
	sts USARTtoUSB_Buffer+130+1,r17
	sts USARTtoUSB_Buffer+130,r16
	rjmp .L13
.LVL60:
.L20:
.LBE150:
.LBE199:
.LBB200:
.LBB192:
	sts USBtoUSART_Buffer+130+1,r29
	sts USBtoUSART_Buffer+130,r28
	rjmp .L21
.LBE192:
.LBE200:
.LBE201:
	.cfi_endproc
.LFE89:
	.size	main, .-main
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB91:
	.loc 1 160 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 161 0
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	jmp CDC_Device_ConfigureEndpoints
.LVL61:
	.cfi_endproc
.LFE91:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB92:
	.loc 1 166 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 167 0
	ldi r24,lo8(VirtualSerial_CDC_Interface)
	ldi r25,hi8(VirtualSerial_CDC_Interface)
	jmp CDC_Device_ProcessControlRequest
.LVL62:
	.cfi_endproc
.LFE92:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.EVENT_CDC_Device_LineEncodingChanged,"ax",@progbits
.global	EVENT_CDC_Device_LineEncodingChanged
	.type	EVENT_CDC_Device_LineEncodingChanged, @function
EVENT_CDC_Device_LineEncodingChanged:
.LFB93:
	.loc 1 175 0
	.cfi_startproc
.LVL63:
	push r16
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 16, -2
	push r17
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 17, -3
	push r28
.LCFI2:
	.cfi_def_cfa_offset 5
	.cfi_offset 28, -4
/* prologue: function */
/* frame size = 0 */
/* stack size = 3 */
.L__stack_usage = 3
	movw r16,r24
.LVL64:
	.loc 1 178 0
	movw r30,r24
	ldd r24,Z+20
.LVL65:
	.loc 1 181 0
	ldi r28,lo8(48)
	.loc 1 178 0
	cpi r24,lo8(1)
	breq .L38
	.loc 1 184 0
	ldi r28,lo8(32)
	.loc 1 178 0
	cpi r24,lo8(2)
	breq .L38
	.loc 1 176 0
	ldi r28,0
.L38:
.LVL66:
	.loc 1 188 0
	movw r30,r16
	ldd r24,Z+19
	cpi r24,lo8(2)
	brne .L41
	.loc 1 189 0
	ori r28,lo8(8)
.LVL67:
.L41:
	.loc 1 191 0
	movw r30,r16
	ldd r24,Z+21
	cpi r24,lo8(7)
	breq .L43
	cpi r24,lo8(8)
	breq .L44
	cpi r24,lo8(6)
	brne .L42
	.loc 1 194 0
	ori r28,lo8(2)
.LVL68:
.L42:
	.loc 1 205 0
	sts 201,__zero_reg__
	.loc 1 206 0
	sts 200,__zero_reg__
	.loc 1 207 0
	sts 202,__zero_reg__
	.loc 1 210 0
	movw r30,r16
	ldd r18,Z+15
	ldd r19,Z+16
	ldd r20,Z+17
	ldd r21,Z+18
	cp r18,__zero_reg__
	ldi r31,-31
	cpc r19,r31
	cpc r20,__zero_reg__
	cpc r21,__zero_reg__
	breq .L49
	.loc 1 212 0 discriminator 2
	movw r24,r20
	movw r22,r18
	lsr r25
	ror r24
	ror r23
	ror r22
	subi r22,-128
	sbci r23,123
	sbci r24,-31
	sbci r25,-1
	call __udivmodsi4
	.loc 1 210 0 discriminator 2
	subi r18,1
	sbc r19,__zero_reg__
.L46:
	.loc 1 210 0 is_stmt 0 discriminator 4
	sts 204+1,r19
	sts 204,r18
	.loc 1 214 0 is_stmt 1 discriminator 4
	sts 202,r28
	.loc 1 215 0 discriminator 4
	movw r30,r16
	ldd r24,Z+15
	ldd r25,Z+16
	ldd r26,Z+17
	ldd r27,Z+18
	cp r24,__zero_reg__
	sbci r25,-31
	cpc r26,__zero_reg__
	cpc r27,__zero_reg__
	breq .L50
	.loc 1 215 0 is_stmt 0
	ldi r24,lo8(2)
.L47:
	.loc 1 215 0 discriminator 4
	sts 200,r24
	.loc 1 216 0 is_stmt 1 discriminator 4
	ldi r24,lo8(-104)
	sts 201,r24
/* epilogue start */
	.loc 1 217 0 discriminator 4
	pop r28
.LVL69:
	pop r17
	pop r16
.LVL70:
	ret
.LVL71:
.L43:
	.loc 1 197 0
	ori r28,lo8(4)
.LVL72:
	.loc 1 198 0
	rjmp .L42
.L44:
	.loc 1 200 0
	ori r28,lo8(6)
.LVL73:
	.loc 1 201 0
	rjmp .L42
.L49:
	.loc 1 210 0
	ldi r18,lo8(16)
	ldi r19,0
	rjmp .L46
.L50:
	.loc 1 215 0
	ldi r24,0
	rjmp .L47
	.cfi_endproc
.LFE93:
	.size	EVENT_CDC_Device_LineEncodingChanged, .-EVENT_CDC_Device_LineEncodingChanged
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB94:
	.loc 1 223 0
	.cfi_startproc
	push r1
.LCFI3:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI5:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI6:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI7:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI8:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI9:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 1 224 0
	lds r24,206
.LVL74:
	.loc 1 226 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L52
.LVL75:
.LBB209:
.LBB210:
	.loc 5 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 5 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL76:
	adiw r24,1
	ldi r18,hi8(USARTtoUSB_Buffer+128)
	cpi r24,lo8(USARTtoUSB_Buffer+128)
	cpc r25,r18
	breq .L54
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
.L55:
.LBB211:
	.loc 5 166 0
	in r25,__SREG__
.LVL77:
.LBB212:
.LBB213:
	.loc 6 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL78:
/* #NOAPP */
.LBE213:
.LBE212:
	.loc 5 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL79:
.LBB214:
.LBB215:
	.loc 6 70 0
	out __SREG__,r25
	.loc 6 71 0
.LVL80:
.L52:
/* epilogue start */
.LBE215:
.LBE214:
.LBE211:
.LBE210:
.LBE209:
	.loc 1 228 0
	pop r31
	pop r30
	pop r25
	pop r24
	pop r18
	pop r0
	out __SREG__,r0
	pop r0
	pop r1
	reti
.LVL81:
.L54:
.LBB217:
.LBB216:
	.loc 5 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
	rjmp .L55
.LBE216:
.LBE217:
	.cfi_endproc
.LFE94:
	.size	__vector_23, .-__vector_23
	.section	.text.EVENT_CDC_Device_ControLineStateChanged,"ax",@progbits
.global	EVENT_CDC_Device_ControLineStateChanged
	.type	EVENT_CDC_Device_ControLineStateChanged, @function
EVENT_CDC_Device_ControLineStateChanged:
.LFB95:
	.loc 1 235 0
	.cfi_startproc
.LVL82:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 238 0
	movw r30,r24
	ldd r24,Z+13
.LVL83:
	sbrs r24,0
	rjmp .L57
	.loc 1 239 0
	cbi 0xb,7
	ret
.L57:
	.loc 1 241 0
	sbi 0xb,7
/* epilogue start */
	.loc 1 242 0
	ret
	.cfi_endproc
.LFE95:
	.size	EVENT_CDC_Device_ControLineStateChanged, .-EVENT_CDC_Device_ControLineStateChanged
.global	VirtualSerial_CDC_Interface
	.data
	.type	VirtualSerial_CDC_Interface, @object
	.size	VirtualSerial_CDC_Interface, 22
VirtualSerial_CDC_Interface:
	.byte	0
	.byte	3
	.word	64
	.byte	0
	.byte	4
	.word	64
	.byte	0
	.byte	2
	.word	8
	.byte	0
	.zero	9
	.comm	PulseMSRemaining,3,1
	.comm	USARTtoUSB_Buffer,133,1
	.comm	USBtoUSART_Buffer,133,1
	.text
.Letext0:
	.file 7 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h"
	.file 8 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/../HighLevel/StdRequestType.h"
	.file 9 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/../HighLevel/DeviceStandardReq.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.file 11 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.file 12 "../../LUFA/Drivers/USB/Class/Device/../Common/CDC.h"
	.file 13 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdio.h"
	.file 14 "../../LUFA/Drivers/USB/Class/Device/CDC.h"
	.file 15 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe06
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF115
	.byte	0xc
	.long	.LASF116
	.long	.LASF117
	.long	.Ldebug_ranges0+0xb8
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x7
	.byte	0x7e
	.long	0x40
	.uleb128 0x4
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x3
	.long	.LASF3
	.byte	0x7
	.byte	0x7f
	.long	0x52
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF4
	.byte	0x7
	.byte	0x80
	.long	0x64
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF6
	.uleb128 0x3
	.long	.LASF7
	.byte	0x7
	.byte	0x82
	.long	0x82
	.uleb128 0x4
	.long	0x72
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF9
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF10
	.uleb128 0x6
	.long	.LASF29
	.byte	0x7
	.byte	0x1
	.long	0x40
	.byte	0xb
	.byte	0x72
	.long	0xcd
	.uleb128 0x7
	.long	.LASF11
	.byte	0
	.uleb128 0x7
	.long	.LASF12
	.byte	0x1
	.uleb128 0x7
	.long	.LASF13
	.byte	0x2
	.uleb128 0x7
	.long	.LASF14
	.byte	0x3
	.uleb128 0x7
	.long	.LASF15
	.byte	0x4
	.uleb128 0x7
	.long	.LASF16
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0x8
	.byte	0xa2
	.long	0x11c
	.uleb128 0x9
	.long	.LASF17
	.byte	0x8
	.byte	0xa4
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF18
	.byte	0x8
	.byte	0xa5
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF19
	.byte	0x8
	.byte	0xa6
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF20
	.byte	0x8
	.byte	0xa7
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF21
	.byte	0x8
	.byte	0xa8
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF22
	.byte	0x8
	.byte	0xa9
	.long	0xcd
	.uleb128 0xa
	.long	.LASF23
	.byte	0x9
	.byte	0x64
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF24
	.byte	0x9
	.byte	0x75
	.long	0x141
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF25
	.uleb128 0xb
	.long	0x141
	.uleb128 0x4
	.long	0x141
	.uleb128 0xa
	.long	.LASF26
	.byte	0x9
	.byte	0x7f
	.long	0x141
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0xa
	.byte	0x53
	.long	0x148
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF28
	.byte	0xa
	.byte	0x5b
	.long	0x11c
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.byte	0x2
	.uleb128 0x6
	.long	.LASF30
	.byte	0x7
	.byte	0x1
	.long	0x40
	.byte	0xc
	.byte	0x9b
	.long	0x19f
	.uleb128 0x7
	.long	.LASF31
	.byte	0
	.uleb128 0x7
	.long	.LASF32
	.byte	0x1
	.uleb128 0x7
	.long	.LASF33
	.byte	0x2
	.byte	0
	.uleb128 0x6
	.long	.LASF34
	.byte	0x7
	.byte	0x1
	.long	0x40
	.byte	0xc
	.byte	0xa3
	.long	0x1cf
	.uleb128 0x7
	.long	.LASF35
	.byte	0
	.uleb128 0x7
	.long	.LASF36
	.byte	0x1
	.uleb128 0x7
	.long	.LASF37
	.byte	0x2
	.uleb128 0x7
	.long	.LASF38
	.byte	0x3
	.uleb128 0x7
	.long	.LASF39
	.byte	0x4
	.byte	0
	.uleb128 0xd
	.long	.LASF118
	.byte	0xe
	.byte	0xd
	.byte	0xf4
	.long	0x251
	.uleb128 0xe
	.string	"buf"
	.byte	0xd
	.byte	0xf5
	.long	0x251
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF40
	.byte	0xd
	.byte	0xf6
	.long	0x40
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF41
	.byte	0xd
	.byte	0xf7
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xf
	.long	.LASF42
	.byte	0xd
	.word	0x107
	.long	0x52
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x10
	.string	"len"
	.byte	0xd
	.word	0x108
	.long	0x52
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x10
	.string	"put"
	.byte	0xd
	.word	0x109
	.long	0x27e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x10
	.string	"get"
	.byte	0xd
	.word	0x10a
	.long	0x294
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.long	.LASF43
	.byte	0xd
	.word	0x10b
	.long	0x179
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x257
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF44
	.uleb128 0x4
	.long	0x257
	.uleb128 0x12
	.byte	0x1
	.long	0x52
	.long	0x278
	.uleb128 0x13
	.long	0x257
	.uleb128 0x13
	.long	0x278
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x1cf
	.uleb128 0x11
	.byte	0x2
	.long	0x263
	.uleb128 0x12
	.byte	0x1
	.long	0x52
	.long	0x294
	.uleb128 0x13
	.long	0x278
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x284
	.uleb128 0x14
	.long	0x278
	.long	0x2a5
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.long	.LASF45
	.byte	0xd
	.word	0x197
	.long	0x29a
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0xd
	.byte	0xe
	.byte	0x64
	.long	0x348
	.uleb128 0x9
	.long	.LASF46
	.byte	0xe
	.byte	0x66
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF47
	.byte	0xe
	.byte	0x68
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF48
	.byte	0xe
	.byte	0x69
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF49
	.byte	0xe
	.byte	0x6a
	.long	0x141
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF50
	.byte	0xe
	.byte	0x6c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF51
	.byte	0xe
	.byte	0x6d
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.long	.LASF52
	.byte	0xe
	.byte	0x6e
	.long	0x141
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x9
	.long	.LASF53
	.byte	0xe
	.byte	0x70
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x9
	.long	.LASF54
	.byte	0xe
	.byte	0x71
	.long	0x59
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x9
	.long	.LASF55
	.byte	0xe
	.byte	0x72
	.long	0x141
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x4
	.long	0x2b3
	.uleb128 0x8
	.byte	0x2
	.byte	0xe
	.byte	0x78
	.long	0x372
	.uleb128 0x9
	.long	.LASF56
	.byte	0xe
	.byte	0x7a
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF57
	.byte	0xe
	.byte	0x7d
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x8
	.byte	0x7
	.byte	0xe
	.byte	0x83
	.long	0x3b3
	.uleb128 0x9
	.long	.LASF58
	.byte	0xe
	.byte	0x85
	.long	0x72
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF59
	.byte	0xe
	.byte	0x86
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF60
	.byte	0xe
	.byte	0x89
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.long	.LASF61
	.byte	0xe
	.byte	0x8c
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x8
	.byte	0x9
	.byte	0xe
	.byte	0x76
	.long	0x3d8
	.uleb128 0x9
	.long	.LASF62
	.byte	0xe
	.byte	0x81
	.long	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF63
	.byte	0xe
	.byte	0x8d
	.long	0x372
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x8
	.byte	0x16
	.byte	0xe
	.byte	0x62
	.long	0x3fd
	.uleb128 0x9
	.long	.LASF64
	.byte	0xe
	.byte	0x73
	.long	0x348
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF65
	.byte	0xe
	.byte	0x90
	.long	0x3b3
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.long	.LASF66
	.byte	0xe
	.byte	0x93
	.long	0x3d8
	.uleb128 0x8
	.byte	0x85
	.byte	0x5
	.byte	0x46
	.long	0x44b
	.uleb128 0x9
	.long	.LASF67
	.byte	0x5
	.byte	0x48
	.long	0x44b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"In"
	.byte	0x5
	.byte	0x49
	.long	0x45b
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"Out"
	.byte	0x5
	.byte	0x4a
	.long	0x45b
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF68
	.byte	0x5
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0x14
	.long	0x30
	.long	0x45b
	.uleb128 0x17
	.long	0x64
	.byte	0x7f
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF69
	.byte	0x5
	.byte	0x4c
	.long	0x408
	.uleb128 0x18
	.long	.LASF70
	.byte	0x1
	.byte	0x28
	.long	0x461
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USBtoUSART_Buffer
	.uleb128 0x18
	.long	.LASF71
	.byte	0x1
	.byte	0x2b
	.long	0x461
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x8
	.byte	0x3
	.byte	0x1
	.byte	0x2e
	.long	0x4c3
	.uleb128 0x9
	.long	.LASF72
	.byte	0x1
	.byte	0x30
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF73
	.byte	0x1
	.byte	0x31
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF74
	.byte	0x1
	.byte	0x32
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.long	0x490
	.uleb128 0x18
	.long	.LASF75
	.byte	0x1
	.byte	0x33
	.long	0x4c3
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	PulseMSRemaining
	.uleb128 0x18
	.long	.LASF76
	.byte	0x1
	.byte	0x39
	.long	0x3fd
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.uleb128 0x19
	.byte	0x1
	.long	.LASF77
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x525
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0xea
	.long	0x52b
	.long	.LLST47
	.uleb128 0x1b
	.long	.LASF79
	.byte	0x1
	.byte	0xec
	.long	0x141
	.long	.LLST48
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x3fd
	.uleb128 0x4
	.long	0x525
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF78
	.byte	0x1
	.byte	0xde
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.long	.LLST41
	.byte	0x1
	.long	0x5c0
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.byte	0xe0
	.long	0x30
	.long	.LLST42
	.uleb128 0x1d
	.long	0xc6a
	.long	.LBB209
	.long	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xe3
	.uleb128 0x1e
	.long	0xc82
	.long	.LLST43
	.uleb128 0x1f
	.long	0xc77
	.uleb128 0x20
	.long	0xc8d
	.long	.LBB211
	.long	.LBE211
	.uleb128 0x21
	.long	0xc8e
	.long	.LLST44
	.uleb128 0x21
	.long	0xc99
	.long	.LLST45
	.uleb128 0x22
	.long	0xd70
	.long	.LBB212
	.long	.LBE212
	.byte	0x5
	.byte	0xa6
	.uleb128 0x23
	.long	0xd51
	.long	.LBB214
	.long	.LBE214
	.byte	0x5
	.byte	0xa6
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST46
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.long	.LASF81
	.byte	0x1
	.byte	0xae
	.byte	0x1
	.long	.LFB93
	.long	.LFE93
	.long	.LLST38
	.byte	0x1
	.long	0x5f9
	.uleb128 0x1a
	.long	.LASF82
	.byte	0x1
	.byte	0xae
	.long	0x52b
	.long	.LLST39
	.uleb128 0x1b
	.long	.LASF83
	.byte	0x1
	.byte	0xb0
	.long	0x30
	.long	.LLST40
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF84
	.byte	0x1
	.byte	0xa5
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x62d
	.uleb128 0x24
	.long	.LVL62
	.byte	0x1
	.long	0xdac
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF85
	.byte	0x1
	.byte	0x9f
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x661
	.uleb128 0x24
	.long	.LVL61
	.byte	0x1
	.long	0xdb9
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.long	.LASF86
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x6e1
	.uleb128 0x26
	.long	0xd7d
	.long	.LBB40
	.long	.LBE40
	.byte	0x1
	.byte	0x8f
	.long	0x6a2
	.uleb128 0x20
	.long	0xd9d
	.long	.LBB41
	.long	.LBE41
	.uleb128 0x27
	.long	0xd9e
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xbc0
	.long	.LBB42
	.long	.LBE42
	.byte	0x1
	.byte	0x92
	.long	0x6c8
	.uleb128 0x1e
	.long	0xbcd
	.long	.LLST0
	.uleb128 0x1e
	.long	0xbd8
	.long	.LLST1
	.byte	0
	.uleb128 0x22
	.long	0xc16
	.long	.LBB44
	.long	.LBE44
	.byte	0x1
	.byte	0x93
	.uleb128 0x28
	.long	.LVL2
	.long	0xdc6
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.long	.LASF119
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.long	0x52
	.long	.LFB89
	.long	.LFE89
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xba7
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0
	.long	0xadb
	.uleb128 0x1b
	.long	.LASF87
	.byte	0x1
	.byte	0x66
	.long	0x30
	.long	.LLST8
	.uleb128 0x2a
	.long	.Ldebug_ranges0+0x50
	.long	0x7b2
	.uleb128 0x1b
	.long	.LASF80
	.byte	0x1
	.byte	0x5e
	.long	0x47
	.long	.LLST17
	.uleb128 0x2b
	.long	0xc6a
	.long	.LBB153
	.long	.Ldebug_ranges0+0x68
	.byte	0x1
	.byte	0x62
	.long	0x799
	.uleb128 0x1e
	.long	0xc82
	.long	.LLST18
	.uleb128 0x1f
	.long	0xc77
	.uleb128 0x20
	.long	0xc8d
	.long	.LBB155
	.long	.LBE155
	.uleb128 0x21
	.long	0xc8e
	.long	.LLST19
	.uleb128 0x21
	.long	0xc99
	.long	.LLST20
	.uleb128 0x22
	.long	0xd70
	.long	.LBB156
	.long	.LBE156
	.byte	0x5
	.byte	0xa6
	.uleb128 0x23
	.long	0xd51
	.long	.LBB158
	.long	.LBE158
	.byte	0x5
	.byte	0xa6
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	.LVL17
	.long	0xdd4
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xcc3
	.long	.LBB131
	.long	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x5c
	.long	0x833
	.uleb128 0x1f
	.long	0xcd4
	.uleb128 0x1d
	.long	0xce0
	.long	.LBB132
	.long	.Ldebug_ranges0+0x18
	.byte	0x5
	.byte	0x81
	.uleb128 0x1f
	.long	0xcf1
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.long	0xcfc
	.long	.LLST9
	.uleb128 0x2e
	.long	0xd07
	.long	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.long	0xd08
	.long	.LLST10
	.uleb128 0x21
	.long	0xd13
	.long	.LLST11
	.uleb128 0x22
	.long	0xd70
	.long	.LBB135
	.long	.LBE135
	.byte	0x5
	.byte	0x6f
	.uleb128 0x23
	.long	0xd51
	.long	.LBB137
	.long	.LBE137
	.byte	0x5
	.byte	0x6f
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xc1f
	.long	.LBB142
	.long	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x72
	.long	0x8a3
	.uleb128 0x1f
	.long	0xc30
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.long	0xc3b
	.long	.LLST13
	.uleb128 0x20
	.long	0xc46
	.long	.LBB144
	.long	.LBE144
	.uleb128 0x21
	.long	0xc47
	.long	.LLST14
	.uleb128 0x21
	.long	0xc52
	.long	.LLST15
	.uleb128 0x22
	.long	0xd70
	.long	.LBB145
	.long	.LBE145
	.byte	0x5
	.byte	0xbd
	.uleb128 0x23
	.long	0xd51
	.long	.LBB147
	.long	.LBE147
	.byte	0x5
	.byte	0xbd
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xce0
	.long	.LBB164
	.long	.LBE164
	.byte	0x1
	.byte	0x66
	.long	0x917
	.uleb128 0x1f
	.long	0xcf1
	.uleb128 0x2f
	.long	.LBB165
	.long	.LBE165
	.uleb128 0x21
	.long	0xcfc
	.long	.LLST22
	.uleb128 0x20
	.long	0xd07
	.long	.LBB166
	.long	.LBE166
	.uleb128 0x21
	.long	0xd08
	.long	.LLST23
	.uleb128 0x21
	.long	0xd13
	.long	.LLST24
	.uleb128 0x22
	.long	0xd70
	.long	.LBB167
	.long	.LBE167
	.byte	0x5
	.byte	0x6f
	.uleb128 0x23
	.long	0xd51
	.long	.LBB169
	.long	.LBE169
	.byte	0x5
	.byte	0x6f
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xbfd
	.long	.LBB171
	.long	.LBE171
	.byte	0x1
	.byte	0x6c
	.long	0x934
	.uleb128 0x1e
	.long	0xc0a
	.long	.LLST26
	.byte	0
	.uleb128 0x26
	.long	0xbe4
	.long	.LBB173
	.long	.LBE173
	.byte	0x1
	.byte	0x76
	.long	0x951
	.uleb128 0x1e
	.long	0xbf1
	.long	.LLST27
	.byte	0
	.uleb128 0x26
	.long	0xbe4
	.long	.LBB175
	.long	.LBE175
	.byte	0x1
	.byte	0x7a
	.long	0x96e
	.uleb128 0x1e
	.long	0xbf1
	.long	.LLST28
	.byte	0
	.uleb128 0x26
	.long	0xca6
	.long	.LBB177
	.long	.LBE177
	.byte	0x1
	.byte	0x7e
	.long	0x9f7
	.uleb128 0x1f
	.long	0xcb7
	.uleb128 0x23
	.long	0xce0
	.long	.LBB178
	.long	.LBE178
	.byte	0x5
	.byte	0x92
	.uleb128 0x1f
	.long	0xcf1
	.uleb128 0x2f
	.long	.LBB179
	.long	.LBE179
	.uleb128 0x21
	.long	0xcfc
	.long	.LLST29
	.uleb128 0x20
	.long	0xd07
	.long	.LBB180
	.long	.LBE180
	.uleb128 0x21
	.long	0xd08
	.long	.LLST30
	.uleb128 0x21
	.long	0xd13
	.long	.LLST31
	.uleb128 0x22
	.long	0xd70
	.long	.LBB181
	.long	.LBE181
	.byte	0x5
	.byte	0x6f
	.uleb128 0x23
	.long	0xd51
	.long	.LBB183
	.long	.LBE183
	.byte	0x5
	.byte	0x6f
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST32
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2b
	.long	0xc1f
	.long	.LBB185
	.long	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x7f
	.long	0xa67
	.uleb128 0x1f
	.long	0xc30
	.uleb128 0x2d
	.long	.Ldebug_ranges0+0x88
	.uleb128 0x21
	.long	0xc3b
	.long	.LLST33
	.uleb128 0x20
	.long	0xc46
	.long	.LBB187
	.long	.LBE187
	.uleb128 0x21
	.long	0xc47
	.long	.LLST34
	.uleb128 0x21
	.long	0xc52
	.long	.LLST35
	.uleb128 0x22
	.long	0xd70
	.long	.LBB188
	.long	.LBE188
	.byte	0x5
	.byte	0xbd
	.uleb128 0x23
	.long	0xd51
	.long	.LBB190
	.long	.LBE190
	.byte	0x5
	.byte	0xbd
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xba7
	.long	.LBB193
	.long	.LBE193
	.byte	0x1
	.byte	0x7f
	.long	0xa80
	.uleb128 0x1f
	.long	0xbb4
	.byte	0
	.uleb128 0x26
	.long	0xbfd
	.long	.LBB195
	.long	.LBE195
	.byte	0x1
	.byte	0x81
	.long	0xa9d
	.uleb128 0x1e
	.long	0xc0a
	.long	.LLST37
	.byte	0
	.uleb128 0x30
	.long	.LVL49
	.long	0xde2
	.long	0xab9
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.uleb128 0x28
	.long	.LVL50
	.long	0xdef
	.uleb128 0x2c
	.long	.LVL58
	.long	0xdfc
	.uleb128 0x25
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	VirtualSerial_CDC_Interface
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xd20
	.long	.LBB118
	.long	.LBE118
	.byte	0x1
	.byte	0x54
	.long	0xb3c
	.uleb128 0x1f
	.long	0xd2d
	.uleb128 0x20
	.long	0xd38
	.long	.LBB119
	.long	.LBE119
	.uleb128 0x21
	.long	0xd39
	.long	.LLST2
	.uleb128 0x21
	.long	0xd44
	.long	.LLST3
	.uleb128 0x22
	.long	0xd70
	.long	.LBB120
	.long	.LBE120
	.byte	0x5
	.byte	0x57
	.uleb128 0x23
	.long	0xd51
	.long	.LBB122
	.long	.LBE122
	.byte	0x5
	.byte	0x57
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.long	0xd20
	.long	.LBB124
	.long	.LBE124
	.byte	0x1
	.byte	0x55
	.long	0xb9d
	.uleb128 0x1f
	.long	0xd2d
	.uleb128 0x20
	.long	0xd38
	.long	.LBB125
	.long	.LBE125
	.uleb128 0x21
	.long	0xd39
	.long	.LLST5
	.uleb128 0x21
	.long	0xd44
	.long	.LLST6
	.uleb128 0x22
	.long	0xd70
	.long	.LBB126
	.long	.LBE126
	.byte	0x5
	.byte	0x57
	.uleb128 0x23
	.long	0xd51
	.long	.LBB128
	.long	.LBE128
	.byte	0x5
	.byte	0x57
	.uleb128 0x1e
	.long	0xd5e
	.long	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	.LVL3
	.long	0x661
	.byte	0
	.uleb128 0x31
	.long	.LASF88
	.byte	0x3
	.byte	0x8c
	.byte	0x1
	.byte	0x3
	.long	0xbc0
	.uleb128 0x32
	.long	.LASF90
	.byte	0x3
	.byte	0x8c
	.long	0x25e
	.byte	0
	.uleb128 0x31
	.long	.LASF89
	.byte	0x3
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0xbe4
	.uleb128 0x32
	.long	.LASF91
	.byte	0x3
	.byte	0x63
	.long	0x7d
	.uleb128 0x32
	.long	.LASF92
	.byte	0x3
	.byte	0x64
	.long	0x14d
	.byte	0
	.uleb128 0x31
	.long	.LASF93
	.byte	0x4
	.byte	0x4e
	.byte	0x1
	.byte	0x3
	.long	0xbfd
	.uleb128 0x32
	.long	.LASF94
	.byte	0x4
	.byte	0x4e
	.long	0x3b
	.byte	0
	.uleb128 0x31
	.long	.LASF95
	.byte	0x4
	.byte	0x49
	.byte	0x1
	.byte	0x3
	.long	0xc16
	.uleb128 0x32
	.long	.LASF94
	.byte	0x4
	.byte	0x49
	.long	0x3b
	.byte	0
	.uleb128 0x33
	.long	.LASF120
	.byte	0x4
	.byte	0x43
	.byte	0x1
	.byte	0x3
	.uleb128 0x34
	.long	.LASF100
	.byte	0x5
	.byte	0xb6
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0xc5f
	.uleb128 0x32
	.long	.LASF67
	.byte	0x5
	.byte	0xb6
	.long	0xc65
	.uleb128 0x35
	.long	.LASF96
	.byte	0x5
	.byte	0xb8
	.long	0x30
	.uleb128 0x36
	.uleb128 0x35
	.long	.LASF97
	.byte	0x5
	.byte	0xbd
	.long	0x30
	.uleb128 0x35
	.long	.LASF98
	.byte	0x5
	.byte	0xbd
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x461
	.uleb128 0x4
	.long	0xc5f
	.uleb128 0x31
	.long	.LASF99
	.byte	0x5
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0xca6
	.uleb128 0x32
	.long	.LASF67
	.byte	0x5
	.byte	0x9e
	.long	0xc65
	.uleb128 0x32
	.long	.LASF96
	.byte	0x5
	.byte	0x9f
	.long	0x3b
	.uleb128 0x36
	.uleb128 0x35
	.long	.LASF97
	.byte	0x5
	.byte	0xa6
	.long	0x30
	.uleb128 0x35
	.long	.LASF98
	.byte	0x5
	.byte	0xa6
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	.LASF101
	.byte	0x5
	.byte	0x90
	.byte	0x1
	.long	0x141
	.byte	0x3
	.long	0xcc3
	.uleb128 0x32
	.long	.LASF67
	.byte	0x5
	.byte	0x90
	.long	0xc65
	.byte	0
	.uleb128 0x34
	.long	.LASF102
	.byte	0x5
	.byte	0x7f
	.byte	0x1
	.long	0x141
	.byte	0x3
	.long	0xce0
	.uleb128 0x32
	.long	.LASF67
	.byte	0x5
	.byte	0x7f
	.long	0xc65
	.byte	0
	.uleb128 0x34
	.long	.LASF103
	.byte	0x5
	.byte	0x6b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0xd20
	.uleb128 0x32
	.long	.LASF67
	.byte	0x5
	.byte	0x6b
	.long	0xc65
	.uleb128 0x35
	.long	.LASF68
	.byte	0x5
	.byte	0x6d
	.long	0x30
	.uleb128 0x36
	.uleb128 0x35
	.long	.LASF97
	.byte	0x5
	.byte	0x6f
	.long	0x30
	.uleb128 0x35
	.long	.LASF98
	.byte	0x5
	.byte	0x6f
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF104
	.byte	0x5
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0xd51
	.uleb128 0x32
	.long	.LASF67
	.byte	0x5
	.byte	0x55
	.long	0xc65
	.uleb128 0x36
	.uleb128 0x35
	.long	.LASF97
	.byte	0x5
	.byte	0x57
	.long	0x30
	.uleb128 0x35
	.long	.LASF98
	.byte	0x5
	.byte	0x57
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x31
	.long	.LASF105
	.byte	0x6
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0xd6a
	.uleb128 0x37
	.string	"__s"
	.byte	0x6
	.byte	0x44
	.long	0xd6a
	.byte	0
	.uleb128 0x11
	.byte	0x2
	.long	0x3b
	.uleb128 0x38
	.long	.LASF121
	.byte	0x6
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x39
	.long	.LASF106
	.byte	0x2
	.word	0x1ec
	.byte	0x1
	.byte	0x3
	.long	0xdac
	.uleb128 0x3a
	.long	0xd9d
	.uleb128 0x3b
	.long	.LASF107
	.byte	0x2
	.word	0x1f0
	.long	0x30
	.byte	0
	.uleb128 0x36
	.uleb128 0x3b
	.long	.LASF107
	.byte	0x2
	.word	0x202
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF108
	.long	.LASF108
	.byte	0xe
	.byte	0xa5
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF109
	.long	.LASF109
	.byte	0xe
	.byte	0x9e
	.uleb128 0x3d
	.byte	0x1
	.byte	0x1
	.long	.LASF110
	.long	.LASF110
	.byte	0xf
	.word	0x123
	.uleb128 0x3d
	.byte	0x1
	.byte	0x1
	.long	.LASF111
	.long	.LASF111
	.byte	0xe
	.word	0x106
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF112
	.long	.LASF112
	.byte	0xe
	.byte	0xac
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF113
	.long	.LASF113
	.byte	0xa
	.byte	0xb2
	.uleb128 0x3c
	.byte	0x1
	.byte	0x1
	.long	.LASF114
	.long	.LASF114
	.byte	0xe
	.byte	0xe9
	.byte	0
	.section	.debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x2007
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
.LLST47:
	.long	.LVL82
	.long	.LVL83
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL83
	.long	.LFE95
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST48:
	.long	.LVL82
	.long	.LVL83
	.word	0x7
	.byte	0x88
	.sleb128 13
	.byte	0x94
	.byte	0x1
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	.LVL83
	.long	.LFE95
	.word	0x5
	.byte	0x88
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST41:
	.long	.LFB94
	.long	.LCFI3
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI3
	.long	.LCFI4
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI4
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI8
	.long	.LCFI9
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI9
	.long	.LFE94
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST42:
	.long	.LVL74
	.long	.LVL76
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST43:
	.long	.LVL75
	.long	.LVL76
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST44:
	.long	.LVL77
	.long	.LVL80
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST45:
	.long	.LVL78
	.long	.LVL79
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL79
	.long	.LVL80
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST46:
	.long	.LVL79
	.long	.LVL80
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1411
	.sleb128 0
	.long	0
	.long	0
.LLST38:
	.long	.LFB93
	.long	.LCFI0
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI0
	.long	.LCFI1
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI1
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI2
	.long	.LFE93
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	0
	.long	0
.LLST39:
	.long	.LVL63
	.long	.LVL65
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL65
	.long	.LVL70
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	.LVL70
	.long	.LVL71
	.word	0x6
	.byte	0x6e
	.byte	0x93
	.uleb128 0x1
	.byte	0x6f
	.byte	0x93
	.uleb128 0x1
	.long	.LVL71
	.long	.LFE93
	.word	0x6
	.byte	0x60
	.byte	0x93
	.uleb128 0x1
	.byte	0x61
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST40:
	.long	.LVL64
	.long	.LVL66
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL66
	.long	.LVL69
	.word	0x1
	.byte	0x6c
	.long	.LVL71
	.long	.LFE93
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x4
	.byte	0xa
	.word	0x2580
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL0
	.long	.LVL1
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST8:
	.long	.LVL30
	.long	.LVL35
	.word	0x1
	.byte	0x5f
	.long	.LVL52
	.long	.LVL60
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST17:
	.long	.LVL17
	.long	.LVL19
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	0
	.long	0
.LLST18:
	.long	.LVL18
	.long	.LVL19
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST19:
	.long	.LVL20
	.long	.LVL23
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST20:
	.long	.LVL21
	.long	.LVL22
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1885
	.sleb128 0
	.long	0
	.long	0
.LLST9:
	.long	.LVL15
	.long	.LVL16
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST10:
	.long	.LVL13
	.long	.LVL16
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST11:
	.long	.LVL14
	.long	.LVL15
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL15
	.long	.LFE89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL15
	.long	.LVL22
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2037
	.sleb128 0
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1885
	.sleb128 0
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2266
	.sleb128 0
	.long	.LVL38
	.long	.LVL44
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	.LVL44
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2602
	.sleb128 0
	.long	.LVL51
	.long	.LVL52
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2037
	.sleb128 0
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2150
	.sleb128 0
	.long	.LVL60
	.long	.LFE89
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	0
	.long	0
.LLST13:
	.long	.LVL53
	.long	.LVL57
	.word	0x1
	.byte	0x66
	.long	.LVL59
	.long	.LVL60
	.word	0x1
	.byte	0x66
	.long	0
	.long	0
.LLST14:
	.long	.LVL54
	.long	.LVL57
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST15:
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL56
	.long	.LVL59
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2150
	.sleb128 0
	.long	0
	.long	0
.LLST22:
	.long	.LVL26
	.long	.LVL27
	.word	0x1
	.byte	0x5f
	.long	0
	.long	0
.LLST23:
	.long	.LVL24
	.long	.LVL27
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST24:
	.long	.LVL25
	.long	.LVL26
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL26
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL52
	.long	.LFE89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST25:
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2266
	.sleb128 0
	.long	.LVL38
	.long	.LVL44
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	.LVL44
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2602
	.sleb128 0
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2150
	.sleb128 0
	.long	.LVL60
	.long	.LFE89
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	0
	.long	0
.LLST26:
	.long	.LVL28
	.long	.LVL29
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST27:
	.long	.LVL32
	.long	.LVL33
	.word	0x3
	.byte	0x8
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL34
	.long	.LVL35
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST29:
	.long	.LVL38
	.long	.LVL39
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST30:
	.long	.LVL36
	.long	.LVL39
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST31:
	.long	.LVL37
	.long	.LVL38
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL38
	.long	.LVL51
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL60
	.long	.LFE89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST32:
	.long	.LVL38
	.long	.LVL44
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	.LVL44
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2602
	.sleb128 0
	.long	.LVL60
	.long	.LFE89
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	0
	.long	0
.LLST33:
	.long	.LVL41
	.long	.LVL45
	.word	0x1
	.byte	0x69
	.long	.LVL60
	.long	.LFE89
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST34:
	.long	.LVL42
	.long	.LVL45
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST35:
	.long	.LVL43
	.long	.LVL44
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL44
	.long	.LVL48
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST36:
	.long	.LVL44
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2602
	.sleb128 0
	.long	0
	.long	0
.LLST37:
	.long	.LVL46
	.long	.LVL47
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST2:
	.long	.LVL4
	.long	.LVL7
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST3:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6
	.long	.LFE89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LVL6
	.long	.LVL10
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2816
	.sleb128 0
	.long	.LVL10
	.long	.LVL12
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2913
	.sleb128 0
	.long	.LVL15
	.long	.LVL22
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2037
	.sleb128 0
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1885
	.sleb128 0
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2266
	.sleb128 0
	.long	.LVL38
	.long	.LVL44
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	.LVL44
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2602
	.sleb128 0
	.long	.LVL51
	.long	.LVL52
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2037
	.sleb128 0
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2150
	.sleb128 0
	.long	.LVL60
	.long	.LFE89
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	0
	.long	0
.LLST5:
	.long	.LVL8
	.long	.LVL11
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL10
	.long	.LFE89
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST7:
	.long	.LVL10
	.long	.LVL12
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2913
	.sleb128 0
	.long	.LVL15
	.long	.LVL22
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2037
	.sleb128 0
	.long	.LVL22
	.long	.LVL23
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+1885
	.sleb128 0
	.long	.LVL26
	.long	.LVL30
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2266
	.sleb128 0
	.long	.LVL38
	.long	.LVL44
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	.LVL44
	.long	.LVL48
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2602
	.sleb128 0
	.long	.LVL51
	.long	.LVL52
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2037
	.sleb128 0
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2150
	.sleb128 0
	.long	.LVL60
	.long	.LFE89
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2489
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x4c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB130
	.long	.LBE130
	.long	.LBB201
	.long	.LBE201
	.long	0
	.long	0
	.long	.LBB131
	.long	.LBE131
	.long	.LBB151
	.long	.LBE151
	.long	0
	.long	0
	.long	.LBB142
	.long	.LBE142
	.long	.LBB198
	.long	.LBE198
	.long	.LBB199
	.long	.LBE199
	.long	0
	.long	0
	.long	.LBB152
	.long	.LBE152
	.long	.LBB197
	.long	.LBE197
	.long	0
	.long	0
	.long	.LBB153
	.long	.LBE153
	.long	.LBB162
	.long	.LBE162
	.long	.LBB163
	.long	.LBE163
	.long	0
	.long	0
	.long	.LBB185
	.long	.LBE185
	.long	.LBB200
	.long	.LBE200
	.long	0
	.long	0
	.long	.LBB209
	.long	.LBE209
	.long	.LBB217
	.long	.LBE217
	.long	0
	.long	0
	.long	.LFB90
	.long	.LFE90
	.long	.LFB89
	.long	.LFE89
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	.LFB93
	.long	.LFE93
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF20:
	.string	"wIndex"
.LASF100:
	.string	"RingBuffer_Remove"
.LASF76:
	.string	"VirtualSerial_CDC_Interface"
.LASF120:
	.string	"LEDs_Init"
.LASF121:
	.string	"__iCliRetVal"
.LASF78:
	.string	"__vector_23"
.LASF40:
	.string	"unget"
.LASF10:
	.string	"long long unsigned int"
.LASF101:
	.string	"RingBuffer_IsEmpty"
.LASF11:
	.string	"DEVICE_STATE_Unattached"
.LASF13:
	.string	"DEVICE_STATE_Default"
.LASF26:
	.string	"USB_CurrentlySelfPowered"
.LASF3:
	.string	"int16_t"
.LASF9:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF58:
	.string	"BaudRateBPS"
.LASF111:
	.string	"CDC_Device_ReceiveByte"
.LASF91:
	.string	"BaudRate"
.LASF117:
	.string	"/Users/test/Downloads/atmegaxxu2_hid/arduino-usbserial"
.LASF35:
	.string	"CDC_PARITY_None"
.LASF89:
	.string	"Serial_Init"
.LASF6:
	.string	"long int"
.LASF73:
	.string	"RxLEDPulse"
.LASF43:
	.string	"udata"
.LASF72:
	.string	"TxLEDPulse"
.LASF22:
	.string	"USB_Request_Header_t"
.LASF59:
	.string	"CharFormat"
.LASF19:
	.string	"wValue"
.LASF52:
	.string	"DataOUTEndpointDoubleBank"
.LASF4:
	.string	"uint16_t"
.LASF29:
	.string	"USB_Device_States_t"
.LASF47:
	.string	"DataINEndpointNumber"
.LASF94:
	.string	"LEDMask"
.LASF17:
	.string	"bmRequestType"
.LASF57:
	.string	"DeviceToHost"
.LASF98:
	.string	"__ToDo"
.LASF106:
	.string	"wdt_disable"
.LASF5:
	.string	"unsigned int"
.LASF71:
	.string	"USARTtoUSB_Buffer"
.LASF114:
	.string	"CDC_Device_SendByte"
.LASF39:
	.string	"CDC_PARITY_Space"
.LASF8:
	.string	"long unsigned int"
.LASF30:
	.string	"CDC_LineEncodingFormats_t"
.LASF38:
	.string	"CDC_PARITY_Mark"
.LASF97:
	.string	"sreg_save"
.LASF42:
	.string	"size"
.LASF31:
	.string	"CDC_LINEENCODING_OneStopBit"
.LASF107:
	.string	"temp_reg"
.LASF95:
	.string	"LEDs_TurnOnLEDs"
.LASF15:
	.string	"DEVICE_STATE_Configured"
.LASF24:
	.string	"USB_RemoteWakeupEnabled"
.LASF34:
	.string	"CDC_LineEncodingParity_t"
.LASF64:
	.string	"Config"
.LASF84:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF99:
	.string	"RingBuffer_Insert"
.LASF51:
	.string	"DataOUTEndpointSize"
.LASF16:
	.string	"DEVICE_STATE_Suspended"
.LASF46:
	.string	"ControlInterfaceNumber"
.LASF36:
	.string	"CDC_PARITY_Odd"
.LASF28:
	.string	"USB_ControlRequest"
.LASF102:
	.string	"RingBuffer_IsFull"
.LASF48:
	.string	"DataINEndpointSize"
.LASF108:
	.string	"CDC_Device_ProcessControlRequest"
.LASF50:
	.string	"DataOUTEndpointNumber"
.LASF45:
	.string	"__iob"
.LASF68:
	.string	"Count"
.LASF33:
	.string	"CDC_LINEENCODING_TwoStopBits"
.LASF110:
	.string	"USB_Init"
.LASF53:
	.string	"NotificationEndpointNumber"
.LASF14:
	.string	"DEVICE_STATE_Addressed"
.LASF12:
	.string	"DEVICE_STATE_Powered"
.LASF49:
	.string	"DataINEndpointDoubleBank"
.LASF85:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF80:
	.string	"ReceivedByte"
.LASF83:
	.string	"ConfigMask"
.LASF86:
	.string	"SetupHardware"
.LASF112:
	.string	"CDC_Device_USBTask"
.LASF87:
	.string	"BufferCount"
.LASF25:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF118:
	.string	"__file"
.LASF18:
	.string	"bRequest"
.LASF54:
	.string	"NotificationEndpointSize"
.LASF103:
	.string	"RingBuffer_GetCount"
.LASF93:
	.string	"LEDs_TurnOffLEDs"
.LASF7:
	.string	"uint32_t"
.LASF37:
	.string	"CDC_PARITY_Even"
.LASF113:
	.string	"USB_USBTask"
.LASF92:
	.string	"DoubleSpeed"
.LASF44:
	.string	"char"
.LASF109:
	.string	"CDC_Device_ConfigureEndpoints"
.LASF65:
	.string	"State"
.LASF79:
	.string	"CurrentDTRState"
.LASF70:
	.string	"USBtoUSART_Buffer"
.LASF32:
	.string	"CDC_LINEENCODING_OneAndAHalfStopBits"
.LASF77:
	.string	"EVENT_CDC_Device_ControLineStateChanged"
.LASF74:
	.string	"PingPongLEDPulse"
.LASF62:
	.string	"ControlLineStates"
.LASF75:
	.string	"PulseMSRemaining"
.LASF105:
	.string	"__iRestore"
.LASF104:
	.string	"RingBuffer_InitBuffer"
.LASF69:
	.string	"RingBuff_t"
.LASF116:
	.string	"Arduino-usbserial.c"
.LASF63:
	.string	"LineEncoding"
.LASF67:
	.string	"Buffer"
.LASF27:
	.string	"USB_IsInitialized"
.LASF61:
	.string	"DataBits"
.LASF23:
	.string	"USB_ConfigurationNumber"
.LASF2:
	.string	"uint8_t"
.LASF96:
	.string	"Data"
.LASF55:
	.string	"NotificationEndpointDoubleBank"
.LASF41:
	.string	"flags"
.LASF21:
	.string	"wLength"
.LASF82:
	.string	"CDCInterfaceInfo"
.LASF60:
	.string	"ParityType"
.LASF81:
	.string	"EVENT_CDC_Device_LineEncodingChanged"
.LASF115:
	.string	"GNU C99 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr35 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF90:
	.string	"DataByte"
.LASF119:
	.string	"main"
.LASF88:
	.string	"Serial_TxByte"
.LASF66:
	.string	"USB_ClassInfo_CDC_Device_t"
.LASF56:
	.string	"HostToDevice"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
