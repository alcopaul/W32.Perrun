;
; sp4ce.asm
;
; alCoPaUL [GIMO][As][aBrA][NPA][b8]
; 10/6/2021
;
; nasm <dash>f win32 sp4ce.asm
; link sp4ce.obj /subsystem:console /defaultlib:msvcrt.lib /entry:m
;
global m
extern _printf
section .text
m:mov al,10
mov bl,45
z:lea edx,a
mov cx,491
r:cmp byte[edx],bl
je s
jmp u
s:mov byte[edx],al
u:inc edx
dec cx
cmp cx,0
jnz r
push a
push i
call _printf
mov al,10
cmp bl,45
xchg al,bl
je z
push x
push i
call _printf
ret
section .data
x:db 2Ch,32h,37h,68h,2Ch,30h,0
i:db 25h,73h,0
a:db ';-; sp4ce.asm-;-; alCoPaUL [GIMO][As][aBrA][NPA][b8]-; 10/6/2021-;-; nasm <dash>f win32 sp4ce.asm-; link sp4ce.obj /subsystem:console /defaultlib:msvcrt.lib /entry:m-;-global m-extern _printf-section .text-m:mov al,10-mov bl,45-z:lea edx,a-mov cx,491-r:cmp byte[edx],bl-je s-jmp u-s:mov byte[edx],al-u:inc edx-dec cx-cmp cx,0-jnz r-push a-push i-call _printf-mov al,10-cmp bl,45-xchg al,bl-je z-push x-push i-call _printf-ret-section .data-x:db 2Ch,32h,37h,68h,2Ch,30h,0-i:db 25h,73h,0-a:db ',27h,0