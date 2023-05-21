org 100h

MOV AX, [b]
MOV DL, [c]
DIV DL
MOV byte [y], AL
MOV AL, [a]
MOV DL, [y]
MUL DL
MOV word [y], AX

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0