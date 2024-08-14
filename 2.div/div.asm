section .bss
resultado resb 1

section .text
	global _start
_start:

mov bx, 2 ; divisor
mov dx, 0 ; Aqui se guarda el resto
mov ax, 8 ; el numero a dividir, aqui se guarda el resultado
div bx ; Divido ax / bx

add ax, 48
mov [resultado], ax

mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1

int 0x80

mov eax, 1
mov ebx, 0

int 0x80
