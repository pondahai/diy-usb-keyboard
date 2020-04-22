/*
             LUFA Library
     Copyright (C) Dean Camera, 2010.
              
  dean [at] fourwalledcubicle [dot] com
      www.fourwalledcubicle.com
*/

/*
  Copyright 2010  Dean Camera (dean [at] fourwalledcubicle [dot] com)

  Permission to use, copy, modify, distribute, and sell this 
  software and its documentation for any purpose is hereby granted
  without fee, provided that the above copyright notice appear in 
  all copies and that both that the copyright notice and this
  permission notice and warranty disclaimer appear in supporting 
  documentation, and that the name of the author not be used in 
  advertising or publicity pertaining to distribution of the 
  software without specific, written prior permission.

  The author disclaim all warranties with regard to this
  software, including all implied warranties of merchantability
  and fitness.  In no event shall the author be liable for any
  special, indirect or consequential damages or any damages
  whatsoever resulting from loss of use, data or profits, whether
  in an action of contract, negligence or other tortious action,
  arising out of or in connection with the use or performance of
  this software.
*/

/** \file
 *
 *  Main source file for the Arduino-usbserial project. This file contains the main tasks of
 *  the project and is responsible for the initial application hardware configuration.
 */

#include "Arduino-serialusbkeyboard.h"

/** Circular buffer to hold data from the host before it is sent to the device via the serial port. */
// RingBuff_t USBtoUSART_Buffer;

/** Circular buffer to hold data from the serial port before it is sent to the host. */
RingBuff_t USARTtoUSB_Buffer;

/** Pulse generation counters to keep track of the number of milliseconds remaining for each pulse type */
// volatile struct
// {
// 	uint8_t TxLEDPulse; /**< Milliseconds remaining for data Tx LED pulse */
// 	uint8_t RxLEDPulse; *< Milliseconds remaining for data Rx LED pulse 
// 	uint8_t PingPongLEDPulse; /**< Milliseconds remaining for enumeration Tx/Rx ping-pong LED pulse */
// } PulseMSRemaining;

/** LUFA CDC Class driver interface configuration and state information. This structure is
 *  passed to all CDC Class driver functions, so that multiple instances of the same class
 *  within a device can be differentiated from one another.
 */
// USB_ClassInfo_CDC_Device_t VirtualSerial_CDC_Interface =
// 	{
// 		.Config = 
// 			{
// 				.ControlInterfaceNumber         = 0,

// 				.DataINEndpointNumber           = CDC_TX_EPNUM,
// 				.DataINEndpointSize             = CDC_TXRX_EPSIZE,
// 				.DataINEndpointDoubleBank       = false,

// 				.DataOUTEndpointNumber          = CDC_RX_EPNUM,
// 				.DataOUTEndpointSize            = CDC_TXRX_EPSIZE,
// 				.DataOUTEndpointDoubleBank      = false,

// 				.NotificationEndpointNumber     = CDC_NOTIFICATION_EPNUM,
// 				.NotificationEndpointSize       = CDC_NOTIFICATION_EPSIZE,
// 				.NotificationEndpointDoubleBank = false,
// 			},
// 	};

/** Indicates what report mode the host has requested, true for normal HID reporting mode, false for special boot
 *  protocol reporting mode.
 */
bool UsingReportProtocol = true;

/** Current Idle period. This is set by the host via a Set Idle HID class request to silence the device's reports
 *  for either the entire idle duration, or until the report status changes (e.g. the user presses a key).
 */
uint16_t IdleCount = 500;

/** Current Idle period remaining. When the IdleCount value is set, this tracks the remaining number of idle
 *  milliseconds. This is separate to the IdleCount timer and is incremented and compared as the host may request
 *  the current idle period via a Get Idle HID class request, thus its value must be preserved.
 */
uint16_t IdleMSRemaining = 0;

uint8_t scancode_buffer[256] = {0};

