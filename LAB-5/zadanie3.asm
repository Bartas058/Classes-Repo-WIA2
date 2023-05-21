org 100h

MOV AL, [a]
MOV DL, 02h
MUL DL
MOV byte [y], AL
MOV AL, [b]
MUL DL
ADD AL, [y]
MOV byte [y], AL
MOV AL, [c]
MUL DL
MOV BL, [y]
SUB BL, AL
MOV word [y], AX

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0