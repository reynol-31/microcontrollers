AREA Q9, CODE, READONLY
ENTRY

	MOV r0, #0x00000000
	MOV r1, #0x11112222
	MOV r2, #0x40000000

	SWP r0, r1, [r2] ;After executing the SWP instruction: r0 becomes 0x12341234, r1 remains 	0x11112222, r2 remains 0x40000000.
	END