	.file	"Arduino-serialusbkeyboard.c"
__SP_H__ = 0x3e
__SP_L__ = 0x3d
__SREG__ = 0x3f
__tmp_reg__ = 0
__zero_reg__ = 1
	.text
.Ltext0:
	.cfi_sections	.debug_frame
	.section	.text.LEDs_SetAllLEDs,"ax",@progbits
	.type	LEDs_SetAllLEDs, @function
LEDs_SetAllLEDs:
.LFB79:
	.file 1 "./Board/LEDs.h"
	.loc 1 84 0
	.cfi_startproc
.LVL0:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 1 85 0
	in r25,0xb
	ori r25,lo8(48)
	com r24
.LVL1:
	and r25,r24
	out 0xb,r25
/* epilogue start */
	.loc 1 86 0
	ret
	.cfi_endproc
.LFE79:
	.size	LEDs_SetAllLEDs, .-LEDs_SetAllLEDs
	.section	.text.RingBuffer_Remove.constprop.3,"ax",@progbits
	.type	RingBuffer_Remove.constprop.3, @function
RingBuffer_Remove.constprop.3:
.LFB107:
	.file 2 "Lib/LightweightRingBuff.h"
	.loc 2 182 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL2:
	.loc 2 184 0
	lds r30,USARTtoUSB_Buffer+130
	lds r31,USARTtoUSB_Buffer+130+1
	ld r24,Z+
.LVL3:
	.loc 2 186 0
	ldi r25,hi8(USARTtoUSB_Buffer+128)
	cpi r30,lo8(USARTtoUSB_Buffer+128)
	cpc r31,r25
	breq .L3
	sts USARTtoUSB_Buffer+130+1,r31
	sts USARTtoUSB_Buffer+130,r30
.L4:
.LBB103:
	.loc 2 189 0
	in r18,__SREG__
.LVL4:
.LBB104:
.LBB105:
	.file 3 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h"
	.loc 3 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL5:
/* #NOAPP */
.LBE105:
.LBE104:
	.loc 2 191 0
	lds r25,USARTtoUSB_Buffer+132
	subi r25,lo8(-(-1))
	sts USARTtoUSB_Buffer+132,r25
.LVL6:
.LBB106:
.LBB107:
	.loc 3 70 0
	out __SREG__,r18
	.loc 3 71 0
.LVL7:
/* epilogue start */
.LBE107:
.LBE106:
.LBE103:
	.loc 2 195 0
	ret
.LVL8:
.L3:
	.loc 2 187 0
	ldi r18,lo8(USARTtoUSB_Buffer)
	ldi r19,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+130+1,r19
	sts USARTtoUSB_Buffer+130,r18
	rjmp .L4
	.cfi_endproc
.LFE107:
	.size	RingBuffer_Remove.constprop.3, .-RingBuffer_Remove.constprop.3
	.section	.text.SetupHardware,"ax",@progbits
.global	SetupHardware
	.type	SetupHardware, @function
SetupHardware:
.LFB89:
	.file 4 "Arduino-serialusbkeyboard.c"
	.loc 4 189 0
	.cfi_startproc
	push r28
.LCFI0:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI1:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	.loc 4 191 0
	in r24,0x34
	andi r24,lo8(-9)
	out 0x34,r24
.LBB114:
.LBB115:
	.file 5 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/avr/wdt.h"
	.loc 5 515 0
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
.LVL9:
/* #NOAPP */
.LBE115:
.LBE114:
.LBB116:
.LBB117:
	.file 6 "../../LUFA/Drivers/Peripheral/Serial.h"
	.loc 6 102 0
	ldi r24,lo8(103)
	ldi r25,0
	sts 204+1,r25
	sts 204,r24
	.loc 6 104 0
	ldi r24,lo8(6)
	sts 202,r24
	.loc 6 105 0
	sts 200,__zero_reg__
	.loc 6 106 0
	ldi r28,lo8(-55)
	ldi r29,0
	ldi r24,lo8(24)
	st Y,r24
	.loc 6 108 0
	sbi 0xa,3
	.loc 6 109 0
	sbi 0xb,2
.LVL10:
.LBE117:
.LBE116:
.LBB118:
.LBB119:
	.loc 1 69 0
	in r24,0xa
	ori r24,lo8(48)
	out 0xa,r24
	.loc 1 70 0
	in r24,0xb
	ori r24,lo8(48)
	out 0xb,r24
.LBE119:
.LBE118:
	.loc 4 200 0
	call USB_Init
.LVL11:
	.loc 4 206 0
	sbi 0xb,7
	.loc 4 207 0
	sbi 0xa,7
	.loc 4 212 0
	st Y,__zero_reg__
	.loc 4 214 0
	ldi r24,lo8(-112)
	st Y,r24
/* epilogue start */
	.loc 4 216 0
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE89:
	.size	SetupHardware, .-SetupHardware
	.section	.text.EVENT_USB_Device_Connect,"ax",@progbits
.global	EVENT_USB_Device_Connect
	.type	EVENT_USB_Device_Connect, @function
EVENT_USB_Device_Connect:
.LFB90:
	.loc 4 222 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 224 0
	ldi r24,lo8(16)
	call LEDs_SetAllLEDs
.LVL12:
	.loc 4 227 0
	ldi r24,lo8(1)
	sts UsingReportProtocol,r24
/* epilogue start */
	.loc 4 228 0
	ret
	.cfi_endproc
.LFE90:
	.size	EVENT_USB_Device_Connect, .-EVENT_USB_Device_Connect
	.section	.text.EVENT_USB_Device_Disconnect,"ax",@progbits
.global	EVENT_USB_Device_Disconnect
	.type	EVENT_USB_Device_Disconnect, @function
EVENT_USB_Device_Disconnect:
.LFB91:
	.loc 4 234 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 236 0
	ldi r24,lo8(32)
	jmp LEDs_SetAllLEDs
.LVL13:
	.cfi_endproc
.LFE91:
	.size	EVENT_USB_Device_Disconnect, .-EVENT_USB_Device_Disconnect
	.section	.text.EVENT_USB_Device_ConfigurationChanged,"ax",@progbits
.global	EVENT_USB_Device_ConfigurationChanged
	.type	EVENT_USB_Device_ConfigurationChanged, @function
EVENT_USB_Device_ConfigurationChanged:
.LFB92:
	.loc 4 241 0
	.cfi_startproc
	push r28
.LCFI2:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
/* prologue: function */
/* frame size = 0 */
/* stack size = 1 */
.L__stack_usage = 1
.LVL14:
.LBB130:
.LBB131:
	.file 7 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Endpoint.h"
	.loc 7 1335 0
	ldi r20,lo8(2)
	ldi r22,lo8(-63)
	ldi r24,lo8(1)
	call Endpoint_ConfigureEndpoint_Prv
.LVL15:
	mov r28,r24
.LVL16:
.LBE131:
.LBE130:
.LBB132:
.LBB133:
	ldi r20,lo8(2)
	ldi r22,lo8(-64)
	ldi r24,lo8(2)
	call Endpoint_ConfigureEndpoint_Prv
.LVL17:
.LBE133:
.LBE132:
.LBB134:
.LBB135:
	.file 8 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/Device.h"
	.loc 8 150 0
	lds r25,226
	ori r25,lo8(4)
	sts 226,r25
.LBE135:
.LBE134:
	.loc 4 257 0
	tst r24
	breq .L12
	ldi r24,lo8(16)
.LVL18:
	cpse r28,__zero_reg__
	rjmp .L9
.L12:
	ldi r24,lo8(32)
.L9:
/* epilogue start */
	.loc 4 258 0 discriminator 4
	pop r28
	.loc 4 257 0 discriminator 4
	jmp LEDs_SetAllLEDs
.LVL19:
	.cfi_endproc
.LFE92:
	.size	EVENT_USB_Device_ConfigurationChanged, .-EVENT_USB_Device_ConfigurationChanged
	.section	.text.EVENT_USB_Device_StartOfFrame,"ax",@progbits
.global	EVENT_USB_Device_StartOfFrame
	.type	EVENT_USB_Device_StartOfFrame, @function
EVENT_USB_Device_StartOfFrame:
.LFB94:
	.loc 4 361 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 363 0
	lds r24,IdleMSRemaining
	lds r25,IdleMSRemaining+1
	sbiw r24,0
	breq .L16
	.loc 4 364 0
	sbiw r24,1
	sts IdleMSRemaining+1,r25
	sts IdleMSRemaining,r24
.L16:
/* epilogue start */
	.loc 4 365 0
	ret
	.cfi_endproc
.LFE94:
	.size	EVENT_USB_Device_StartOfFrame, .-EVENT_USB_Device_StartOfFrame
	.section	.text.CreateKeyboardReport,"ax",@progbits
.global	CreateKeyboardReport
	.type	CreateKeyboardReport, @function
CreateKeyboardReport:
.LFB95:
	.loc 4 372 0
	.cfi_startproc
.LVL20:
	push r28
.LCFI3:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI4:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
/* prologue: function */
/* frame size = 0 */
/* stack size = 2 */
.L__stack_usage = 2
	movw r30,r24
	.loc 4 377 0
	ldi r24,lo8(8)
.LVL21:
	movw r26,r30
	0:
	st X+,__zero_reg__
	dec r24
	brne 0b
	.loc 4 381 0
	st Z,__zero_reg__
	.loc 4 382 0
	lds r24,scancode_buffer+224
	cpi r24,lo8(85)
	brne .L22
	.loc 4 383 0
	ldi r24,lo8(1)
	st Z,r24
.L22:
	.loc 4 384 0
	lds r24,scancode_buffer+225
	cpi r24,lo8(85)
	brne .L23
	.loc 4 385 0
	ld r24,Z
	ori r24,lo8(2)
	st Z,r24
.L23:
	.loc 4 386 0
	lds r24,scancode_buffer+226
	cpi r24,lo8(85)
	brne .L24
	.loc 4 387 0
	ld r24,Z
	ori r24,lo8(4)
	st Z,r24
