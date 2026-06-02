#include "UART_private.h"
#ifndef         UART_INTERFACE_H_
#define         UART_INTERFACE_H_



void MUSART_voidInit(UART_t *UARTx, u32 Copy_u32BaudRate);
void UART_voidTransmit(UART_t *UARTx, u8 Copy_u8Data );
u8 UART_u8Receive(UART_t *UARTx);
void MUSART1_voidSendString(UART_t *UARTx ,u8 *Copy_ptrString);


#endif