uint8_t header, scancode, press_release;

/** Main program entry point. This routine contains the overall program flow, including initial
 *  setup of all components and the main program loop.
 */
int main(void)
{
	SetupHardware();
	
	// RingBuffer_InitBuffer(&USBtoUSART_Buffer);
	RingBuffer_InitBuffer(&USARTtoUSB_Buffer);

	LEDs_SetAllLEDs(LEDMASK_USB_NOTREADY);
	sei();

	for (;;)
	{
		/* Only try to read in bytes from the CDC interface if the transmit buffer is not full */
		// if (!(RingBuffer_IsFull(&USBtoUSART_Buffer)))
		// {
		// 	int16_t ReceivedByte = CDC_Device_ReceiveByte(&VirtualSerial_CDC_Interface);

		// 	 Read bytes from the USB OUT endpoint into the USART transmit buffer 
		// 	if (!(ReceivedByte < 0))
		// 	  RingBuffer_Insert(&USBtoUSART_Buffer, ReceivedByte);
		// }
		
		/* Check if the UART receive buffer flush timer has expired or the buffer is nearly full */
		// RingBuff_Count_t BufferCount = RingBuffer_GetCount(&USARTtoUSB_Buffer);
		// if ((TIFR0 & (1 << TOV0)) || (BufferCount > BUFFER_NEARLY_FULL))
		// {
		// 	TIFR0 |= (1 << TOV0);

		// 	// if (USARTtoUSB_Buffer.Count) {
		// 	// 	LEDs_TurnOnLEDs(LEDMASK_TX);
		// 	// 	PulseMSRemaining.TxLEDPulse = TX_RX_LED_PULSE_MS;
		// 	// }

		// 	/* Read bytes from the USART receive buffer into the USB IN endpoint */
		// 	while (BufferCount--)
		// 	  // CDC_Device_SendByte(&VirtualSerial_CDC_Interface, RingBuffer_Remove(&USARTtoUSB_Buffer));
			  
		// 	/* Turn off TX LED(s) once the TX pulse period has elapsed */
		// 	if (PulseMSRemaining.TxLEDPulse && !(--PulseMSRemaining.TxLEDPulse))
		// 	  LEDs_TurnOffLEDs(LEDMASK_TX);

		// 	/* Turn off RX LED(s) once the RX pulse period has elapsed */
		// 	if (PulseMSRemaining.RxLEDPulse && !(--PulseMSRemaining.RxLEDPulse))
		// 	  LEDs_TurnOffLEDs(LEDMASK_RX);
		// }
		
		/* Load the next byte from the USART transmit buffer into the USART */
		// if (!(RingBuffer_IsEmpty(&USBtoUSART_Buffer))) {
		//   Serial_TxByte(RingBuffer_Remove(&USBtoUSART_Buffer));
		  	
		//   	LEDs_TurnOnLEDs(LEDMASK_RX);
		// 	PulseMSRemaining.RxLEDPulse = TX_RX_LED_PULSE_MS;
		// }
		
		// CDC_Device_USBTask(&VirtualSerial_CDC_Interface);
		// USB_USBTask();
    RingBuff_Count_t BufferCount = RingBuffer_GetCount(&USARTtoUSB_Buffer);
    
    // if ((TIFR0 & (1 << TOV0)) || (BufferCount > BUFFER_NEARLY_FULL))
    // {
    //         TIFR0 |= (1 << TOV0);
    if (BufferCount > BUFFER_NEARLY_FULL) {
        while(BufferCount--)
            header = RingBuffer_Remove(&USARTtoUSB_Buffer);
    }
        while(BufferCount > 2) {
            if (BufferCount--) {
                header = RingBuffer_Remove(&USARTtoUSB_Buffer);
                if(header == 0x00) {
                    if (BufferCount--) {
                        scancode = RingBuffer_Remove(&USARTtoUSB_Buffer);
                    }
                    if (BufferCount--) {
                        press_release = RingBuffer_Remove(&USARTtoUSB_Buffer);
                    }
                    scancode_buffer[scancode] = press_release;
                }
            }
        }   
    // }

		HID_Task();
		USB_USBTask();

	}
}