.L24:
	.loc 4 388 0
	lds r24,scancode_buffer+227
	cpi r24,lo8(85)
	brne .L25
	.loc 4 389 0
	ld r24,Z
	ori r24,lo8(8)
	st Z,r24
.L25:
	.loc 4 390 0
	lds r24,scancode_buffer+228
	cpi r24,lo8(85)
	brne .L26
	.loc 4 391 0
	ld r24,Z
	ori r24,lo8(16)
	st Z,r24
.L26:
	.loc 4 392 0
	lds r24,scancode_buffer+229
	cpi r24,lo8(85)
	brne .L27
	.loc 4 393 0
	ld r24,Z
	ori r24,lo8(32)
	st Z,r24
.L27:
	.loc 4 394 0
	lds r24,scancode_buffer+230
	cpi r24,lo8(85)
	brne .L28
	.loc 4 395 0
	ld r24,Z
	ori r24,lo8(64)
	st Z,r24
.L28:
	.loc 4 396 0
	lds r24,scancode_buffer+231
	cpi r24,lo8(85)
	brne .L29
	.loc 4 397 0
	ld r24,Z
	ori r24,lo8(-128)
	st Z,r24
.L29:
	ldi r26,lo8(scancode_buffer)
	ldi r27,hi8(scancode_buffer)
.LVL22:
	.loc 4 372 0 discriminator 3
	ldi r24,0
	ldi r25,0
.LVL23:
.L32:
.LBB136:
	.loc 4 400 0
	ld r18,X+
	cpi r18,lo8(85)
	brne .L30
.LVL24:
	.loc 4 401 0
	movw r28,r30
	add r28,r25
	adc r29,__zero_reg__
	std Y+2,r24
	subi r25,lo8(-(1))
.LVL25:
.L30:
	.loc 4 399 0 discriminator 2
	subi r24,lo8(-(1))
.LVL26:
	cpi r25,lo8(6)
	brne .L31
.L21:
/* epilogue start */
.LBE136:
	.loc 4 404 0
	pop r29
	pop r28
	ret
.L31:
.LBB137:
	.loc 4 399 0 discriminator 3
	cpi r24,lo8(-128)
	brne .L32
	rjmp .L21
.LBE137:
	.cfi_endproc
.LFE95:
	.size	CreateKeyboardReport, .-CreateKeyboardReport
	.section	.text.ProcessLEDReport,"ax",@progbits
.global	ProcessLEDReport
	.type	ProcessLEDReport, @function
ProcessLEDReport:
.LFB96:
	.loc 4 411 0
	.cfi_startproc
.LVL27:
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 414 0
	sbrs r24,0
	rjmp .L37
	.loc 4 415 0
	ldi r24,lo8(48)
.LVL28:
.L36:
	.loc 4 424 0
	jmp LEDs_SetAllLEDs
.LVL29:
.L37:
	.loc 4 412 0
	ldi r24,lo8(16)
.LVL30:
	rjmp .L36
	.cfi_endproc
.LFE96:
	.size	ProcessLEDReport, .-ProcessLEDReport
	.section	.text.EVENT_USB_Device_UnhandledControlRequest,"ax",@progbits
.global	EVENT_USB_Device_UnhandledControlRequest
	.type	EVENT_USB_Device_UnhandledControlRequest, @function
EVENT_USB_Device_UnhandledControlRequest:
.LFB93:
	.loc 4 262 0
	.cfi_startproc
	push r17
.LCFI5:
	.cfi_def_cfa_offset 3
	.cfi_offset 17, -2
	push r28
.LCFI6:
	.cfi_def_cfa_offset 4
	.cfi_offset 28, -3
	push r29
.LCFI7:
	.cfi_def_cfa_offset 5
	.cfi_offset 29, -4
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI8:
	.cfi_def_cfa_register 28
	sbiw r28,8
.LCFI9:
	.cfi_def_cfa_offset 13
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 11 */
.L__stack_usage = 11
	.loc 4 267 0
	lds r24,USB_ControlRequest+1
	cpi r24,lo8(3)
	brne .+2
	rjmp .L40
	brsh .L41
	cpi r24,lo8(1)
	breq .L42
	cpi r24,lo8(2)
	brne .+2
	rjmp .L43
.L38:
/* epilogue start */
	.loc 4 357 0
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	pop r17
	ret
.L41:
	.loc 4 267 0
	cpi r24,lo8(10)
	brne .+2
	rjmp .L44
	cpi r24,lo8(11)
	brne .+2
	rjmp .L45
	cpi r24,lo8(9)
	brne .L38
	.loc 4 286 0
	lds r24,USB_ControlRequest
	cpi r24,lo8(33)
	brne .L38
.LBB138:
.LBB139:
.LBB140:
	.loc 7 442 0
	lds r24,232
	andi r24,lo8(-9)
	sts 232,r24
.L49:
.LBE140:
.LBE139:
.LBB141:
.LBB142:
	.loc 7 417 0
	lds r24,232
.LBE142:
.LBE141:
	.loc 4 291 0
	sbrs r24,2
	rjmp .L50
.LBB143:
.LBB144:
	.loc 7 550 0
	lds r17,241
.LBE144:
.LBE143:
.LBB145:
.LBB146:
	.loc 7 469 0
	lds r24,232
	andi r24,lo8(123)
	sts 232,r24
.LBE146:
.LBE145:
	.loc 4 301 0
	call Endpoint_ClearStatusStage
.LVL31:
	.loc 4 304 0
	mov r24,r17
	call ProcessLEDReport
.LVL32:
	rjmp .L38
.L42:
.LBE138:
	.loc 4 270 0
	lds r24,USB_ControlRequest
	cpi r24,lo8(-95)
	brne .L38
.LBB147:
	.loc 4 275 0
	movw r24,r28
	adiw r24,1
	call CreateKeyboardReport
.LVL33:
.LBB148:
.LBB149:
	.loc 7 442 0
	lds r24,232
	andi r24,lo8(-9)
	sts 232,r24
.LBE149:
.LBE148:
	.loc 4 280 0
	ldi r22,lo8(8)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call Endpoint_Write_Control_Stream_LE
.LVL34:
.LBB150:
.LBB151:
	.loc 7 469 0
	lds r24,232
	andi r24,lo8(123)
	sts 232,r24
	rjmp .L38
.L50:
.LBE151:
.LBE150:
.LBE147:
.LBB152:
	.loc 4 293 0
	in r24,0x1e
	cpse r24,__zero_reg__
	rjmp .L49
	rjmp .L38
.L40:
.LBE152:
	.loc 4 309 0
	lds r24,USB_ControlRequest
	cpi r24,lo8(-95)
	breq .+2
	rjmp .L38
.LBB153:
.LBB154:
	.loc 7 442 0
	lds r24,232
	andi r24,lo8(-9)
	sts 232,r24
.LBE154:
.LBE153:
	.loc 4 314 0
	lds r24,UsingReportProtocol
.LVL35:
.L55:
.LBB155:
.LBB156:
	.loc 7 562 0
	sts 241,r24
.LVL36:
.LBE156:
.LBE155:
.LBB157:
.LBB158:
	.loc 7 454 0
	lds r24,232
	andi r24,lo8(126)
	sts 232,r24
.LBE158:
.LBE157:
	.loc 4 352 0
	call Endpoint_ClearStatusStage
.LVL37:
	rjmp .L38
.L45:
	.loc 4 322 0
	lds r24,USB_ControlRequest
	cpi r24,lo8(33)
	breq .+2
	rjmp .L38
.LBB159:
.LBB160:
	.loc 7 442 0
	lds r24,232
	andi r24,lo8(-9)
	sts 232,r24
.LBE160:
.LBE159:
	.loc 4 325 0
	call Endpoint_ClearStatusStage
.LVL38:
	.loc 4 328 0
	ldi r24,lo8(1)
	lds r18,USB_ControlRequest+2
	lds r19,USB_ControlRequest+2+1
	or r18,r19
	brne .L51
	ldi r24,0
.L51:
	sts UsingReportProtocol,r24
	rjmp .L38
.L44:
	.loc 4 333 0
	lds r24,USB_ControlRequest
	cpi r24,lo8(33)
	breq .+2
	rjmp .L38
.LBB161:
.LBB162:
	.loc 7 442 0
	lds r24,232
	andi r24,lo8(-9)
	sts 232,r24
.LBE162:
.LBE161:
	.loc 4 336 0
	call Endpoint_ClearStatusStage
.LVL39:
	.loc 4 339 0
	lds r24,USB_ControlRequest+2
	lds r25,USB_ControlRequest+2+1
	ldi r19,6
	1:
	lsr r25
	ror r24
	dec r19
	brne 1b
	andi r24,252
	andi r25,3
	sts IdleCount+1,r25
	sts IdleCount,r24
	rjmp .L38
.L43:
	.loc 4 344 0
	lds r24,USB_ControlRequest
	cpi r24,lo8(-95)
	breq .+2
	rjmp .L38
.LBB163:
.LBB164:
	.loc 7 442 0
	lds r24,232
	andi r24,lo8(-9)
	sts 232,r24
.LBE164:
.LBE163:
	.loc 4 349 0
	lds r24,IdleCount
	lds r25,IdleCount+1
	lsr r25
	ror r24
	lsr r25
	ror r24
	rjmp .L55
	.cfi_endproc
.LFE93:
	.size	EVENT_USB_Device_UnhandledControlRequest, .-EVENT_USB_Device_UnhandledControlRequest
	.section	.text.SendNextReport,"ax",@progbits
.global	SendNextReport
	.type	SendNextReport, @function
SendNextReport:
.LFB97:
	.loc 4 429 0
	.cfi_startproc
	push r28
.LCFI10:
	.cfi_def_cfa_offset 3
	.cfi_offset 28, -2
	push r29
.LCFI11:
	.cfi_def_cfa_offset 4
	.cfi_offset 29, -3
	in r28,__SP_L__
	in r29,__SP_H__
.LCFI12:
	.cfi_def_cfa_register 28
	sbiw r28,8
