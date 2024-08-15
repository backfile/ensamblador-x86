section .data
ln db 10, 13
longln equ 2

section .bss
resultado resb 1

section .text
	global _start
_start:
; Desplazamiento hacia la izquierda
mov ebx, 2
shl ebx, 1

add ebx, 48
mov [resultado], ebx

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1

int 0x80

; Salto de linea
mov eax, 4
mov ebx, 1
mov ecx, ln
mov edx, 2

int 0x80

; Desplazamiento hacia la derecha

mov ebx, 8
mov cl, 2 ; El registro cl se utiliza para especificar desplazamientos / rotaciones
shr ebx, cl

add ebx, 48
mov [resultado], ebx

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1

int 0x80

;Salto de linea

mov eax, 4
mov ebx, 1
mov ecx, ln
mov edx, 2

int 0x80

;Finalizar programa
mov eax, 1
mov ebx, 0

int 0x80
