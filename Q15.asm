AREA Q15, CODE, READONLY
ENTRY

LDR r0, =nums
MOV r1, #10
MOV r2, #10

MOV r4, #0
SUB r5, r1, #1
MOV r3, #-1

loop
CMP r4, r5
BGT end
ADD r6, r4, r5
ASR r6, r6, #1
LDR r7, [r0, r6, LSL #2]
CMP r7, r2
BEQ found
BLT low_update
SUB r5, r6, #1
B loop

low_update
ADD r4, r6, #1
B loop

found
MOV r3, r6

end
B .

END

nums DCD 2,4,6,8,10,12,14,16,18,20