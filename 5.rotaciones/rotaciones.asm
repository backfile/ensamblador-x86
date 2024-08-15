section .data
ln db 10, 13

section .bss
resultado resb 1


section .text
	global _start
_start:
mov bl, 128
rol bl, 1
add bl, 48
mov [resultado], bl
;Imprimir en pantalla

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

; Finalizar el programa

mov eax, 1
mov ebx, 0

int 0x80