.LCFI13:
	.cfi_def_cfa_offset 12
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
/* prologue: function */
/* frame size = 8 */
/* stack size = 10 */
.L__stack_usage = 10
.LVL40:
	.loc 4 435 0
	movw r24,r28
	adiw r24,1
	call CreateKeyboardReport
.LVL41:
	.loc 4 438 0
	ldi r20,lo8(8)
	ldi r21,0
	movw r22,r28
	subi r22,-1
	sbci r23,-1
	ldi r24,lo8(PrevKeyboardReportData.2820)
	ldi r25,hi8(PrevKeyboardReportData.2820)
	call memcmp
.LVL42:
	ldi r18,lo8(1)
	or r24,r25
	brne .L57
	ldi r18,0
.L57:
.LVL43:
	.loc 4 441 0
	lds r24,IdleCount
	lds r25,IdleCount+1
	sbiw r24,0
	breq .L58
	.loc 4 441 0 is_stmt 0 discriminator 1
	lds r20,IdleMSRemaining
	lds r21,IdleMSRemaining+1
	or r20,r21
	brne .L58
	.loc 4 444 0 is_stmt 1
	sts IdleMSRemaining+1,r25
	sts IdleMSRemaining,r24
.LVL44:
	.loc 4 447 0
	ldi r18,lo8(1)
.LVL45:
.L58:
.LBB165:
.LBB166:
	.loc 7 299 0
	ldi r24,lo8(1)
	sts 233,r24
.LVL46:
.LBE166:
.LBE165:
.LBB167:
.LBB168:
	.loc 7 358 0
	lds r24,232
.LBE168:
.LBE167:
	.loc 4 454 0
	sbrs r24,5
	rjmp .L56
	.loc 4 454 0 is_stmt 0 discriminator 1
	tst r18
	breq .L56
	.loc 4 457 0 is_stmt 1
	ldi r24,lo8(8)
	movw r30,r28
	adiw r30,1
	ldi r26,lo8(PrevKeyboardReportData.2820)
	ldi r27,hi8(PrevKeyboardReportData.2820)
	0:
	ld r0,Z+
	st X+,r0
	dec r24
	brne 0b
	.loc 4 460 0
	ldi r21,0
	ldi r20,0
	ldi r22,lo8(8)
	ldi r23,0
	movw r24,r28
	adiw r24,1
	call Endpoint_Write_Stream_LE
.LVL47:
.LBB169:
.LBB170:
	.loc 7 454 0
	lds r24,232
	andi r24,lo8(126)
	sts 232,r24
.L56:
/* epilogue start */
.LBE170:
.LBE169:
	.loc 4 465 0
	adiw r28,8
	in __tmp_reg__,__SREG__
	cli
	out __SP_H__,r29
	out __SREG__,__tmp_reg__
	out __SP_L__,r28
	pop r29
	pop r28
	ret
	.cfi_endproc
.LFE97:
	.size	SendNextReport, .-SendNextReport
	.section	.text.ReceiveNextReport,"ax",@progbits
.global	ReceiveNextReport
	.type	ReceiveNextReport, @function
ReceiveNextReport:
.LFB98:
	.loc 4 469 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
.LVL48:
.LBB171:
.LBB172:
	.loc 7 299 0
	ldi r24,lo8(2)
	sts 233,r24
.LVL49:
.LBE172:
.LBE171:
.LBB173:
.LBB174:
	.loc 7 417 0
	lds r24,232
.LBE174:
.LBE173:
	.loc 4 474 0
	sbrs r24,2
	rjmp .L69
.LBB175:
.LBB176:
	.loc 7 358 0
	lds r24,232
.LBE176:
.LBE175:
	.loc 4 477 0
	sbrs r24,5
	rjmp .L71
.LBB177:
.LBB178:
.LBB179:
	.loc 7 550 0
	lds r24,241
.LBE179:
.LBE178:
	.loc 4 483 0
	call ProcessLEDReport
.LVL50:
.L71:
.LBE177:
.LBB180:
.LBB181:
	.loc 7 469 0
	lds r24,232
	andi r24,lo8(123)
	sts 232,r24
.L69:
/* epilogue start */
.LBE181:
.LBE180:
	.loc 4 489 0
	ret
	.cfi_endproc
.LFE98:
	.size	ReceiveNextReport, .-ReceiveNextReport
	.section	.text.HID_Task,"ax",@progbits
.global	HID_Task
	.type	HID_Task, @function
HID_Task:
.LFB99:
	.loc 4 493 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 495 0
	in r24,0x1e
	cpi r24,lo8(4)
	brne .L78
	.loc 4 499 0
	call SendNextReport
.LVL51:
	.loc 4 502 0
	jmp ReceiveNextReport
.LVL52:
.L78:
/* epilogue start */
	.loc 4 503 0
	ret
	.cfi_endproc
.LFE99:
	.size	HID_Task, .-HID_Task
	.section	.text.startup.main,"ax",@progbits
.global	main
	.type	main, @function
main:
.LFB88:
	.loc 4 101 0
	.cfi_startproc
/* prologue: function */
/* frame size = 0 */
/* stack size = 0 */
.L__stack_usage = 0
	.loc 4 102 0
	call SetupHardware
.LVL53:
.LBB197:
.LBB198:
	.loc 2 87 0
	in r18,__SREG__
.LVL54:
.LBB199:
.LBB200:
	.loc 3 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL55:
/* #NOAPP */
.LBE200:
.LBE199:
	.loc 2 89 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
	.loc 2 90 0
	sts USARTtoUSB_Buffer+130+1,r25
	sts USARTtoUSB_Buffer+130,r24
.LVL56:
.LBB201:
.LBB202:
	.loc 3 70 0
	out __SREG__,r18
	.loc 3 71 0
.LVL57:
.LBE202:
.LBE201:
.LBE198:
.LBE197:
	.loc 4 107 0
	ldi r24,lo8(32)
	call LEDs_SetAllLEDs
.LVL58:
	.loc 4 108 0
/* #APP */
 ;  108 "Arduino-serialusbkeyboard.c" 1
	sei
 ;  0 "" 2
.LVL59:
/* #NOAPP */
.L87:
.LBB203:
.LBB204:
.LBB205:
.LBB206:
	.loc 2 111 0
	in r24,__SREG__
.LVL60:
.LBB207:
.LBB208:
	.loc 3 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL61:
/* #NOAPP */
.LBE208:
.LBE207:
	.loc 2 113 0
	lds r28,USARTtoUSB_Buffer+132
.LVL62:
.LBB209:
.LBB210:
	.loc 3 70 0
	out __SREG__,r24
	.loc 3 71 0
.LVL63:
.LBE210:
.LBE209:
.LBE206:
.LBE205:
.LBE204:
	.loc 4 161 0
	cpi r28,lo8(97)
	brlo .L85
.L81:
.LVL64:
	.loc 4 162 0
.LVL65:
	subi r28,1
	brcc .L83
.L85:
	.loc 4 165 0
	cpi r28,lo8(3)
	brsh .L86
	.loc 4 181 0
	call HID_Task
.LVL66:
	.loc 4 182 0
	call USB_USBTask
.LVL67:
.LBE203:
	.loc 4 111 0
	rjmp .L87
.L83:
.LBB211:
	.loc 4 163 0
	call RingBuffer_Remove.constprop.3
.LVL68:
	sts header,r24
	rjmp .L81
.L86:
	.loc 4 166 0
	ldi r29,lo8(-1)
	add r29,r28
.LVL69:
	.loc 4 167 0
	call RingBuffer_Remove.constprop.3
.LVL70:
	sts header,r24
	.loc 4 168 0
	cpse r24,__zero_reg__
	rjmp .L88
.LVL71:
	.loc 4 170 0
	call RingBuffer_Remove.constprop.3
.LVL72:
	sts scancode,r24
	.loc 4 172 0
	subi r28,lo8(-(-3))
.LVL73:
	.loc 4 173 0
	call RingBuffer_Remove.constprop.3
.LVL74:
	sts press_release,r24
	.loc 4 175 0
	lds r30,scancode
	ldi r31,0
	subi r30,lo8(-(scancode_buffer))
	sbci r31,hi8(-(scancode_buffer))
	st Z,r24
	rjmp .L85
.LVL75:
.L88:
	.loc 4 166 0
	mov r28,r29
	rjmp .L85
.LBE211:
	.cfi_endproc
.LFE88:
	.size	main, .-main
	.section	.text.__vector_23,"ax",@progbits
.global	__vector_23
	.type	__vector_23, @function
__vector_23:
.LFB100:
	.loc 4 559 0
	.cfi_startproc
	push r1
.LCFI14:
	.cfi_def_cfa_offset 3
	.cfi_offset 1, -2
	push r0
.LCFI15:
	.cfi_def_cfa_offset 4
	.cfi_offset 0, -3
	in r0,__SREG__
	push r0
	clr __zero_reg__
	push r18
.LCFI16:
	.cfi_def_cfa_offset 5
	.cfi_offset 18, -4
	push r24
.LCFI17:
	.cfi_def_cfa_offset 6
	.cfi_offset 24, -5
	push r25
.LCFI18:
	.cfi_def_cfa_offset 7
	.cfi_offset 25, -6
	push r30
.LCFI19:
	.cfi_def_cfa_offset 8
	.cfi_offset 30, -7
	push r31
.LCFI20:
	.cfi_def_cfa_offset 9
	.cfi_offset 31, -8
/* prologue: Signal */
/* frame size = 0 */
/* stack size = 8 */
.L__stack_usage = 8
	.loc 4 560 0
	lds r24,206
.LVL76:
	.loc 4 562 0
	in r25,0x1e
	cpi r25,lo8(4)
	brne .L90
.LVL77:
.LBB219:
.LBB220:
	.loc 2 161 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	st Z,r24
	.loc 2 163 0
	lds r30,USARTtoUSB_Buffer+128
	lds r31,USARTtoUSB_Buffer+128+1
	movw r24,r30
