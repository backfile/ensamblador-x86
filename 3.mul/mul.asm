section .bss
resultado resb 1

section .text
	global _start
_start:
mov ax, 3
mov bx, 2

; MUltiplicar 3 x 2

mul bx ; A ax lo multiplica en automatico.

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
