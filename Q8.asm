AREA Q8, CODE, READONLY
ENTRY
	LDR r5, [r1]       ; Load value from memory address in r1 (0x40000000) → r5 = 10
	LDR r6, [r1, #4]   ; Load value from (r1 + 4) = (0x40000000 + 4) → r6 = 20
	LDR r7, [r1, #8]   ; Load value from (r1 + 8) = (0x40000000 + 8) → r7 = 30

	ADD r2, r5, r6     ; r2 = r5 + r6 = 10 + 20 = 30
	SUB r2, r2, r7     ; r2 = r2 - r7 = 30 - 30 = 0
	END