.LVL78:
	adiw r24,1
	ldi r18,hi8(USARTtoUSB_Buffer+128)
	cpi r24,lo8(USARTtoUSB_Buffer+128)
	cpc r25,r18
	breq .L92
	sts USARTtoUSB_Buffer+128+1,r25
	sts USARTtoUSB_Buffer+128,r24
.L93:
.LBB221:
	.loc 2 166 0
	in r25,__SREG__
.LVL79:
.LBB222:
.LBB223:
	.loc 3 50 0
/* #APP */
 ;  50 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/util/atomic.h" 1
	cli
 ;  0 "" 2
.LVL80:
/* #NOAPP */
.LBE223:
.LBE222:
	.loc 2 168 0
	lds r24,USARTtoUSB_Buffer+132
	subi r24,lo8(-(1))
	sts USARTtoUSB_Buffer+132,r24
.LVL81:
.LBB224:
.LBB225:
	.loc 3 70 0
	out __SREG__,r25
	.loc 3 71 0
.LVL82:
.L90:
/* epilogue start */
.LBE225:
.LBE224:
.LBE221:
.LBE220:
.LBE219:
	.loc 4 564 0
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
.LVL83:
.L92:
.LBB227:
.LBB226:
	.loc 2 164 0
	ldi r24,lo8(USARTtoUSB_Buffer)
	ldi r25,hi8(USARTtoUSB_Buffer)
	std Z+2,r25
	std Z+1,r24
	rjmp .L93
.LBE226:
.LBE227:
	.cfi_endproc
.LFE100:
	.size	__vector_23, .-__vector_23
	.local	PrevKeyboardReportData.2820
	.comm	PrevKeyboardReportData.2820,8,1
	.comm	press_release,1,1
	.comm	scancode,1,1
	.comm	header,1,1
.global	scancode_buffer
	.section .bss
	.type	scancode_buffer, @object
	.size	scancode_buffer, 256
scancode_buffer:
	.zero	256
.global	IdleMSRemaining
	.type	IdleMSRemaining, @object
	.size	IdleMSRemaining, 2
IdleMSRemaining:
	.zero	2
.global	IdleCount
	.data
	.type	IdleCount, @object
	.size	IdleCount, 2
IdleCount:
	.word	500
.global	UsingReportProtocol
	.type	UsingReportProtocol, @object
	.size	UsingReportProtocol, 1
UsingReportProtocol:
	.byte	1
	.comm	USARTtoUSB_Buffer,133,1
	.text
.Letext0:
	.file 9 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/stdint.h"
	.file 10 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/../HighLevel/StdRequestType.h"
	.file 11 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/../HighLevel/DeviceStandardReq.h"
	.file 12 "../../LUFA/Drivers/USB/HighLevel/USBTask.h"
	.file 13 "Arduino-serialusbkeyboard.h"
	.file 14 "/Applications/Arduino.app/Contents/Java/hardware/tools/avr/avr/include/string.h"
	.file 15 "../../LUFA/Drivers/USB/HighLevel/../LowLevel/USBController.h"
	.section	.debug_info,"",@progbits