/** Configures the board hardware and chip peripherals for the demo's functionality. */
void SetupHardware(void)
{
	/* Disable watchdog if enabled by bootloader/fuses */
	MCUSR &= ~(1 << WDRF);
	wdt_disable();

	/* Disable clock division */
	// clock_prescale_set(clock_div_1);

	/* Hardware Initialization */
	Serial_Init(9600, false);
	LEDs_Init();
	USB_Init();

	/* Start the flush timer so that overflows occur rapidly to push received bytes to the USB interface */
	// TCCR0B = (1 << CS02);
	
	/* Pull target /RESET line high */
	AVR_RESET_LINE_PORT |= AVR_RESET_LINE_MASK;
	AVR_RESET_LINE_DDR  |= AVR_RESET_LINE_MASK;



    /* Must turn off USART before reconfiguring it, otherwise incorrect operation may occur */
    UCSR1B = 0;

	UCSR1B = ((1 << RXCIE1) | (0 << TXEN1) | (1 << RXEN1));

}

/** Event handler for the USB_Connect event. This indicates that the device is enumerating via the status LEDs and
 *  starts the library USB task to begin the enumeration and USB management process.
 */
void EVENT_USB_Device_Connect(void)
{
	/* Indicate USB enumerating */
	LEDs_SetAllLEDs(LEDMASK_USB_ENUMERATING);

	/* Default to report protocol on connect */
	UsingReportProtocol = true;
}

/** Event handler for the USB_Disconnect event. This indicates that the device is no longer connected to a host via
 *  the status LEDs.
 */
void EVENT_USB_Device_Disconnect(void)
{
	/* Indicate USB not ready */
	LEDs_SetAllLEDs(LEDMASK_USB_NOTREADY);
}

/** Event handler for the library USB Configuration Changed event. */
void EVENT_USB_Device_ConfigurationChanged(void)
{
	// CDC_Device_ConfigureEndpoints(&VirtualSerial_CDC_Interface);


	bool ConfigSuccess = true;

	/* Setup HID Report Endpoints */
	ConfigSuccess &= Endpoint_ConfigureEndpoint(KEYBOARD_IN_EPNUM, EP_TYPE_INTERRUPT, ENDPOINT_DIR_IN,
	                                            KEYBOARD_EPSIZE, ENDPOINT_BANK_SINGLE);
	ConfigSuccess &= Endpoint_ConfigureEndpoint(KEYBOARD_OUT_EPNUM, EP_TYPE_INTERRUPT, ENDPOINT_DIR_OUT,
	                                            KEYBOARD_EPSIZE, ENDPOINT_BANK_SINGLE);

	/* Turn on Start-of-Frame events for tracking HID report period exiry */
	USB_Device_EnableSOFEvents();

	/* Indicate endpoint configuration success or failure */
	LEDs_SetAllLEDs(ConfigSuccess ? LEDMASK_USB_READY : LEDMASK_USB_ERROR);
}

