################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/RCC/RCC_program.c 

OBJS += \
./MCAL/RCC/RCC_program.o 

C_DEPS += \
./MCAL/RCC/RCC_program.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/RCC/%.o MCAL/RCC/%.su MCAL/RCC/%.cyclo: ../MCAL/RCC/%.c MCAL/RCC/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/HAL" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/LIB" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/HAL/HGPS" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/HAL/LCD_SPI" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/AFIO" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/EXTI" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/GPIO" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/I2C" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/NVIC" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/RCC" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/SPI" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/SysTickTimer" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/UART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MCAL-2f-RCC

clean-MCAL-2f-RCC:
	-$(RM) ./MCAL/RCC/RCC_program.cyclo ./MCAL/RCC/RCC_program.d ./MCAL/RCC/RCC_program.o ./MCAL/RCC/RCC_program.su

.PHONY: clean-MCAL-2f-RCC

