AREA Q10, CODE, READONLY
ENTRY

    LDR r0, =source
    LDR r1, =destination

    LDMIA r0!, {r2, r3, r4, r5}
    STMIA r1!, {r2, r3, r4, r5}

    END

    AREA DATA_AREA, DATA, READWRITE
source      DCD 10, 20, 30, 40
destination DCD 0, 0, 0, 0
    END
