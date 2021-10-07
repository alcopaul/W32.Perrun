;
; sulfur712.asm
;
; alCoPaUL [GIMO][As][aBrA][NPA][b8]
; 10/7/2021
;
; nasm <dash>f bin <dash>o sulfur712.com sulfur712.asm
;
org 100h
mov al,10
mov ah,45
z:lea bx,[k]
mov cx,405
r:cmp byte[bx],ah
je s
jmp u
s:mov byte[bx],al
u:inc bx
dec cx
cmp cx,0
jnz r
lea dx,[k]
mov ah,9
int 21h
cmp al,10
mov ah,45
xchg al,ah
je z
lea dx,[x]
mov ah,9
int 21h
int 20h
x:db 2Ch,32h,37h,68h,2Ch,32h,34h,68h,24h
k:db ';-; sulfur712.asm-;-; alCoPaUL [GIMO][As][aBrA][NPA][b8]-; 10/7/2021-;-; nasm <dash>f bin <dash>o sulfur712.com sulfur712.asm-;-org 100h-mov al,10-mov ah,45-z:lea bx,[k]-mov cx,405-r:cmp byte[bx],ah-je s-jmp u-s:mov byte[bx],al-u:inc bx-dec cx-cmp cx,0-jnz r-lea dx,[k]-mov ah,9-int 21h-cmp al,10-mov ah,45-xchg al,ah-je z-lea dx,[x]-mov ah,9-int 21h-int 20h-x:db 2Ch,32h,37h,68h,2Ch,32h,34h,68h,24h-k:db ',27h,24h