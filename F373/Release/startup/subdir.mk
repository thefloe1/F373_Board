################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
S_SRCS += \
../startup/startup_stm32f334x8.s 

OBJS += \
./startup/startup_stm32f334x8.o 


# Each subdirectory must supply rules for building sources it contributes
startup/%.o: ../startup/%.s
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Assembler'
	@echo %cd%
	arm-none-eabi-as -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -I"C:/dev/workspace/DelayGenerator/inc" -I"C:/dev/workspace/DelayGenerator/CMSIS/core" -I"C:/dev/workspace/DelayGenerator/CMSIS/device" -I"C:/dev/workspace/DelayGenerator/HAL_Driver/Inc" -I"C:/dev/workspace/DelayGenerator/Utilities/STM32F3xx-Nucleo" -g -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


