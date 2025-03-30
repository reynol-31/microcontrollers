    AREA Q7, CODE, READONLY
    ENTRY

    MRS R0, CPSR
    BIC R0, R0, #0x80
    MSR CPSR_c, R0

    MRS R1, CPSR

    END