.Ldebug_info0:
	.long	0xe07
	.word	0x2
	.long	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.long	.LASF108
	.byte	0xc
	.long	.LASF109
	.long	.LASF110
	.long	.Ldebug_ranges0+0x60
	.long	0
	.long	0
	.long	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.long	.LASF0
	.uleb128 0x3
	.long	.LASF2
	.byte	0x9
	.byte	0x7e
	.long	0x40
	.uleb128 0x4
	.long	0x30
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.long	.LASF1
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.long	.LASF3
	.byte	0x9
	.byte	0x80
	.long	0x5e
	.uleb128 0x4
	.long	0x4e
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.long	.LASF4
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.long	.LASF5
	.uleb128 0x3
	.long	.LASF6
	.byte	0x9
	.byte	0x82
	.long	0x7c
	.uleb128 0x4
	.long	0x6c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.long	.LASF7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.long	.LASF8
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.long	.LASF9
	.uleb128 0x6
	.long	.LASF111
	.byte	0x7
	.byte	0x1
	.long	0x40
	.byte	0x8
	.byte	0x72
	.long	0xc7
	.uleb128 0x7
	.long	.LASF10
	.byte	0
	.uleb128 0x7
	.long	.LASF11
	.byte	0x1
	.uleb128 0x7
	.long	.LASF12
	.byte	0x2
	.uleb128 0x7
	.long	.LASF13
	.byte	0x3
	.uleb128 0x7
	.long	.LASF14
	.byte	0x4
	.uleb128 0x7
	.long	.LASF15
	.byte	0x5
	.byte	0
	.uleb128 0x8
	.byte	0x8
	.byte	0xa
	.byte	0xa2
	.long	0x116
	.uleb128 0x9
	.long	.LASF16
	.byte	0xa
	.byte	0xa4
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF17
	.byte	0xa
	.byte	0xa5
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF18
	.byte	0xa
	.byte	0xa6
	.long	0x4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.long	.LASF19
	.byte	0xa
	.byte	0xa7
	.long	0x4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.long	.LASF20
	.byte	0xa
	.byte	0xa8
	.long	0x4e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.long	.LASF21
	.byte	0xa
	.byte	0xa9
	.long	0xc7
	.uleb128 0xa
	.long	.LASF22
	.byte	0xb
	.byte	0x64
	.long	0x30
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF23
	.byte	0xb
	.byte	0x75
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0x2
	.byte	0x1
	.byte	0x2
	.long	.LASF24
	.uleb128 0xb
	.long	0x13b
	.uleb128 0x4
	.long	0x13b
	.uleb128 0xa
	.long	.LASF25
	.byte	0xb
	.byte	0x7f
	.long	0x13b
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF26
	.byte	0xc
	.byte	0x53
	.long	0x142
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.long	.LASF27
	.byte	0xc
	.byte	0x5b
	.long	0x116
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x85
	.byte	0x2
	.byte	0x46
	.long	0x1b6
	.uleb128 0x9
	.long	.LASF28
	.byte	0x2
	.byte	0x48
	.long	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"In"
	.byte	0x2
	.byte	0x49
	.long	0x1c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xc
	.string	"Out"
	.byte	0x2
	.byte	0x4a
	.long	0x1c6
	.byte	0x3
	.byte	0x23
	.uleb128 0x82
	.uleb128 0x9
	.long	.LASF29
	.byte	0x2
	.byte	0x4b
	.long	0x30
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.byte	0
	.uleb128 0xd
	.long	0x30
	.long	0x1c6
	.uleb128 0xe
	.long	0x5e
	.byte	0x7f
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x30
	.uleb128 0x3
	.long	.LASF30
	.byte	0x2
	.byte	0x4c
	.long	0x173
	.uleb128 0x8
	.byte	0x8
	.byte	0xd
	.byte	0x8e
	.long	0x20a
	.uleb128 0x9
	.long	.LASF31
	.byte	0xd
	.byte	0x90
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.long	.LASF32
	.byte	0xd
	.byte	0x91
	.long	0x30
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.long	.LASF33
	.byte	0xd
	.byte	0x92
	.long	0x20a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xd
	.long	0x30
	.long	0x21a
	.uleb128 0xe
	.long	0x5e
	.byte	0x5
	.byte	0
	.uleb128 0x3
	.long	.LASF34
	.byte	0xd
	.byte	0x93
	.long	0x1d7
	.uleb128 0x10
	.long	.LASF35
	.byte	0x4
	.byte	0x2b
	.long	0x1cc
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.uleb128 0x10
	.long	.LASF36
	.byte	0x4
	.byte	0x50
	.long	0x13b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	UsingReportProtocol
	.uleb128 0x10
	.long	.LASF37
	.byte	0x4
	.byte	0x55
	.long	0x4e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	IdleCount
	.uleb128 0x10
	.long	.LASF38
	.byte	0x4
	.byte	0x5b
	.long	0x4e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	IdleMSRemaining
	.uleb128 0xd
	.long	0x30
	.long	0x27d
	.uleb128 0xe
	.long	0x5e
	.byte	0xff
	.byte	0
	.uleb128 0x10
	.long	.LASF39
	.byte	0x4
	.byte	0x5d
	.long	0x26d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	scancode_buffer
	.uleb128 0x10
	.long	.LASF40
	.byte	0x4
	.byte	0x5f
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	header
	.uleb128 0x10
	.long	.LASF41
	.byte	0x4
	.byte	0x5f
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	scancode
	.uleb128 0x10
	.long	.LASF42
	.byte	0x4
	.byte	0x5f
	.long	0x30
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.long	press_release
	.uleb128 0x11
	.byte	0x1
	.long	.LASF43
	.byte	0x4
	.word	0x22e
	.byte	0x1
	.long	.LFB100
	.long	.LFE100
	.long	.LLST35
	.byte	0x1
	.long	0x358
	.uleb128 0x12
	.long	.LASF47
	.byte	0x4
	.word	0x230
	.long	0x30
	.long	.LLST36
	.uleb128 0x13
	.long	0xb23
	.long	.LBB219
	.long	.Ldebug_ranges0+0x48
	.byte	0x4
	.word	0x233
	.uleb128 0x14
	.long	0xb30
	.uleb128 0x15
	.long	0xb3b
	.long	.LLST37
	.uleb128 0x16
	.long	0xb46
	.long	.LBB221
	.long	.LBE221
	.uleb128 0x17
	.long	0xb47
	.long	.LLST38
	.uleb128 0x17
	.long	0xb52
	.long	.LLST39
	.uleb128 0x18
	.long	0xcfc
	.long	.LBB222
	.long	.LBE222
	.byte	0x2
	.byte	0xa6
	.uleb128 0x19
	.long	0xcdd
	.long	.LBB224
	.long	.LBE224
	.byte	0x2
	.byte	0xa6
	.uleb128 0x15
	.long	0xcea
	.long	.LLST40
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF44
	.byte	0x4
	.word	0x1ec
	.byte	0x1
	.long	.LFB99
	.long	.LFE99
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x387
	.uleb128 0x1b
	.long	.LVL51
	.long	0x424
	.uleb128 0x1c
	.long	.LVL52
	.byte	0x1
	.long	0x387
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF45
	.byte	0x4
	.word	0x1d4
	.byte	0x1
	.long	.LFB98
	.long	.LFE98
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x424
	.uleb128 0x1d
	.long	.LBB177
	.long	.LBE177
	.long	0x3d5
	.uleb128 0x1e
	.long	.LASF54
	.byte	0x4
	.word	0x1e0
	.long	0x30
	.uleb128 0x1f
	.long	0xc7a
	.long	.LBB178
	.long	.LBE178
	.byte	0x4
	.word	0x1e0
	.uleb128 0x1b
	.long	.LVL50
	.long	0x518
	.byte	0
	.uleb128 0x20
	.long	0xcc2
	.long	.LBB171
	.long	.LBE171
	.byte	0x4
	.word	0x1d7
	.long	0x3f3
	.uleb128 0x15
	.long	0xcd0
	.long	.LLST27
	.byte	0
	.uleb128 0x1f
	.long	0xca6
	.long	.LBB173
	.long	.LBE173
	.byte	0x4
	.word	0x1da
	.uleb128 0x1f
	.long	0xcb4
	.long	.LBB175
	.long	.LBE175
	.byte	0x4
	.word	0x1dd
	.uleb128 0x1f
	.long	0xc88
	.long	.LBB180
	.long	.LBE180
	.byte	0x4
	.word	0x1e7
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF46
	.byte	0x4
	.word	0x1ac
	.byte	0x1
	.long	.LFB97
	.long	.LFE97
	.long	.LLST24
	.byte	0x1
	.long	0x518
	.uleb128 0x21
	.long	.LASF48
	.byte	0x4
	.word	0x1ae
	.long	0x21a
	.byte	0x5
	.byte	0x3
	.long	PrevKeyboardReportData.2820
	.uleb128 0x21
	.long	.LASF49
	.byte	0x4
	.word	0x1af
	.long	0x21a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x12
	.long	.LASF50
	.byte	0x4
	.word	0x1b0
	.long	0x13b
	.long	.LLST25
	.uleb128 0x20
	.long	0xcc2
	.long	.LBB165
	.long	.LBE165
	.byte	0x4
	.word	0x1c3
	.long	0x48e
	.uleb128 0x15
	.long	0xcd0
	.long	.LLST26
	.byte	0
	.uleb128 0x1f
	.long	0xcb4
	.long	.LBB167
	.long	.LBE167
	.byte	0x4
	.word	0x1c6
	.uleb128 0x1f
	.long	0xc92
	.long	.LBB169
	.long	.LBE169
	.byte	0x4
	.word	0x1cf
	.uleb128 0x22
	.long	.LVL41
	.long	0x55e
	.long	0x4c7
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.byte	0
	.uleb128 0x22
	.long	.LVL42
	.long	0xdaa
	.long	0x4f8
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x5
	.byte	0x3
	.long	PrevKeyboardReportData.2820
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x23
	.byte	0x6
	.byte	0x64
	.byte	0x93
	.uleb128 0x1
	.byte	0x65
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0x24
	.long	.LVL47
	.long	0xdb7
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -11
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.long	.LASF51
	.byte	0x4
	.word	0x19a
	.byte	0x1
	.long	.LFB96
	.long	.LFE96
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x55e
	.uleb128 0x25
	.long	.LASF54
	.byte	0x4
	.word	0x19a
	.long	0x3b
	.long	.LLST20
	.uleb128 0x12
	.long	.LASF52
	.byte	0x4
	.word	0x19c
	.long	0x30
	.long	.LLST21
	.uleb128 0x1c
	.long	.LVL29
	.byte	0x1
	.long	0xaa6
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.long	.LASF53
	.byte	0x4
	.word	0x173
	.byte	0x1
	.long	.LFB95
	.long	.LFE95
	.long	.LLST16
	.byte	0x1
	.long	0x5ae
	.uleb128 0x25
	.long	.LASF55
	.byte	0x4
	.word	0x173
	.long	0x5b4
	.long	.LLST17
	.uleb128 0x26
	.long	.Ldebug_ranges0+0
	.uleb128 0x12
	.long	.LASF56
	.byte	0x4
	.word	0x18f
	.long	0x30
	.long	.LLST18
	.uleb128 0x27
	.string	"i"
	.byte	0x4
	.word	0x18f
	.long	0x30
	.long	.LLST19
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x21a
	.uleb128 0x4
	.long	0x5ae
	.uleb128 0x28
	.byte	0x1
	.long	.LASF112
	.byte	0x4
	.word	0x168
	.byte	0x1
	.long	.LFB94
	.long	.LFE94
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.long	.LASF57
	.byte	0x4
	.word	0x105
	.byte	0x1
	.long	.LFB93
	.long	.LFE93
	.long	.LLST22
	.byte	0x1
	.long	0x759
	.uleb128 0x1d
	.long	.LBB147
	.long	.LBE147
	.long	0x660
	.uleb128 0x21
	.long	.LASF49
	.byte	0x4
	.word	0x110
	.long	0x21a
	.byte	0x2
	.byte	0x8c
	.sleb128 1
	.uleb128 0x1f
	.long	0xc9c
	.long	.LBB148
	.long	.LBE148
	.byte	0x4
	.word	0x115
	.uleb128 0x1f
	.long	0xc88
	.long	.LBB150
	.long	.LBE150
	.byte	0x4
	.word	0x119
	.uleb128 0x22
	.long	.LVL33
	.long	0x55e
	.long	0x640
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.uleb128 0x24
	.long	.LVL34
	.long	0xdc5
	.uleb128 0x23
	.byte	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x23
	.byte	0x6
	.byte	0x66
	.byte	0x93
	.uleb128 0x1
	.byte	0x67
	.byte	0x93
	.uleb128 0x1
	.byte	0x1
	.byte	0x38
	.byte	0
	.byte	0
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x18
	.long	0x6cf
	.uleb128 0x1e
	.long	.LASF58
	.byte	0x4
	.word	0x12a
	.long	0x30
	.uleb128 0x1f
	.long	0xc9c
	.long	.LBB139
	.long	.LBE139
	.byte	0x4
	.word	0x120
	.uleb128 0x1f
	.long	0xca6
	.long	.LBB141
	.long	.LBE141
	.byte	0x4
	.word	0x123
	.uleb128 0x1f
	.long	0xc7a
	.long	.LBB143
	.long	.LBE143
	.byte	0x4
	.word	0x12a
	.uleb128 0x1f
	.long	0xc88
	.long	.LBB145
	.long	.LBE145
	.byte	0x4
	.word	0x12c
	.uleb128 0x1b
	.long	.LVL31
	.long	0xdd3
	.uleb128 0x24
	.long	.LVL32
	.long	0x518
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x81
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.long	0xc9c
	.long	.LBB153
	.long	.LBE153
	.byte	0x4
	.word	0x137
	.uleb128 0x20
	.long	0xc5f
	.long	.LBB155
	.long	.LBE155
	.byte	0x4
	.word	0x15d
	.long	0x6fd
	.uleb128 0x15
	.long	0xc6d
	.long	.LLST23
	.byte	0
	.uleb128 0x1f
	.long	0xc92
	.long	.LBB157
	.long	.LBE157
	.byte	0x4
	.word	0x15f
	.uleb128 0x1f
	.long	0xc9c
	.long	.LBB159
	.long	.LBE159
	.byte	0x4
	.word	0x144
	.uleb128 0x1f
	.long	0xc9c
	.long	.LBB161
	.long	.LBE161
	.byte	0x4
	.word	0x14f
	.uleb128 0x1f
	.long	0xc9c
	.long	.LBB163
	.long	.LBE163
	.byte	0x4
	.word	0x15a
	.uleb128 0x1b
	.long	.LVL37
	.long	0xdd3
	.uleb128 0x1b
	.long	.LVL38
	.long	0xdd3
	.uleb128 0x1b
	.long	.LVL39
	.long	0xdd3
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF59
	.byte	0x4
	.byte	0xf0
	.byte	0x1
	.long	.LFB92
	.long	.LFE92
	.long	.LLST7
	.byte	0x1
	.long	0x846
	.uleb128 0x2b
	.long	.LASF60
	.byte	0x4
	.byte	0xf5
	.long	0x13b
	.long	.LLST8
	.uleb128 0x2c
	.long	0xbd9
	.long	.LBB130
	.long	.LBE130
	.byte	0x4
	.byte	0xf8
	.long	0x7dd
	.uleb128 0x15
	.long	0xbf7
	.long	.LLST9
	.uleb128 0x15
	.long	0xc0f
	.long	.LLST10
	.uleb128 0x15
	.long	0xc1b
	.long	.LLST11
	.uleb128 0x15
	.long	0xc03
	.long	.LLST12
	.uleb128 0x15
	.long	0xbeb
	.long	.LLST12
	.uleb128 0x24
	.long	.LVL15
	.long	0xde1
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x31
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x9
	.byte	0xc1
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xbd9
	.long	.LBB132
	.long	.LBE132
	.byte	0x4
	.byte	0xfa
	.long	0x82c
	.uleb128 0x14
	.long	0xbf7
	.uleb128 0x14
	.long	0xc0f
	.uleb128 0x14
	.long	0xc1b
	.uleb128 0x15
	.long	0xc03
	.long	.LLST14
	.uleb128 0x15
	.long	0xbeb
	.long	.LLST15
	.uleb128 0x24
	.long	.LVL17
	.long	0xde1
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x32
	.uleb128 0x23
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x9
	.byte	0xc0
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x18
	.long	0xbd0
	.long	.LBB134
	.long	.LBE134
	.byte	0x4
	.byte	0xfe
	.uleb128 0x1c
	.long	.LVL19
	.byte	0x1
	.long	0xaa6
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF61
	.byte	0x4
	.byte	0xe9
	.byte	0x1
	.long	.LFB91
	.long	.LFE91
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x872
	.uleb128 0x2e
	.long	.LVL13
	.byte	0x1
	.long	0xaa6
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.long	.LASF62
	.byte	0x4
	.byte	0xdd
	.byte	0x1
	.long	.LFB90
	.long	.LFE90
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0x89c
	.uleb128 0x24
	.long	.LVL12
	.long	0xaa6
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.byte	0x40
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.long	.LASF63
	.byte	0x4
	.byte	0xbc
	.byte	0x1
	.long	.LFB89
	.long	.LFE89
	.long	.LLST4
	.byte	0x1
	.long	0x91c
	.uleb128 0x2c
	.long	0xd09
	.long	.LBB114
	.long	.LBE114
	.byte	0x4
	.byte	0xc0
	.long	0x8dd
	.uleb128 0x16
	.long	0xd29
	.long	.LBB115
	.long	.LBE115
	.uleb128 0x2f
	.long	0xd2a
	.byte	0
	.byte	0
	.uleb128 0x2c
	.long	0xa82
	.long	.LBB116
	.long	.LBE116
	.byte	0x4
	.byte	0xc6
	.long	0x903
	.uleb128 0x15
	.long	0xa8f
	.long	.LLST5
	.uleb128 0x15
	.long	0xa9a
	.long	.LLST6
	.byte	0
	.uleb128 0x18
	.long	0xacf
	.long	.LBB118
	.long	.LBE118
	.byte	0x4
	.byte	0xc7
	.uleb128 0x1b
	.long	.LVL11
	.long	0xdef
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.long	.LASF113
	.byte	0x4
	.byte	0x64
	.byte	0x1
	.long	0x47
	.long	.LFB88
	.long	.LFE88
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xa82
	.uleb128 0x29
	.long	.Ldebug_ranges0+0x30
	.long	0xa07
	.uleb128 0x2b
	.long	.LASF64
	.byte	0x4
	.byte	0x9c
	.long	0x30
	.long	.LLST31
	.uleb128 0x2c
	.long	0xb5f
	.long	.LBB204
	.long	.LBE204
	.byte	0x4
	.byte	0x9c
	.long	0x9d0
	.uleb128 0x31
	.long	0xb70
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x32
	.long	.LBB205
	.long	.LBE205
	.uleb128 0x17
	.long	0xb7b
	.long	.LLST32
	.uleb128 0x16
	.long	0xb86
	.long	.LBB206
	.long	.LBE206
	.uleb128 0x17
	.long	0xb87
	.long	.LLST33
	.uleb128 0x17
	.long	0xb92
	.long	.LLST34
	.uleb128 0x18
	.long	0xcfc
	.long	.LBB207
	.long	.LBE207
	.byte	0x2
	.byte	0x6f
	.uleb128 0x19
	.long	0xcdd
	.long	.LBB209
	.long	.LBE209
	.byte	0x2
	.byte	0x6f
	.uleb128 0x31
	.long	0xcea
	.byte	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2448
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL66
	.long	0x358
	.uleb128 0x1b
	.long	.LVL67
	.long	0xdfd
	.uleb128 0x1b
	.long	.LVL68
	.long	0xd38
	.uleb128 0x1b
	.long	.LVL70
	.long	0xd38
	.uleb128 0x1b
	.long	.LVL72
	.long	0xd38
	.uleb128 0x1b
	.long	.LVL74
	.long	0xd38
	.byte	0
	.uleb128 0x2c
	.long	0xb9f
	.long	.LBB197
	.long	.LBE197
	.byte	0x4
	.byte	0x69
	.long	0xa68
	.uleb128 0x14
	.long	0xbac
	.uleb128 0x16
	.long	0xbb7
	.long	.LBB198
	.long	.LBE198
	.uleb128 0x17
	.long	0xbb8
	.long	.LLST28
	.uleb128 0x17
	.long	0xbc3
	.long	.LLST29
	.uleb128 0x18
	.long	0xcfc
	.long	.LBB199
	.long	.LBE199
	.byte	0x2
	.byte	0x57
	.uleb128 0x19
	.long	0xcdd
	.long	.LBB201
	.long	.LBE201
	.byte	0x2
	.byte	0x57
	.uleb128 0x15
	.long	0xcea
	.long	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.long	.LVL53
	.long	0x89c
	.uleb128 0x24
	.long	.LVL58
	.long	0xaa6
	.uleb128 0x23
	.byte	0x1
	.byte	0x68
	.byte	0x2
	.byte	0x8
	.byte	0x20
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF70
	.byte	0x6
	.byte	0x63
	.byte	0x1
	.byte	0x3
	.long	0xaa6
	.uleb128 0x34
	.long	.LASF65
	.byte	0x6
	.byte	0x63
	.long	0x77
	.uleb128 0x34
	.long	.LASF66
	.byte	0x6
	.byte	0x64
	.long	0x147
	.byte	0
	.uleb128 0x35
	.long	.LASF114
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.long	.LFB79
	.long	.LFE79
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xacf
	.uleb128 0x36
	.long	.LASF52
	.byte	0x1
	.byte	0x53
	.long	0x3b
	.long	.LLST0
	.byte	0
	.uleb128 0x37
	.long	.LASF75
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.byte	0x3
	.uleb128 0x38
	.long	.LASF72
	.byte	0x2
	.byte	0xb6
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0xb18
	.uleb128 0x34
	.long	.LASF28
	.byte	0x2
	.byte	0xb6
	.long	0xb1e
	.uleb128 0x39
	.long	.LASF67
	.byte	0x2
	.byte	0xb8
	.long	0x30
	.uleb128 0x3a
	.uleb128 0x39
	.long	.LASF68
	.byte	0x2
	.byte	0xbd
	.long	0x30
	.uleb128 0x39
	.long	.LASF69
	.byte	0x2
	.byte	0xbd
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x1cc
	.uleb128 0x4
	.long	0xb18
	.uleb128 0x33
	.long	.LASF71
	.byte	0x2
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.long	0xb5f
	.uleb128 0x34
	.long	.LASF28
	.byte	0x2
	.byte	0x9e
	.long	0xb1e
	.uleb128 0x34
	.long	.LASF67
	.byte	0x2
	.byte	0x9f
	.long	0x3b
	.uleb128 0x3a
	.uleb128 0x39
	.long	.LASF68
	.byte	0x2
	.byte	0xa6
	.long	0x30
	.uleb128 0x39
	.long	.LASF69
	.byte	0x2
	.byte	0xa6
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x38
	.long	.LASF73
	.byte	0x2
	.byte	0x6b
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0xb9f
	.uleb128 0x34
	.long	.LASF28
	.byte	0x2
	.byte	0x6b
	.long	0xb1e
	.uleb128 0x39
	.long	.LASF29
	.byte	0x2
	.byte	0x6d
	.long	0x30
	.uleb128 0x3a
	.uleb128 0x39
	.long	.LASF68
	.byte	0x2
	.byte	0x6f
	.long	0x30
	.uleb128 0x39
	.long	.LASF69
	.byte	0x2
	.byte	0x6f
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x33
	.long	.LASF74
	.byte	0x2
	.byte	0x55
	.byte	0x1
	.byte	0x3
	.long	0xbd0
	.uleb128 0x34
	.long	.LASF28
	.byte	0x2
	.byte	0x55
	.long	0xb1e
	.uleb128 0x3a
	.uleb128 0x39
	.long	.LASF68
	.byte	0x2
	.byte	0x57
	.long	0x30
	.uleb128 0x39
	.long	.LASF69
	.byte	0x2
	.byte	0x57
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.long	.LASF76
	.byte	0x8
	.byte	0x94
	.byte	0x1
	.byte	0x3
	.uleb128 0x3b
	.long	.LASF77
	.byte	0x7
	.word	0x531
	.byte	0x1
	.long	0x13b
	.byte	0x3
	.long	0xc28
	.uleb128 0x3c
	.long	.LASF78
	.byte	0x7
	.word	0x531
	.long	0x3b
	.uleb128 0x3c
	.long	.LASF79
	.byte	0x7
	.word	0x532
	.long	0x3b
	.uleb128 0x3c
	.long	.LASF80
	.byte	0x7
	.word	0x533
	.long	0x3b
	.uleb128 0x3c
	.long	.LASF81
	.byte	0x7
	.word	0x534
	.long	0x59
	.uleb128 0x3c
	.long	.LASF82
	.byte	0x7
	.word	0x535
	.long	0x3b
	.byte	0
	.uleb128 0x3b
	.long	.LASF83
	.byte	0x7
	.word	0x523
	.byte	0x1
	.long	0x30
	.byte	0x3
	.long	0xc5f
	.uleb128 0x3c
	.long	.LASF84
	.byte	0x7
	.word	0x523
	.long	0x59
	.uleb128 0x1e
	.long	.LASF85
	.byte	0x7
	.word	0x525
	.long	0x30
	.uleb128 0x1e
	.long	.LASF86
	.byte	0x7
	.word	0x526
	.long	0x4e
	.byte	0
	.uleb128 0x3d
	.long	.LASF87
	.byte	0x7
	.word	0x230
	.byte	0x1
	.byte	0x3
	.long	0xc7a
	.uleb128 0x3c
	.long	.LASF88
	.byte	0x7
	.word	0x230
	.long	0x3b
	.byte	0
	.uleb128 0x3e
	.long	.LASF92
	.byte	0x7
	.word	0x224
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x3f
	.long	.LASF89
	.byte	0x7
	.word	0x1d2
	.byte	0x1
	.byte	0x3
	.uleb128 0x3f
	.long	.LASF90
	.byte	0x7
	.word	0x1c3
	.byte	0x1
	.byte	0x3
	.uleb128 0x3f
	.long	.LASF91
	.byte	0x7
	.word	0x1b8
	.byte	0x1
	.byte	0x3
	.uleb128 0x3e
	.long	.LASF93
	.byte	0x7
	.word	0x19f
	.byte	0x1
	.long	0x13b
	.byte	0x3
	.uleb128 0x3e
	.long	.LASF94
	.byte	0x7
	.word	0x164
	.byte	0x1
	.long	0x13b
	.byte	0x3
	.uleb128 0x3d
	.long	.LASF95
	.byte	0x7
	.word	0x128
	.byte	0x1
	.byte	0x3
	.long	0xcdd
	.uleb128 0x3c
	.long	.LASF96
	.byte	0x7
	.word	0x128
	.long	0x3b
	.byte	0
	.uleb128 0x33
	.long	.LASF97
	.byte	0x3
	.byte	0x44
	.byte	0x1
	.byte	0x3
	.long	0xcf6
	.uleb128 0x40
	.string	"__s"
	.byte	0x3
	.byte	0x44
	.long	0xcf6
	.byte	0
	.uleb128 0xf
	.byte	0x2
	.long	0x3b
	.uleb128 0x41
	.long	.LASF98
	.byte	0x3
	.byte	0x30
	.byte	0x1
	.long	0x30
	.byte	0x3
	.uleb128 0x3d
	.long	.LASF99
	.byte	0x5
	.word	0x1ec
	.byte	0x1
	.byte	0x3
	.long	0xd38
	.uleb128 0x42
	.long	0xd29
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x5
	.word	0x1f0
	.long	0x30
	.byte	0
	.uleb128 0x3a
	.uleb128 0x1e
	.long	.LASF100
	.byte	0x5
	.word	0x202
	.long	0x30
	.byte	0
	.byte	0
	.uleb128 0x43
	.long	0xad8
	.long	.LFB107
	.long	.LFE107
	.byte	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.byte	0x1
	.long	0xdaa
	.uleb128 0x44
	.long	0xaf4
	.byte	0x1
	.byte	0x68
	.uleb128 0x31
	.long	0xae9
	.byte	0x6
	.byte	0x3
	.long	USARTtoUSB_Buffer
	.byte	0x9f
	.uleb128 0x16
	.long	0xaff
	.long	.LBB103
	.long	.LBE103
	.uleb128 0x17
	.long	0xb00
	.long	.LLST1
	.uleb128 0x17
	.long	0xb0b
	.long	.LLST2
	.uleb128 0x18
	.long	0xcfc
	.long	.LBB104
	.long	.LBE104
	.byte	0x2
	.byte	0xbd
	.uleb128 0x19
	.long	0xcdd
	.long	.LBB106
	.long	.LBE106
	.byte	0x2
	.byte	0xbd
	.uleb128 0x15
	.long	0xcea
	.long	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.byte	0x1
	.byte	0x1
	.long	.LASF101
	.long	.LASF101
	.byte	0xe
	.byte	0xb4
	.uleb128 0x46
	.byte	0x1
	.byte	0x1
	.long	.LASF102
	.long	.LASF102
	.byte	0x7
	.word	0x36c
	.uleb128 0x46
	.byte	0x1
	.byte	0x1
	.long	.LASF103
	.long	.LASF103
	.byte	0x7
	.word	0x428
	.uleb128 0x46
	.byte	0x1
	.byte	0x1
	.long	.LASF104
	.long	.LASF104
	.byte	0x7
	.word	0x33e
	.uleb128 0x46
	.byte	0x1
	.byte	0x1
	.long	.LASF105
	.long	.LASF105
	.byte	0x7
	.word	0x51d
	.uleb128 0x46
	.byte	0x1
	.byte	0x1
	.long	.LASF106
	.long	.LASF106
	.byte	0xf
	.word	0x123
	.uleb128 0x45
	.byte	0x1
	.byte	0x1
	.long	.LASF107
	.long	.LASF107
	.byte	0xc
	.byte	0xb2
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x5
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
	.uleb128 0x3d
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
	.uleb128 0x3e
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
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
	.uleb128 0x42
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
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
.LLST35:
	.long	.LFB100
	.long	.LCFI14
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI14
	.long	.LCFI15
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI15
	.long	.LCFI16
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI16
	.long	.LCFI17
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI17
	.long	.LCFI18
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 6
	.long	.LCFI18
	.long	.LCFI19
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 7
	.long	.LCFI19
	.long	.LCFI20
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 8
	.long	.LCFI20
	.long	.LFE100
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 9
	.long	0
	.long	0
