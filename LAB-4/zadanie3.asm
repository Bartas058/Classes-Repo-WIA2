org 100h

start:
MOV AH, 09h
MOV DX, msg1
INT 21h

MOV AH, 01h
INT 21h

CMP AL, 'Q'
JE end

MOV AH, 02h
MOV DL, AL
INT 21h

JMP start

end:
MOV AH, 09h
MOV DX, msg2
INT 21h

MOV AH, 4Ch
INT 21h

msg1 DB '$'
msg2 DB '$'