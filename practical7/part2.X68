
    ORG $1000
START:
    MOVE.B #9,D1    ; Moves value 9 into D1
    LEA text, A1    ; Loads the address of where text variable is stored into A1
    MOVE #14,D0     ; Moves value 14(E) into D0
    TRAP #15        ; Reads the value put in D0(14) and displays string at A1
    
    MOVE #3,D0      ; Moves 3 into D0
    TRAP #15        ; Reads value in D0(3) and displays number in D1
                    
    SIMHALT

text dc.b 'Data Register: ',0

    END START




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