.LLST36:
	.long	.LVL76
	.long	.LVL78
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST37:
	.long	.LVL77
	.long	.LVL78
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST38:
	.long	.LVL79
	.long	.LVL82
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST39:
	.long	.LVL80
	.long	.LVL81
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL81
	.long	.LVL82
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST40:
	.long	.LVL81
	.long	.LVL82
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+795
	.sleb128 0
	.long	0
	.long	0
.LLST27:
	.long	.LVL48
	.long	.LVL49
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST24:
	.long	.LFB97
	.long	.LCFI10
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI10
	.long	.LCFI11
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI11
	.long	.LCFI12
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI12
	.long	.LCFI13
	.word	0x2
	.byte	0x8c
	.sleb128 4
	.long	.LCFI13
	.long	.LFE97
	.word	0x2
	.byte	0x8c
	.sleb128 12
	.long	0
	.long	0
.LLST25:
	.long	.LVL40
	.long	.LVL43
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL43
	.long	.LVL44
	.word	0x1
	.byte	0x62
	.long	.LVL44
	.long	.LVL45
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL45
	.long	.LVL47-1
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST26:
	.long	.LVL45
	.long	.LVL46
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST20:
	.long	.LVL27
	.long	.LVL28
	.word	0x1
	.byte	0x68
	.long	.LVL28
	.long	.LVL29
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	.LVL29
	.long	.LVL30
	.word	0x1
	.byte	0x68
	.long	.LVL30
	.long	.LFE96
	.word	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x68
	.byte	0x9f
	.long	0
	.long	0
