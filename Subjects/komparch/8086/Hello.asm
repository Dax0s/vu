; Test assembly program

.MODEL small

.STACK 100h

.DATA
hello_message db 'Hello, World!',0dh,0ah,'$'

.CODE
strt:
    mov ax,@data
    mov ds,ax

    mov ah,9
    mov dx,offset hello_message
    int 21h

    mov ax,4c00h
    int 21h
end strt
