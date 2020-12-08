#include <stdio.h>
#include <system.h>
#include <altera_avalon_uart_regs.h>
#include <altera_avalon_timer_regs.h>
#include <altera_avalon_pio_regs.h>
//#include <sys/alt_irq.h>
#include <stdint.h>

#define header_byte 0x0F
#define footer_byte 0x00


void timerSetup(unsigned int delay);
int checkTimerTO();
int checkTimerTONoReset();
void decode();
void decoder_write();
void decoder_read();
int checkRXDATA_RRDY();

int data[25];
int valid_data[25];
int soft_channels[16];
int channels[16];
int data_index = 0;
int last_byte;
int current_byte;
int ledStatusG = 0b00;

int hex_disp;

int seg7Code[] = {0b00111111, 0b00000110, 0b01011011, 0b01001111, 0b01100110, //#0-4
				  0b01101101, 0b01111101, 0b00000111, 0b01111111, 0b01100111, //#5-9
		          0b01110111, 0b01111100, 0b00111001, 0b01011110, 0b01111001, 0b01110001 //#A-F
};

int reg_base[] = {SBUS_DECODER_REG_0_BASE,
				  SBUS_DECODER_REG_1_BASE,
				  SBUS_DECODER_REG_2_BASE,
				  SBUS_DECODER_REG_3_BASE,
				  SBUS_DECODER_REG_4_BASE,
				  SBUS_DECODER_REG_5_BASE,
				  SBUS_DECODER_REG_6_BASE,
				  SBUS_DECODER_REG_7_BASE,
				  SBUS_DECODER_REG_8_BASE,
				  SBUS_DECODER_REG_9_BASE,
				  SBUS_DECODER_REG_10_BASE
};

int channel_base[] = {SBUS_DECODER_CHANNEL_0_BASE,
					  SBUS_DECODER_CHANNEL_1_BASE,
					  SBUS_DECODER_CHANNEL_2_BASE,
					  SBUS_DECODER_CHANNEL_3_BASE,
					  SBUS_DECODER_CHANNEL_4_BASE,
					  SBUS_DECODER_CHANNEL_5_BASE,
					  SBUS_DECODER_CHANNEL_6_BASE,
					  SBUS_DECODER_CHANNEL_7_BASE,
					  SBUS_DECODER_CHANNEL_8_BASE,
					  SBUS_DECODER_CHANNEL_9_BASE,
					  SBUS_DECODER_CHANNEL_10_BASE,
					  SBUS_DECODER_CHANNEL_11_BASE,
					  SBUS_DECODER_CHANNEL_12_BASE,
					  SBUS_DECODER_CHANNEL_13_BASE,
					  SBUS_DECODER_CHANNEL_14_BASE,
					  SBUS_DECODER_CHANNEL_15_BASE
};

/*
// channel one is 100%
int data[] = {0xF3, // (data 1)
			  0xE3, // CH1
			  0x1E, // CH2
			  0xF8, // CH3
			  0xC0, // CH4
			  0x07, // CH5
			  0x3E, // CH6
			  0xF0, //
			  0x81, // CH7
			  0x0F, // CH8
			  0x7C, //
			  0xE0, // CH9
			  0x03, // CH10
			  0x1F, // CH11
			  0xF8, //
			  0xC0, // CH12
			  0x07, // CH13
			  0x3E, // CH14
			  0xF0, //
			  0x81, // CH15
			  0x0F, // CH16
			  0x7C  // (data 22)
			  };
*/

int main() {

  printf("decoder test\n");

  IOWR_ALTERA_AVALON_UART_DIVISOR(UART_0_BASE,499);
  IOWR_ALTERA_AVALON_PIO_DATA(LEDG_BASE,0x00);
  IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE,0x00);
  timerSetup(50000000);//1 sec

  /*
  decode();
  for(int reg=0;reg<16;reg++){
  	  printf("software channel %d = %d \n",reg, soft_channels[reg]);
    }
*/

  while(1){
	  //
	  if(checkRXDATA_RRDY()){
		  current_byte = IORD_ALTERA_AVALON_UART_RXDATA(UART_0_BASE) & 0xFF;
		  if(data_index == 0){
			  //
			  if((current_byte == header_byte) && (last_byte == footer_byte)){
				  data_index++;
			  }else{
				  data_index = 0;
			  }
		  }else{
			  if(data_index < 25){
				  data[data_index] = current_byte;
				  data_index++;
			  }
			  if(data_index == 24){
				  if(current_byte == footer_byte){//if done and complete
					  data_index = 0;
					  IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE,0b01);
					  decoder_write();
					  decoder_read();
				  }else{//if done and not complete
					  data_index = 0;
					  IOWR_ALTERA_AVALON_PIO_DATA(LEDR_BASE,0b00);
				  }
			  }
		  }
		  last_byte = current_byte;
	  }
	  if(checkTimerTO()){
		  timerSetup(25000000);//1 sec
		  printf("channel 1 = %d \n",channels[0]);
	  }

  }//while

  return 0;
}//main


