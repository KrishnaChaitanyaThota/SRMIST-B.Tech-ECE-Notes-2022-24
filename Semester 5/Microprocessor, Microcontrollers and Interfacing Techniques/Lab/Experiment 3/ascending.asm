MOV SI, 1200H
MOV CL, [SI]
DEC CL
LOOP3:
MOV SI, 1200H
MOV CH, [SI]
DEC CH
INC SI
LOOP2:
MOV AX,[SI]
INC SI
INC SI
CMP AX, [SI]

JC LOOP1
XCHG AX, [SI]
XCHG [SI-2], AX

LOOP1:
DEC CH
JNZ LOOP2
DEC CL
JNZ LOOP3
HLT