.LLST21:
	.long	.LVL27
	.long	.LVL28
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	.LVL28
	.long	.LVL29-1
	.word	0x1
	.byte	0x68
	.long	.LVL29
	.long	.LFE96
	.word	0x2
	.byte	0x40
	.byte	0x9f
	.long	0
	.long	0
.LLST16:
	.long	.LFB95
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
	.long	.LFE95
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST17:
	.long	.LVL20
	.long	.LVL21
	.word	0x6
	.byte	0x68
	.byte	0x93
	.uleb128 0x1
	.byte	0x69
	.byte	0x93
	.uleb128 0x1
	.long	.LVL21
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
.LLST18:
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LVL24
	.word	0x1
	.byte	0x69
	.long	.LVL24
	.long	.LVL25
	.word	0x3
	.byte	0x89
	.sleb128 1
	.byte	0x9f
	.long	.LVL25
	.long	.LFE95
	.word	0x1
	.byte	0x69
	.long	0
	.long	0
.LLST19:
	.long	.LVL22
	.long	.LVL23
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	.LVL23
	.long	.LFE95
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST22:
	.long	.LFB93
	.long	.LCFI5
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI5
	.long	.LCFI6
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	.LCFI6
	.long	.LCFI7
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	.LCFI7
	.long	.LCFI8
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 5
	.long	.LCFI8
	.long	.LCFI9
	.word	0x2
	.byte	0x8c
	.sleb128 5
	.long	.LCFI9
	.long	.LFE93
	.word	0x2
	.byte	0x8c
	.sleb128 13
	.long	0
	.long	0
.LLST23:
	.long	.LVL35
	.long	.LVL36
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST7:
	.long	.LFB92
	.long	.LCFI2
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 2
	.long	.LCFI2
	.long	.LFE92
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 3
	.long	0
	.long	0
.LLST8:
	.long	.LVL14
	.long	.LVL16
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL17
	.long	.LVL18
	.word	0x6
	.byte	0x88
	.sleb128 0
	.byte	0x8c
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.long	0
	.long	0
.LLST9:
	.long	.LVL14
	.long	.LVL16
	.word	0x2
	.byte	0x33
	.byte	0x9f
	.long	0
	.long	0
.LLST10:
	.long	.LVL14
	.long	.LVL16
	.word	0x2
	.byte	0x38
	.byte	0x9f
	.long	0
	.long	0
.LLST11:
	.long	.LVL14
	.long	.LVL16
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST12:
	.long	.LVL14
	.long	.LVL16
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	0
	.long	0
.LLST14:
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST15:
	.long	.LVL16
	.long	.LVL17
	.word	0x2
	.byte	0x32
	.byte	0x9f
	.long	0
	.long	0
.LLST4:
	.long	.LFB89
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
	.long	.LFE89
	.word	0x3
	.byte	0x92
	.uleb128 0x20
	.sleb128 4
	.long	0
	.long	0
.LLST5:
	.long	.LVL9
	.long	.LVL10
	.word	0x4
	.byte	0xa
	.word	0x2580
	.byte	0x9f
	.long	0
	.long	0
.LLST6:
	.long	.LVL9
	.long	.LVL10
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST31:
	.long	.LVL64
	.long	.LVL69
	.word	0x1
	.byte	0x6c
	.long	.LVL69
	.long	.LVL71
	.word	0x1
	.byte	0x6d
	.long	.LVL71
	.long	.LVL73
	.word	0x3
	.byte	0x8c
	.sleb128 -2
	.byte	0x9f
	.long	.LVL73
	.long	.LVL75
	.word	0x1
	.byte	0x6c
	.long	.LVL75
	.long	.LFE88
	.word	0x1
	.byte	0x6d
	.long	0
	.long	0
.LLST32:
	.long	.LVL62
	.long	.LVL63
	.word	0x1
	.byte	0x6c
	.long	0
	.long	0
.LLST33:
	.long	.LVL60
	.long	.LVL63
	.word	0x1
	.byte	0x68
	.long	0
	.long	0
.LLST34:
	.long	.LVL61
	.long	.LVL62
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL62
	.long	.LFE88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST28:
	.long	.LVL54
	.long	.LVL57
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST29:
	.long	.LVL55
	.long	.LVL56
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL56
	.long	.LFE88
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST30:
	.long	.LVL56
	.long	.LVL59
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2604
	.sleb128 0
	.long	.LVL62
	.long	.LFE88
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+2448
	.sleb128 0
	.long	0
	.long	0
