/*
 * ads1247.c
 *
 *  Created on: 03.08.2015
 *      Author: Tobias
 */


#include "ads1247.h"


uint8_t ADS1247_xfer(uint8_t byte)
{
	uint8_t ret;
	HAL_SPI_TransmitReceive(&hspi1, &byte, &ret, 1, 1000);
	return ret;
}

void ADS1247_Reset()
{
	ADS1247_xfer(0x06);
	HAL_Delay(100);
}

void ADS1247_SELFOCAL()
{
	ADS1247_xfer(0x62);
	HAL_Delay(4000);
}

uint8_t ADS1247_ReadReg(uint8_t reg)
{
  ADS1247_xfer(0x20 | (reg&0x0F));		// read id reg
  ADS1247_xfer(0x00);				// one reg
  return ADS1247_xfer(0x00);		// get data
}

void ADS1247_WriteReg(uint8_t reg, uint8_t val)
{
	  ADS1247_xfer(0x40 | (reg&0x0F));	// write reg
	  ADS1247_xfer(0x00);				// one reg
	  ADS1247_xfer(val);				// write data
}

uint32_t ADS1247_Value()
{
	uint32_t res = 0;

	ADS1247_xfer(0x12);
	res = ADS1247_xfer(0xFF);
	res <<= 8;
	res |= ADS1247_xfer(0xFF);
	res <<= 8;
	res |= ADS1247_xfer(0xFF);
	return res;
}
