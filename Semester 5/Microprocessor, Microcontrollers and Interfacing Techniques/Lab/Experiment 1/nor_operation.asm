MOV AX,1100H
MOV BX,1010H
OR AX,BX
NOT AX
MOV [0202H], AX
HLT