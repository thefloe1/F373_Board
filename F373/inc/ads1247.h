/*
 * ads1247.h
 *
 *  Created on: 03.08.2015
 *      Author: Tobias
 */

#ifndef ADS1247_H_
#define ADS1247_H_

#include "stm32f3xx_hal.h"
#include "spi.h"

void ADS1247_Init();

uint8_t ADS1247_xfer(uint8_t byte);
void ADS1247_Reset();
void ADS1247_SELFOCAL();
uint8_t ADS1247_ReadReg(uint8_t reg);
void ADS1247_WriteReg(uint8_t reg, uint8_t val);
uint32_t ADS1247_Value();

#endif /* ADS1247_H_ */
