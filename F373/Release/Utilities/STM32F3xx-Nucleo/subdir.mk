################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Utilities/STM32F3xx-Nucleo/stm32f3xx_nucleo.c 

OBJS += \
./Utilities/STM32F3xx-Nucleo/stm32f3xx_nucleo.o 

C_DEPS += \
./Utilities/STM32F3xx-Nucleo/stm32f3xx_nucleo.d 


# Each subdirectory must supply rules for building sources it contributes
Utilities/STM32F3xx-Nucleo/%.o: ../Utilities/STM32F3xx-Nucleo/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo %cd%
	arm-none-eabi-gcc -mcpu=cortex-m4 -mthumb -mfloat-abi=soft -DNUCLEO_F334R8 -DSTM32F3 -DSTM32F33 -DSTM32 -DSTM32F334R8Tx -DUSE_HAL_DRIVER -DSTM32F334x8 -I"C:/dev/workspace/DelayGenerator/inc" -I"C:/dev/workspace/DelayGenerator/CMSIS/core" -I"C:/dev/workspace/DelayGenerator/CMSIS/device" -I"C:/dev/workspace/DelayGenerator/HAL_Driver/Inc" -I"C:/dev/workspace/DelayGenerator/Utilities/STM32F3xx-Nucleo" -O3 -Wall -fmessage-length=0 -ffunction-sections -c -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


