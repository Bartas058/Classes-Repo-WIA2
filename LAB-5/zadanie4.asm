org 100h

MOV AX, [a]
MOV DL, [b]
DIV DL
ADD AL, [c]
MOV byte [y], AL

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0