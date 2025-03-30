AREA Q3, CODE, READONLY
ENTRY

LDR r0, =nums
MOV r1, #5
MOV r2, #0

loop
LDR r3, [r0], #4
MUL r3, r3, r3
ADD r2, r2, r3
SUBS r1, r1, #1
BNE loop

END

nums DCD 1, 2, 3, 4, 5