/** Event handler for the library USB Unhandled Control Request event. */
void EVENT_USB_Device_UnhandledControlRequest(void)
{
	// CDC_Device_ProcessControlRequest(&VirtualSerial_CDC_Interface);


	/* Handle HID Class specific requests */
	switch (USB_ControlRequest.bRequest)
	{
		case REQ_GetReport:
			if (USB_ControlRequest.bmRequestType == (REQDIR_DEVICETOHOST | REQTYPE_CLASS | REQREC_INTERFACE))
			{
				USB_KeyboardReport_Data_t KeyboardReportData;

				/* Create the next keyboard report for transmission to the host */
				CreateKeyboardReport(&KeyboardReportData);

				Endpoint_ClearSETUP();

				/* Write the report data to the control endpoint */
				Endpoint_Write_Control_Stream_LE(&KeyboardReportData, sizeof(KeyboardReportData));
				Endpoint_ClearOUT();
			}

			break;
		case REQ_SetReport:
			if (USB_ControlRequest.bmRequestType == (REQDIR_HOSTTODEVICE | REQTYPE_CLASS | REQREC_INTERFACE))
			{
				Endpoint_ClearSETUP();

				/* Wait until the LED report has been sent by the host */
				while (!(Endpoint_IsOUTReceived()))
				{
					if (USB_DeviceState == DEVICE_STATE_Unattached)
					  return;
				}

				/* Read in the LED report from the host */
				uint8_t LEDStatus = Endpoint_Read_Byte();

				Endpoint_ClearOUT();
				Endpoint_ClearStatusStage();

				/* Process the incoming LED report */
				ProcessLEDReport(LEDStatus);
			}

			break;
		case REQ_GetProtocol:
			if (USB_ControlRequest.bmRequestType == (REQDIR_DEVICETOHOST | REQTYPE_CLASS | REQREC_INTERFACE))
			{
				Endpoint_ClearSETUP();

				/* Write the current protocol flag to the host */
				Endpoint_Write_Byte(UsingReportProtocol);

				Endpoint_ClearIN();
				Endpoint_ClearStatusStage();
			}

			break;
		case REQ_SetProtocol:
			if (USB_ControlRequest.bmRequestType == (REQDIR_HOSTTODEVICE | REQTYPE_CLASS | REQREC_INTERFACE))
			{
				Endpoint_ClearSETUP();
				Endpoint_ClearStatusStage();

				/* Set or clear the flag depending on what the host indicates that the current Protocol should be */
				UsingReportProtocol = (USB_ControlRequest.wValue != 0);
			}

			break;
		case REQ_SetIdle:
			if (USB_ControlRequest.bmRequestType == (REQDIR_HOSTTODEVICE | REQTYPE_CLASS | REQREC_INTERFACE))
			{
				Endpoint_ClearSETUP();
				Endpoint_ClearStatusStage();

				/* Get idle period in MSB, IdleCount must be multiplied by 4 to get number of milliseconds */
				IdleCount = ((USB_ControlRequest.wValue & 0xFF00) >> 6);
			}

			break;
		case REQ_GetIdle:
			if (USB_ControlRequest.bmRequestType == (REQDIR_DEVICETOHOST | REQTYPE_CLASS | REQREC_INTERFACE))
			{
				Endpoint_ClearSETUP();

				/* Write the current idle duration to the host, must be divided by 4 before sent to host */
				Endpoint_Write_Byte(IdleCount >> 2);

				Endpoint_ClearIN();
				Endpoint_ClearStatusStage();
			}

			break;
	}
}

/** Event handler for the USB device Start Of Frame event. */
void EVENT_USB_Device_StartOfFrame(void)
{
	/* One millisecond has elapsed, decrement the idle time remaining counter if it has not already elapsed */
	if (IdleMSRemaining)
	  IdleMSRemaining--;
}

/** Fills the given HID report data structure with the next HID report to send to the host.
 *
 *  \param[out] ReportData  Pointer to a HID report data structure to be filled
 */
