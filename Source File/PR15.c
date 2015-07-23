//=========================================================================
//	Author				: Cytron Technologies		
//	Project description             : Read Gas Sensor and Humidity Sensor using PIC
//                                        Microcontroller ADC and display the reading on LCD display
//                                      : PIC16F876A is used in this project.Compatible with
//                                        MPLAB IDE with HITECH C and XC8 compiler and by 
//                                        using MPLABX with HITECH C compiler v 9.82/v9.83 and XC8 compiler.
//==========================================================================

//	include
//==========================================================================
#if defined(__XC8)
   #include <xc.h>
   #pragma config CONFIG = 0x3F32
#else
#include <htc.h>                        //include the PIC microchip header file

//===========================================================================
// 	configuration
//============================================================================
__CONFIG (0x3F32);
//FOSC = HS        // Oscillator Selection bits (HS oscillator)
//WDTE = OFF       // Watchdog Timer Enable bit (WDT disabled)
//PWRTE = ON       // Power-up Timer Enable bit (PWRT enabled)
//BOREN = OFF      // Brown-out Reset Enable bit (BOR disabled)
//LVP = OFF        // Low-Voltage (Single-Supply) In-Circuit Serial Programming Enable bit (RB3 is digital I/O, HV on MCLR must be used for programming)
//CPD = OFF        // Data EEPROM Memory Code Protection bit (Data EEPROM code protection off)
//WRT = OFF        // Flash Program Memory Write Enable bits (Write protection off; all program memory may be written to by EECON control)
//CP = OFF         // Flash Program Memory Code Protection bit (Code protection off)



#endif
//	define
//==========================================================================
#define	RS		RB3	//RS pin of LCD display
#define	RW		RB2	//R/W pin of the LCD display
#define	E		RB1	//E pin of the LCD display
#define	B_LIGHT		RB0	//Backlight of LCD display (high to on)
#define	BUTTON1		RB5	//button 1 (active low)
#define	BUTTON2		RB4	//button 2 (active low)
#define	LCD_DATA	PORTC   //LCD display data PORT (8-bit)
#define	LED1		RA2	//led 1 (active high)
#define LED2		RA5	//led 2 (active high)

//	function prototype	(every function must have a fucntion prototype)
//==========================================================================
void delay(unsigned long data);
void send_config(unsigned char data);
void send_char(unsigned char data);
void lcd_goto(unsigned char data);
void lcd_clr(void);
void send_string(const char *s);
void send_num(unsigned short data);
unsigned char usart_rec(void);
void beep_short(void);
void beep_short2(void);
void beep_long(void);
unsigned char read_ad(unsigned char channel);

//	global variable
//==========================================================================

//	main function
//==========================================================================
void main(void)
{
	//assign variable
	unsigned char temp;			//declare a temporary variable for reading ADC
	unsigned char mode;			//declare a variable to represent current mode
	
	//set I/O input output
	TRISB = 0b11110000;				//configure PORT B I/O direction
	TRISA = 0b11011011;				//configure PORT A I/O direction
	TRISC = 0b00000000;				//configure PORT C I/O direction
	
	//configure lcd
	send_config(0b00000001);			//clear display at lcd
	send_config(0b00000010);			//Lcd Return to home 
	send_config(0b00000110);			//entry mode-cursor increase 1
	send_config(0b00001100);			//diplay on, cursor off and cursor blink off
	send_config(0b00111000);			//function set
				
	//configure ADC
	ADCON0=0b10000001;			//enable ADC converter module
	ADCON1=0b01000100;			//configure ADC and ANx pin

	//initial condition
	B_LIGHT=1;				//on backlight
	lcd_clr();				//clear lcd
	lcd_goto(0);				//set the lcd cursor to location 0	

	mode=1;					//set startup mode to mode 1
	LED1=1;					//on led 1
	LED2=0;					//off led 2
			
	while(1)				//infinity loop
	{
		if(BUTTON1==0) 			//if button 1 pressed
		{
			mode=1;			//set to mode 1
			LED2=0;			//off led 2
			LED1=1;			//on led 1
		}
		else if(BUTTON2==0)		//else if button 2 pressed
		{
			mode=2;			//set to mode 2
			LED1=0;			//off led 1
			LED2=1;			//on led 1
		}

		if(mode==1)					//if mode = 1
		{
			lcd_goto(0);				//set lcd cursor to location 0
			send_string("Gas Sensor      ");	//display "Gas Sensor"	
			temp=read_ad(0);			//read AN0 (Gas Sensor)
			lcd_goto(20);				//set lcd cursor to location 20
			send_num(temp);				//display the analog value of the gas sensor
		}
		else if(mode==2)				//if mode = 2
		{						
			lcd_goto(0);				//set lcd cursor to location 0
			send_string("Humidity Sensor ");	//display "Humidity Sensor"
			temp=read_ad(1);			//read AN1 (Humidity Sensor)
			lcd_goto(20);				//set lcd cursor to location 20
			send_num(temp);				//display the analog value of the gas sensor
		}
	}	
}

