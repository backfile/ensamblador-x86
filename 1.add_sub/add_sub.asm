; IMPORTANTE el resultado que se muestra es el correspondiente caracter de la tabla ASCII y no el numero en si.

section .data
resultado db '0'

section .bss
resultado2 resb 1

section .text
	global _start
	
_start:
mov eax, 2  
mov ebx, 3 

; SUMA
add eax, ebx
add eax, 48 ; Para mostrar el 5 en la tabla ASCII se debe tener el numero 53
mov [resultado], eax ; Guardo el resultado de ese registro en memoria

;Mostrar en pantalla
mov eax, 4
mov ebx, 1
mov ecx, resultado
mov edx, 1 ; Mostrar 1 byte

int 0x80 ; Llamada al sistema para pedir el servicio al kernel

;RESTA

mov eax, 8
mov ebx, 1
sub eax, ebx
add eax, 48
mov [resultado2], eax

;Mostrar en pantalla
mov eax, 4
mov ebx, 1
mov ecx, resultado2
mov edx, 1 ; Mostrar 1 byte

int 0x80 ; Llamada al sistema para pedir el servicio al kernel


; Avisarle al sistema operativo que el programa finalizo con exito

mov eax, 1
mov ebx, 0
int 0x80