void CreateKeyboardReport(USB_KeyboardReport_Data_t* const ReportData)
{
	// uint8_t JoyStatus_LCL     = Joystick_GetStatus();
	// uint8_t ButtonStatus_LCL  = Buttons_GetStatus();

    /* Clear the report contents */
    memset(ReportData, 0, sizeof(USB_KeyboardReport_Data_t));


                /* Make sent key uppercase by indicating that the left shift key is pressed */
                ReportData->Modifier = 0;
                if(scancode_buffer[0xe0] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_LEFTCTRL;
                if(scancode_buffer[0xe1] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_LEFTSHIFT;
                if(scancode_buffer[0xe2] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_LEFTALT;
                if(scancode_buffer[0xe3] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_LEFTGUI;
                if(scancode_buffer[0xe4] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_RIGHTCTRL;
                if(scancode_buffer[0xe5] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_RIGHTSHIFT;
                if(scancode_buffer[0xe6] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_RIGHTALT;
                if(scancode_buffer[0xe7] == 0x55)
                    ReportData->Modifier |= KEYBOARD_MODIFER_RIGHTGUI;

                for(uint8_t UsedKeyCodes = 0, i=0; UsedKeyCodes < 6 && i < 128; i++) {
                    if(scancode_buffer[i] == 0x55)
                        ReportData->KeyCode[UsedKeyCodes++] = i;
    }

}

/** Processes a received LED report, and updates the board LEDs states to match.
 *
 *  \param[in] LEDReport  LED status report from the host
 */
void ProcessLEDReport(const uint8_t LEDReport)
{
	uint8_t LEDMask = LEDS_LED2;

	if (LEDReport & KEYBOARD_LED_NUMLOCK)
	  LEDMask |= LEDS_LED1;

	if (LEDReport & KEYBOARD_LED_CAPSLOCK)
	  LEDMask |= LEDS_LED3;

	if (LEDReport & KEYBOARD_LED_SCROLLLOCK)
	  LEDMask |= LEDS_LED4;

	/* Set the status LEDs to the current Keyboard LED status */
	LEDs_SetAllLEDs(LEDMask);
}

/** Sends the next HID report to the host, via the keyboard data endpoint. */
void SendNextReport(void)
{
	static USB_KeyboardReport_Data_t PrevKeyboardReportData;
	USB_KeyboardReport_Data_t        KeyboardReportData;
	bool                             SendReport = true;

	/* Create the next keyboard report for transmission to the host */
	CreateKeyboardReport(&KeyboardReportData);

	/* Check to see if the report data has changed - if so a report MUST be sent */
	SendReport = (memcmp(&PrevKeyboardReportData, &KeyboardReportData, sizeof(USB_KeyboardReport_Data_t)) != 0);

	/* Check if the idle period is set and has elapsed */
	if ((IdleCount != HID_IDLE_CHANGESONLY) && (!(IdleMSRemaining)))
	{
		/* Reset the idle time remaining counter */
		IdleMSRemaining = IdleCount;

		/* Idle period is set and has elapsed, must send a report to the host */
		SendReport = true;
	}

	/* Select the Keyboard Report Endpoint */
	Endpoint_SelectEndpoint(KEYBOARD_IN_EPNUM);

	/* Check if Keyboard Endpoint Ready for Read/Write and if we should send a new report */
	if (Endpoint_IsReadWriteAllowed() && SendReport)
	{
		/* Save the current report data for later comparison to check for changes */
		PrevKeyboardReportData = KeyboardReportData;

		/* Write Keyboard Report Data */
		Endpoint_Write_Stream_LE(&KeyboardReportData, sizeof(KeyboardReportData), NO_STREAM_CALLBACK);

		/* Finalize the stream transfer to send the last packet */
		Endpoint_ClearIN();
	}
}

/** Reads the next LED status report from the host from the LED data endpoint, if one has been sent. */
void ReceiveNextReport(void)
{
	/* Select the Keyboard LED Report Endpoint */
	Endpoint_SelectEndpoint(KEYBOARD_OUT_EPNUM);

	/* Check if Keyboard LED Endpoint contains a packet */
	if (Endpoint_IsOUTReceived())
	{
		/* Check to see if the packet contains data */
		if (Endpoint_IsReadWriteAllowed())
		{
			/* Read in the LED report from the host */
			uint8_t LEDReport = Endpoint_Read_Byte();

			/* Process the read LED report from the host */
			ProcessLEDReport(LEDReport);
		}

		/* Handshake the OUT Endpoint - clear endpoint and ready for next report */
		Endpoint_ClearOUT();
	}
}

/** Function to manage HID report generation and transmission to the host, when in report mode. */
void HID_Task(void)
{
	/* Device must be connected and configured for the task to run */
	if (USB_DeviceState != DEVICE_STATE_Configured)
	  return;

	/* Send the next keypress report to the host */
	SendNextReport();

	/* Process the LED report sent from the host */
	ReceiveNextReport();
}


/** Event handler for the CDC Class driver Line Encoding Changed event.
 *
 *  \param[in] CDCInterfaceInfo  Pointer to the CDC class interface configuration structure being referenced
 */
// void EVENT_CDC_Device_LineEncodingChanged(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo)
// {
// 	uint8_t ConfigMask = 0;

// 	switch (CDCInterfaceInfo->State.LineEncoding.ParityType)
// 	{
// 		case CDC_PARITY_Odd:
// 			ConfigMask = ((1 << UPM11) | (1 << UPM10));		
// 			break;
// 		case CDC_PARITY_Even:
// 			ConfigMask = (1 << UPM11);		
// 			break;
// 	}

// 	if (CDCInterfaceInfo->State.LineEncoding.CharFormat == CDC_LINEENCODING_TwoStopBits)
// 	  ConfigMask |= (1 << USBS1);

// 	switch (CDCInterfaceInfo->State.LineEncoding.DataBits)
// 	{
// 		case 6:
// 			ConfigMask |= (1 << UCSZ10);
// 			break;
// 		case 7:
// 			ConfigMask |= (1 << UCSZ11);
// 			break;
// 		case 8:
// 			ConfigMask |= ((1 << UCSZ11) | (1 << UCSZ10));
// 			break;
// 	}

// 	/* Must turn off USART before reconfiguring it, otherwise incorrect operation may occur */
// 	UCSR1B = 0;
// 	UCSR1A = 0;
// 	UCSR1C = 0;

// 	/* Special case 57600 baud for compatibility with the ATmega328 bootloader. */	
// 	UBRR1  = (CDCInterfaceInfo->State.LineEncoding.BaudRateBPS == 57600)
// 			 ? SERIAL_UBBRVAL(CDCInterfaceInfo->State.LineEncoding.BaudRateBPS)
// 			 : SERIAL_2X_UBBRVAL(CDCInterfaceInfo->State.LineEncoding.BaudRateBPS);	

// 	UCSR1C = ConfigMask;
// 	UCSR1A = (CDCInterfaceInfo->State.LineEncoding.BaudRateBPS == 57600) ? 0 : (1 << U2X1);
// 	UCSR1B = ((1 << RXCIE1) | (1 << TXEN1) | (1 << RXEN1));
// }

/** ISR to manage the reception of data from the serial port, placing received bytes into a circular buffer
 *  for later transmission to the host.
 */
ISR(USART1_RX_vect, ISR_BLOCK)
{
	uint8_t ReceivedByte = UDR1;

	if (USB_DeviceState == DEVICE_STATE_Configured)
	  RingBuffer_Insert(&USARTtoUSB_Buffer, ReceivedByte);
}

/** Event handler for the CDC Class driver Host-to-Device Line Encoding Changed event.
 *
 *  \param[in] CDCInterfaceInfo  Pointer to the CDC class interface configuration structure being referenced
 */
// void EVENT_CDC_Device_ControLineStateChanged(USB_ClassInfo_CDC_Device_t* const CDCInterfaceInfo)
// {
// 	bool CurrentDTRState = (CDCInterfaceInfo->State.ControlLineStates.HostToDevice & CDC_CONTROL_LINE_OUT_DTR);

// 	if (CurrentDTRState)
// 	  AVR_RESET_LINE_PORT &= ~AVR_RESET_LINE_MASK;
// 	else
// 	  AVR_RESET_LINE_PORT |= AVR_RESET_LINE_MASK;
// }