void decoder_write(){
	 //write to decoder
	  for(int reg=0;reg<11;reg++){
		  //IOWR_SBUSdecoderDataIN(SLAVE_TEMPLATE_0_BASE, reg, data[(reg*2)+1]|data[(reg*2)]);
		  IOWR_ALTERA_AVALON_PIO_DATA(reg_base[reg], data[1+(reg*2)+1]<<8|data[1+(reg*2)]);
	  }
}

void decoder_read(){
	  //read from the decoder
	  for(int reg=0;reg<16;reg++){
		  //int ch_data = IORD_SBUSdecoderDataOUT(SLAVE_TEMPLATE_0_BASE, reg);
		  channels[reg] = IORD_ALTERA_AVALON_PIO_DATA(channel_base[reg]);
		  //printf("channel %d = %d \n",reg,ch_data);
	  }
}

int checkRXDATA_RRDY(){

	int status = IORD_ALTERA_AVALON_UART_STATUS(UART_0_BASE);
	if((status & 0b10000000) > 0){
		IOWR_ALTERA_AVALON_PIO_DATA(LEDG_BASE,0x01);
		return 1;
	}
	return 0;
}

void decode(){
	soft_channels[0]  = (uint16_t) ((data[1+0]    |data[1+1] <<8)                 & 0x07FF);
	soft_channels[1]  = (uint16_t) ((data[1+1]>>3 |data[1+2] <<5)                 & 0x07FF);
	soft_channels[2]  = (uint16_t) ((data[1+2]>>6 |data[1+3] <<2 |data[4]<<10)  	 & 0x07FF);
	soft_channels[3]  = (uint16_t) ((data[1+4]>>1 |data[1+5] <<7)                 & 0x07FF);
	soft_channels[4]  = (uint16_t) ((data[1+5]>>4 |data[1+6] <<4)                 & 0x07FF);
	soft_channels[5]  = (uint16_t) ((data[1+6]>>7 |data[1+7] <<1 |data[8]<<9)   	 & 0x07FF);
	soft_channels[6]  = (uint16_t) ((data[1+8]>>2 |data[1+9] <<6)                 & 0x07FF);
	soft_channels[7]  = (uint16_t) ((data[1+9]>>5 |data[1+10]<<3)                 & 0x07FF);
	soft_channels[8]  = (uint16_t) ((data[1+11]   |data[1+12]<<8)                 & 0x07FF);
	soft_channels[9]  = (uint16_t) ((data[1+12]>>3|data[1+13]<<5)                 & 0x07FF);
	soft_channels[10] = (uint16_t) ((data[1+13]>>6|data[1+14]<<2 |data[15]<<10) 	 & 0x07FF);
	soft_channels[11] = (uint16_t) ((data[1+15]>>1|data[1+16]<<7)                 & 0x07FF);
	soft_channels[12] = (uint16_t) ((data[1+16]>>4|data[1+17]<<4)                 & 0x07FF);
	soft_channels[13] = (uint16_t) ((data[1+17]>>7|data[1+18]<<1 |data[19]<<9)  	 & 0x07FF);
	soft_channels[14] = (uint16_t) ((data[1+19]>>2|data[1+20]<<6)                 & 0x07FF);
	soft_channels[15] = (uint16_t) ((data[1+20]>>5|data[1+21]<<3)                 & 0x07FF);
	return;
}



void timerSetup(unsigned int delay){
	IOWR_ALTERA_AVALON_TIMER_CONTROL(HIGH_RES_TIMER_BASE,0b1000);//stop timer
	IOWR_ALTERA_AVALON_TIMER_STATUS(HIGH_RES_TIMER_BASE,0b00);//reset TO bit
	//Load timer regs
	IOWR_ALTERA_AVALON_TIMER_PERIODL(HIGH_RES_TIMER_BASE, delay & ALTERA_AVALON_TIMER_PERIODL_MSK);
	IOWR_ALTERA_AVALON_TIMER_PERIODH(HIGH_RES_TIMER_BASE, (delay >> 16) \
			& ALTERA_AVALON_TIMER_PERIODH_MSK);
	IOWR_ALTERA_AVALON_TIMER_CONTROL(HIGH_RES_TIMER_BASE, 0b0100);//start timer
	return;
}


int checkTimerTO(){
	int status = IORD_ALTERA_AVALON_TIMER_STATUS(HIGH_RES_TIMER_BASE);
	if(status & 0x1){// if TO is 1
		IOWR_ALTERA_AVALON_TIMER_STATUS(HIGH_RES_TIMER_BASE, 0b0);//reset TO
		//IOWR_ALTERA_AVALON_TIMER_CONTROL(HIGH_RES_TIMER_BASE,0b0100);// restart timer
		return 1;
	}
	return 0;
}

int checkTimerTONoReset(){
	int status = IORD_ALTERA_AVALON_TIMER_STATUS(HIGH_RES_TIMER_BASE);
	if(status & 0x1){// if TO is 1
		//IOWR_ALTERA_AVALON_TIMER_STATUS(HIGH_RES_TIMER_BASE, 0b0);//reset TO
		//IOWR_ALTERA_AVALON_TIMER_CONTROL(HIGH_RES_TIMER_BASE,0b0100);// restart timer
		return 1;
	}
	return 0;
}
