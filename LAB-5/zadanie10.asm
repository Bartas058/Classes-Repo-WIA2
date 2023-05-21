org 100h

MOV AX, [a]
MOV DL, 02h
DIV DL
MOV byte [y], AL
MOV AX, [b]
MOV DL, 03h
DIV DL
ADD AL, [y]
MOV byte [y], AL
MOV AX, [c]
MOV DL, 04h
DIV DL
ADD AL, [y]
MOV byte [y], AL

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0