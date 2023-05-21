org 100h

MOV AL, [a]
MOV DL, [b]
MUL DL
ADD AX, [c]
MOV word [y], AX

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0