    AREA Q4, CODE, READONLY
    ENTRY

    MOV R0, #11       
    CMP R0, #2        
    BEQ prime

    CMP R0, #1        
    BLE not_prime

    MOV R1, #2        
    MOV R4, R0        
    UDIV R4, R4, R1   

check
    CMP R1, R4        
    BGT prime         

    UDIV R2, R0, R1   
    MUL R3, R2, R1    
    CMP R3, R0        
    BEQ not_prime     

    ADD R1, R1, #1    
    B check           

prime
    MOV R5, #1        
    B finish

not_prime
    MOV R5, #0        

finish
    B .               

    END
