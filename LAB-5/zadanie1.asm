org 100h

MOV AX, [a]
ADD AX, [b]
ADD AX, [c]
MOV byte [y], AL

MOV AH, 00h
INT 21h

a DW 0x03
b DW 0x3A
c DW 0x4A
y DW 0x0