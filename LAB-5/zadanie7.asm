org 100h

MOV AL, [a]
MOV DL, [a]
MUL DL
MOV byte [y], AL
MOV AL, [b]
MOV DL, 02h
MUL DL
MOV BL, [y]
ADD BL, AL
ADD BL, [c]
MOV byte [y], BL

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0