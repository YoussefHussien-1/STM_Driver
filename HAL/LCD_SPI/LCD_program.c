/*********************************************************************************/
/**************** Author    : Youssef Hussein              *********************/
/**************** Date      : 26 Mar 2026                   *********************/
/**************** Version   : 0.1                          *********************/
/**************** File Name : LCD_program.c                *********************/
/*********************************************************************************/

#ifndef     LCD_PROGRAM_C_
#define     LCD_PROGRAM_C_

#include "STD_TYPES.h"
#include "BIT_MATH.h"
#include "LCD_interface.h"
#include "LCD_private.h"
#include "LCD_config.h"
#include "GPIO_interface.h"
#include "SPI_interface.h"

/**
 * @brief Initializes the LCD by initializing the SPI peripheral.
 */
void HLCD_voidInit(void){
    Spi_init();
}

/**
 * @brief Converts an integer to a string (ASCII).
 * @param Copy_s32Number: The integer number to convert.
 * @param Add_u8String: Pointer to the buffer where the string will be stored.
 * @param Copy_u8Base: The numerical base (e.g., 10 for Decimal, 16 for Hex).
 */
void itoa(s32 Copy_s32Number, u8 *Add_u8String, u8 Copy_u8Base) {
    u8 i = 0;
    u8 isNegative = 0;

    // Handle negative numbers for base 10
    if (Copy_s32Number < 0 && Copy_u8Base == 10) {
        isNegative = 1;
        Copy_s32Number = -Copy_s32Number;
    }

    // Extract characters from the number in reverse order
    do {
        u8 rem = Copy_s32Number % Copy_u8Base;
        // Convert remainder to character (handles digits and hex letters)
        Add_u8String[i++] = (rem > 9) ? (rem - 10) + 'a' : rem + '0';
        Copy_s32Number = Copy_s32Number / Copy_u8Base;
    } while (Copy_s32Number != 0);

    // Append negative sign if needed
    if (isNegative) {
        Add_u8String[i++] = '-';
    }

    Add_u8String[i] = '\0'; // Null-terminate the string

    // Reverse the string to get the correct order
    u8 start = 0;
    u8 end = i - 1;
    while (start < end) {
        u8 temp = Add_u8String[start];
        Add_u8String[start] = Add_u8String[end];
        Add_u8String[end] = temp;
        start++;
        end--;
    }
}

/**
 * @brief Sets RGB LED color using SPI.
 */
void HLED_voidSetColor(u8 Copy_u8Red, u8 Copy_u8Green, u8 Copy_u8Blue){
    GPIO_SetPinValue(GPIO_PortA, GPIO_PIN5, GPIO_HIGH);

    Spi_u8Transmit(Copy_u8Red);
    Spi_u8Transmit(Copy_u8Green);
    Spi_u8Transmit(Copy_u8Blue);

    GPIO_SetPinValue(GPIO_PortA, GPIO_PIN5, GPIO_LOW);
}

/**
 * @brief Converts a float value to a string.
 */
void ftoa(f32 Copy_f32Value, u8 *Add_u8String, u8 Copy_u8DecimalPlaces){
    s32 Local_s32IntegarPart = Copy_f32Value;
    itoa(Local_s32IntegarPart, Add_u8String, 10);

    u8 i = 0;
    while (Add_u8String[i] != '\0') {
        i++;
    }

    Add_u8String[i] = '.'; // Append decimal point
    Add_u8String[i + 1] = '\0';

    f32 Local_f32Fraction = Copy_f32Value - (f32)Local_s32IntegarPart;
    for (u8 j = 0; j < Copy_u8DecimalPlaces; j++) {
        Local_f32Fraction *= 10;
    }

    // Convert fraction part to string and append it
    itoa((s32)Local_f32Fraction, Add_u8String + i + 1, 10);
}

/**
 * @brief Sends a single character to the LCD via SPI.
 * @param Copy_u8Char: The character to be displayed.
 */
void HLCD_voidSendChar(u8 Copy_u8Char) {
    /* Set RS Pin to HIGH to specify Data transmission */
    // GPIO_SetPinValue(LCD_RS_PORT, LCD_RS_PIN, GPIO_HIGH);

    /* Assert Slave Select (SS) Pin */
    GPIO_SetPinValue(GPIO_PortA, GPIO_PIN5, GPIO_HIGH);

    /* Transmit character byte via SPI */
    Spi_u8Transmit(Copy_u8Char);

    /* De-assert Slave Select (SS) Pin */
    GPIO_SetPinValue(GPIO_PortA, GPIO_PIN5, GPIO_LOW);
}

/**
 * @brief Prints a full string on the LCD.
 * @param string: Pointer to the null-terminated string.
 */
void HLCD_voidPrintString(u8 *string) {
    if (string != NULL) {
        while (*string != '\0') {
            HLCD_voidSendChar(*string);
            string++;
        }
    }
}

#endif /* LCD_PROGRAM_C_ */
