    AREA Q1, CODE, READONLY  
    ENTRY                    
    MOV r1, #0      ; Load immediate value 0 into R1
    MOV r2, #15     ; Load immediate value 15 (0x0F) into R2
    MOV r3, #12     ; Load immediate value 12 (0x0C) into R3

    MVN r0, r1      ; Bitwise NOT of R1 and store in R0
                    ; Since R1 = 0x00000000, R0 = 0xFFFFFFFF

    AND r4, r0, r2  ; Bitwise AND between R0 and R2, store in R4
                    ; R0 = 0xFFFFFFFF, R2 = 0x0000000F
                    ; R4 = 0xFFFFFFFF AND 0x0000000F = 0x0000000F (15 in decimal)

    EOR r4, r4, r3  ; Bitwise XOR between R4 and R3, store result in R4
                    ; R4 = 0x0000000F (0000 0000 0000 0000 0000 0000 0000 1111)
                    ; R3 = 0x0000000C (0000 0000 0000 0000 0000 0000 0000 1100)
                    ; R4 = 0x00000003 (0000 0000 0000 0000 0000 0000 0000 0011) = 3

    END             ; End of program
