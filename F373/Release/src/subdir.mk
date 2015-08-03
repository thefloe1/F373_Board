################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/SI5328.c \
../src/gpio.c \
../src/hrtim.c \
../src/i2c.c \
../src/main.c \
../src/stm32f3xx_it.c \
../src/syscalls.c \
../src/system_stm32f3xx.c \
../src/tim.c \
../src/usart.c 

OBJS += \
./src/SI5328.o \
./src/gpio.o \
./src/hrtim.o \
./src/i2c.o \
./src/main.o \
./src/stm32f3xx_it.o \
./src/syscalls.o \
./src/system_stm32f3xx.o \
./src/tim.o \
./src/usart.o 

C_DEPS += \
./src/SI5328.d \
./src/gpio.d \
./src/hrtim.d \
./src/i2c.d \
./src/main.d \
./src/stm32f3xx_it.d \
./src/syscalls.d \
./src/system_stm32f3xx.d \
./src/tim.d \
./src/usart.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -DNUCLEO_F334R8 -DSTM32F3 -DSTM32F33 -DSTM32 -DSTM32F334R8Tx -DUSE_HAL_DRIVER -DSTM32F334x8 -I"C:/dev/workspace/DelayGenerator/inc" -I"C:/dev/workspace/DelayGenerator/CMSIS/core" -I"C:/dev/workspace/DelayGenerator/CMSIS/device" -I"C:/dev/workspace/DelayGenerator/HAL_Driver/Inc" -I"C:/dev/workspace/DelayGenerator/Utilities/STM32F3xx-Nucleo" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


