################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../MCAL/I2C/I2C_program.c 

OBJS += \
./MCAL/I2C/I2C_program.o 

C_DEPS += \
./MCAL/I2C/I2C_program.d 


# Each subdirectory must supply rules for building sources it contributes
MCAL/I2C/%.o MCAL/I2C/%.su MCAL/I2C/%.cyclo: ../MCAL/I2C/%.c MCAL/I2C/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m3 -std=gnu11 -g3 -DDEBUG -DSTM32 -DSTM32F1 -DSTM32F103C8Tx -c -I../Inc -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/HAL" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/LIB" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/HAL/HGPS" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/HAL/LCD_SPI" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/AFIO" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/EXTI" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/GPIO" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/I2C" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/NVIC" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/RCC" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/SPI" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/SysTickTimer" -I"/Users/youssefjoe/STM32Cube/Repository/STM32Cube_FW_F1_V1.8.7/Baremetal_Firmware/MCAL/UART" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-MCAL-2f-I2C

clean-MCAL-2f-I2C:
	-$(RM) ./MCAL/I2C/I2C_program.cyclo ./MCAL/I2C/I2C_program.d ./MCAL/I2C/I2C_program.o ./MCAL/I2C/I2C_program.su

.PHONY: clean-MCAL-2f-I2C