.LLST0:
	.long	.LVL0
	.long	.LVL1
	.word	0x1
	.byte	0x68
	.long	.LVL1
	.long	.LFE79
	.word	0x4
	.byte	0x88
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.long	0
	.long	0
.LLST1:
	.long	.LVL4
	.long	.LVL7
	.word	0x1
	.byte	0x62
	.long	0
	.long	0
.LLST2:
	.long	.LVL5
	.long	.LVL6
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	.LVL6
	.long	.LVL8
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
.LLST3:
	.long	.LVL6
	.long	.LVL8
	.word	0x6
	.byte	0xf2
	.long	.Ldebug_info0+3438
	.sleb128 0
	.long	0
	.long	0
	.section	.debug_aranges,"",@progbits
	.long	0x8c
	.word	0x2
	.long	.Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	.LFB79
	.long	.LFE79-.LFB79
	.long	.LFB107
	.long	.LFE107-.LFB107
	.long	.LFB89
	.long	.LFE89-.LFB89
	.long	.LFB90
	.long	.LFE90-.LFB90
	.long	.LFB91
	.long	.LFE91-.LFB91
	.long	.LFB92
	.long	.LFE92-.LFB92
	.long	.LFB94
	.long	.LFE94-.LFB94
	.long	.LFB95
	.long	.LFE95-.LFB95
	.long	.LFB96
	.long	.LFE96-.LFB96
	.long	.LFB93
	.long	.LFE93-.LFB93
	.long	.LFB97
	.long	.LFE97-.LFB97
	.long	.LFB98
	.long	.LFE98-.LFB98
	.long	.LFB99
	.long	.LFE99-.LFB99
	.long	.LFB88
	.long	.LFE88-.LFB88
	.long	.LFB100
	.long	.LFE100-.LFB100
	.long	0
	.long	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.LBB136
	.long	.LBE136
	.long	.LBB137
	.long	.LBE137
	.long	0
	.long	0
	.long	.LBB138
	.long	.LBE138
	.long	.LBB152
	.long	.LBE152
	.long	0
	.long	0
	.long	.LBB203
	.long	.LBE203
	.long	.LBB211
	.long	.LBE211
	.long	0
	.long	0
	.long	.LBB219
	.long	.LBE219
	.long	.LBB227
	.long	.LBE227
	.long	0
	.long	0
	.long	.LFB79
	.long	.LFE79
	.long	.LFB107
	.long	.LFE107
	.long	.LFB89
	.long	.LFE89
	.long	.LFB90
	.long	.LFE90
	.long	.LFB91
	.long	.LFE91
	.long	.LFB92
	.long	.LFE92
	.long	.LFB94
	.long	.LFE94
	.long	.LFB95
	.long	.LFE95
	.long	.LFB96
	.long	.LFE96
	.long	.LFB93
	.long	.LFE93
	.long	.LFB97
	.long	.LFE97
	.long	.LFB98
	.long	.LFE98
	.long	.LFB99
	.long	.LFE99
	.long	.LFB88
	.long	.LFE88
	.long	.LFB100
	.long	.LFE100
	.long	0
	.long	0
	.section	.debug_line,"",@progbits
.Ldebug_line0:
	.section	.debug_str,"MS",@progbits,1
.LASF19:
	.string	"wIndex"
.LASF99:
	.string	"wdt_disable"
.LASF53:
	.string	"CreateKeyboardReport"
.LASF90:
	.string	"Endpoint_ClearIN"
.LASF75:
	.string	"LEDs_Init"
.LASF98:
	.string	"__iCliRetVal"
.LASF43:
	.string	"__vector_23"
.LASF45:
	.string	"ReceiveNextReport"
.LASF32:
	.string	"Reserved"
.LASF95:
	.string	"Endpoint_SelectEndpoint"
.LASF9:
	.string	"long long unsigned int"
.LASF60:
	.string	"ConfigSuccess"
.LASF10:
	.string	"DEVICE_STATE_Unattached"
.LASF12:
	.string	"DEVICE_STATE_Default"
.LASF25:
	.string	"USB_CurrentlySelfPowered"
.LASF72:
	.string	"RingBuffer_Remove"
.LASF8:
	.string	"long long int"
.LASF0:
	.string	"signed char"
.LASF84:
	.string	"Bytes"
.LASF65:
	.string	"BaudRate"
.LASF58:
	.string	"LEDStatus"
.LASF55:
	.string	"ReportData"
.LASF83:
	.string	"Endpoint_BytesToEPSizeMask"
.LASF70:
	.string	"Serial_Init"
.LASF76:
	.string	"USB_Device_EnableSOFEvents"
.LASF5:
	.string	"long int"
.LASF81:
	.string	"Size"
.LASF57:
	.string	"EVENT_USB_Device_UnhandledControlRequest"
.LASF21:
	.string	"USB_Request_Header_t"
.LASF18:
	.string	"wValue"
.LASF3:
	.string	"uint16_t"
.LASF111:
	.string	"USB_Device_States_t"
.LASF89:
	.string	"Endpoint_ClearOUT"
.LASF56:
	.string	"UsedKeyCodes"
.LASF52:
	.string	"LEDMask"
.LASF93:
	.string	"Endpoint_IsOUTReceived"
.LASF79:
	.string	"Type"
.LASF16:
	.string	"bmRequestType"
.LASF37:
	.string	"IdleCount"
.LASF69:
	.string	"__ToDo"
.LASF87:
	.string	"Endpoint_Write_Byte"
.LASF94:
	.string	"Endpoint_IsReadWriteAllowed"
.LASF86:
	.string	"CheckBytes"
.LASF4:
	.string	"unsigned int"
.LASF92:
	.string	"Endpoint_Read_Byte"
.LASF103:
	.string	"Endpoint_Write_Control_Stream_LE"
.LASF48:
	.string	"PrevKeyboardReportData"
.LASF7:
	.string	"long unsigned int"
.LASF68:
	.string	"sreg_save"
.LASF100:
	.string	"temp_reg"
.LASF14:
	.string	"DEVICE_STATE_Configured"
.LASF23:
	.string	"USB_RemoteWakeupEnabled"
.LASF34:
	.string	"USB_KeyboardReport_Data_t"
.LASF107:
	.string	"USB_USBTask"
.LASF71:
	.string	"RingBuffer_Insert"
.LASF61:
	.string	"EVENT_USB_Device_Disconnect"
.LASF46:
	.string	"SendNextReport"
.LASF15:
	.string	"DEVICE_STATE_Suspended"
.LASF27:
	.string	"USB_ControlRequest"
.LASF54:
	.string	"LEDReport"
.LASF78:
	.string	"Number"
.LASF49:
	.string	"KeyboardReportData"
.LASF42:
	.string	"press_release"
.LASF106:
	.string	"USB_Init"
.LASF91:
	.string	"Endpoint_ClearSETUP"
.LASF13:
	.string	"DEVICE_STATE_Addressed"
.LASF11:
	.string	"DEVICE_STATE_Powered"
.LASF96:
	.string	"EndpointNumber"
.LASF33:
	.string	"KeyCode"
.LASF50:
	.string	"SendReport"
.LASF59:
	.string	"EVENT_USB_Device_ConfigurationChanged"
.LASF39:
	.string	"scancode_buffer"
.LASF31:
	.string	"Modifier"
.LASF51:
	.string	"ProcessLEDReport"
.LASF114:
	.string	"LEDs_SetAllLEDs"
.LASF64:
	.string	"BufferCount"
.LASF24:
	.string	"_Bool"
.LASF1:
	.string	"unsigned char"
.LASF63:
	.string	"SetupHardware"
.LASF82:
	.string	"Banks"
.LASF62:
	.string	"EVENT_USB_Device_Connect"
.LASF109:
	.string	"Arduino-serialusbkeyboard.c"
.LASF44:
	.string	"HID_Task"
.LASF17:
	.string	"bRequest"
.LASF102:
	.string	"Endpoint_Write_Stream_LE"
.LASF41:
	.string	"scancode"
.LASF73:
	.string	"RingBuffer_GetCount"
.LASF6:
	.string	"uint32_t"
.LASF104:
	.string	"Endpoint_ClearStatusStage"
.LASF66:
	.string	"DoubleSpeed"
.LASF80:
	.string	"Direction"
.LASF85:
	.string	"MaskVal"
.LASF88:
	.string	"Byte"
.LASF38:
	.string	"IdleMSRemaining"
.LASF101:
	.string	"memcmp"
.LASF36:
	.string	"UsingReportProtocol"
.LASF97:
	.string	"__iRestore"
.LASF74:
	.string	"RingBuffer_InitBuffer"
.LASF30:
	.string	"RingBuff_t"
.LASF35:
	.string	"USARTtoUSB_Buffer"
.LASF28:
	.string	"Buffer"
.LASF26:
	.string	"USB_IsInitialized"
.LASF29:
	.string	"Count"
.LASF22:
	.string	"USB_ConfigurationNumber"
.LASF2:
	.string	"uint8_t"
.LASF67:
	.string	"Data"
.LASF20:
	.string	"wLength"
.LASF112:
	.string	"EVENT_USB_Device_StartOfFrame"
.LASF108:
	.string	"GNU C99 7.3.0 -mn-flash=1 -mno-skip-bug -mmcu=avr35 -gdwarf-2 -Os -std=gnu99 -funsigned-char -funsigned-bitfields -ffunction-sections -fno-inline-small-functions -fpack-struct -fshort-enums -fno-strict-aliasing"
.LASF113:
	.string	"main"
.LASF40:
	.string	"header"
.LASF110:
	.string	"/Users/test/Dropbox/atmegaxxu2_hid/atmegaxxu2_hid/arduino-serialusbkeyboard"
.LASF105:
	.string	"Endpoint_ConfigureEndpoint_Prv"
.LASF77:
	.string	"Endpoint_ConfigureEndpointStatic"
.LASF47:
	.string	"ReceivedByte"
	.ident	"GCC: (GNU) 7.3.0"
.global __do_copy_data
.global __do_clear_bss
