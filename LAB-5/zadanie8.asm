org 100h

MOV AL, [c]
MOV DL, 02h
MUL DL
MOV BL, AL
MOV AL, [b]
MOV DL, BL
DIV DL
MOV byte [y], AL
MOV AL, [a]
MOV DL, 02h
MUL DL
MOV DL, [y]
MUL DL
MOV byte [y], AL

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0