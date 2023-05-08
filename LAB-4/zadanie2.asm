org 100h

MOV AH, 01h
INT 21h

CMP AL, 'A'
JL error
CMP AL, 'Z'
JLE uppercase

CMP AL, 'a'
JL error
CMP AL, 'z'
JLE lowercase

error:
MOV AH, 02h
MOV DL, ' '
INT 21h
MOV AH, 09h
MOV DX, msg2
INT 21h
JMP end

uppercase:
MOV AH, 02h
MOV DL, ' '
INT 21h
MOV AH, 09h
MOV DX, msg1
INT 21h
JMP end

lowercase:
MOV AH, 02h
MOV DL, ' '
INT 21h
MOV AH, 09h
MOV DX, msg3
INT 21h
JMP end

end:
MOV AH, 4Ch
INT 21h

msg1 DB 'wielka litera$'
msg2 DB 'error$'
msg3 DB 'mala litera$'