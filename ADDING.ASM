     AREA CO,CODE,READONLY
START
     mov r0,#100
	 sub r0,r0,#1
     LDR r2,memq

str r0,[r2,#4]
memq
     dcd 0x40000000
     end