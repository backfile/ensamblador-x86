section .data
msg db "Hola mundo!",0xa,0xd ; Definicion de un mensaje con salto de linea al final en hexadecimal. (db indica 1 byte para cada valor)
len equ $-msg ; 

section .text
	global _start
	
_start:
mov eax, 4 ; Registro eax con el valor 4 para indicar que queremos escribir.
mov ebx, 1 ; Registro ebx con el valor 1 para indicar donde queremos escribir (en pantalla)
mov ecx, msg ; Registro ecx para indicar que queremos escribir (msg se reemplaza por la direccion en memoria asignada para msg)
mov edx, len ; Indicar la cantidad de bytes.
int 0x80 ; Interrupcion de software.

mov eax, 1 ; Indicar que finalizo correctamente.
int 0x80 
