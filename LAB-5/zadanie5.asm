org 100h

MOV AX, [b]
ADD AX, [c]
MOV DL, AL
MOV AX, [a]
DIV DL
MOV byte [y], AL

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0