//	functions
//==========================================================================

void delay(unsigned long data)		//delay function, the delay time
{					//depend on the given value
	for( ;data>0;data-=1);
}

void send_config(unsigned char data)	//send lcd configuration 
{
	RW=0;				//set lcd to write mode
	RS=0;				//set lcd to configuration mode
	LCD_DATA=data;			//lcd data port = data
	E=1;				//pulse e to confirm the data
	delay(50);
	E=0;
	delay(50);
}

void send_char(unsigned char data)	//send lcd character
{
 	RW=0;				//set lcd to write mode
	RS=1;				//set lcd to display mode
	LCD_DATA=data;			//lcd data port = data
	E=1;				//pulse e to confirm the data
	delay(10);
	E=0;
	delay(10);
}

void lcd_goto(unsigned char data)		//set the location of the lcd cursor
{						//if the given value is (0-15) the 
 	if(data<16)				//cursor will be at the upper line
	{					//if the given value is (20-35) the 
	 	send_config(0x80+data);		//cursor will be at the lower line
	}					//location of the lcd cursor(2X16):
	else					// -----------------------------------------------------
	{					// | |00|01|02|03|04|05|06|07|08|09|10|11|12|13|14|15| |
	 	data=data-20;			// | |20|21|22|23|24|25|26|27|28|29|30|31|32|33|34|35| |
		send_config(0xc0+data);		// -----------------------------------------------------	
	}
}

void lcd_clr(void)				//clear the lcd
{
 	send_config(0x01);
	delay(600);	
}

void send_string(const char *s)                 //send a string to display in the lcd
{          
	unsigned char i=0;
  	while (s && *s)send_char (*s++);

}


void send_num(unsigned short data)               //function to display a value on lcd display
{
	unsigned char tenthou,thou,hund,tenth;
	
	tenthou=data/10000;                     //get tenthousand value
	data=data%10000;					
	thou=data/1000;				//get thousand value
	data=data%1000;
	hund=data/100;				//get hundred value
	data=data%100;		
	tenth=data/10;				//get tenth value
	data=data%10;				//get unit value
	
	send_char(0x30+tenthou);		//display the tenthousand value
	send_char(0x30+thou);			//display the thousand value
	send_char(0x30+hund);			//display the hundred value
	send_char(0x30+tenth);			//display the tenth value
	send_char(0x30+data);			//display the unit value
}

unsigned char read_ad(unsigned char channel)	//fucntion read analog input according to the given channel
{
	unsigned char result;			//declare a variable call result
	switch(channel)					
	{
		case 0:				//if channel = 0
			CHS2=0;			//CHS2=0
			CHS1=0;			//CHS1=0
			CHS0=0;			//CHS0=0
			break;
		case 1:				//if channel = 1
			CHS2=0;			//CHS=0
			CHS1=0;			//CHS=0
			CHS0=1;			//CHS=1
			break;
	}
	GO=1;					//start ADC convertion
	while(GO);				//wait for ADC convertion to complete
	result=ADRESH;				//read the result
	return result;				//return the result
}
