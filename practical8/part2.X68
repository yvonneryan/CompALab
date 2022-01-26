    ORG    $1000
START:                  ; first instruction of program
    
    LEA Health, A2      ; Loads effective address of Health to A2
    MOVE.B (A2),D1      ; Move value in A2 to D1 to perform add operation
    ADD.B #5,D1         ; Add the number 5 to D1
    MOVE.B D1, Health   ; Move value from D1 back to Health after the operation is performed
    
    MOVE.B (A2),D1      ; Move value in A2 to D1 to perform subtract operation
    SUB.B #5, D1        ; Subtract the number 5 from value in D1
    MOVE.B D1, Health   ; Move value from D1 back to Health after the operation is performed
    
    MOVE.B (A2),D1      ; Move value from A2 to D1 to perform multiply operation
    MULU #2,D1          ; Multiply value in D1 by 2
    MOVE.B D1, Health   ; Move value from D1 back to Health after the operation is performed
    
    MOVE.B (A2),D1      ; Move value in A2 to D1 to perform divide operation
    DIVU #2,D1          ; Divide the value in D1 by 2
    MOVE.B D1, Health   ; Move value in D1 to Health after the operation is performed
    
    

    SIMHALT             ; halt simulator

Health dc.b $10

    END    START        ; last line of source





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
