;
; spc.asm
;
; alCoPaUL [GIMO][As][aBrA][NPA][b8]
; 10/5/2021
;
; nasm -f win64 spc.asm
; link spc.obj /subsystem:console /defaultlib:msvcrt.lib /entry:m /largeaddressaware:no
;
global m
extern printf
section .text
m:sub sp,8
mov al,10
mov bl,95
z:lea r9,a
mov dx,516
r:cmp byte[r9],bl
je s
jmp u
s:mov byte[r9],al
u:inc r9
dec dx
cmp dx,0
jnz r
lea rdx,a
lea rcx,i
call printf
mov al,10
cmp bl,95
xchg al,bl
je z
lea rdx,x
lea rcx,i
call printf
ret
section .data
x:db 2Ch,32h,37h,68h,2Ch,30h,0
i:db 25h,73h,0
a:db ';_; spc.asm_;_; alCoPaUL [GIMO][As][aBrA][NPA][b8]_; 10/5/2021_;_; nasm -f win64 spc.asm_; link spc.obj /subsystem:console /defaultlib:msvcrt.lib /entry:m /largeaddressaware:no_;_global m_extern printf_section .text_m:sub sp,8_mov al,10_mov bl,95_z:lea r9,a_mov dx,516_r:cmp byte[r9],bl_je s_jmp u_s:mov byte[r9],al_u:inc r9_dec dx_cmp dx,0_jnz r_lea rdx,a_lea rcx,i_call printf_mov al,10_cmp bl,95_xchg al,bl_je z_lea rdx,x_lea rcx,i_call printf_ret_section .data_x:db 2Ch,32h,37h,68h,2Ch,30h,0_i:db 25h,73h,0_a:db ',27h,0