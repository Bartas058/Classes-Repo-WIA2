org 100h

MOV AH, 01h
INT 21h

CMP AL, 5Fh
JA greater
JB lesser
JE equal

greater:
MOV AH, 02h
MOV DL, '>'
INT 21h
JMP exit

lesser:
MOV AH, 02h
MOV DL, '<'
INT 21h
JMP exit

equal:
MOV AH, 02h
MOV DL, '='
INT 21h
MOV DL, '='
INT 21h
JMP exit

exit:
MOV AH, 4Ch
INT 21h