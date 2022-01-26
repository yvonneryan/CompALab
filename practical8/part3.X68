
    ORG    $1000
START:                  ; first instruction of program
    
    LEA text, A1
    MOVE #14,D0         ; displays string stored at A1
    TRAP #15
    
    MOVE #2, D0
    TRAP #15            ; Reads string from keyboard stored in D1
    MOVE D1, D2         ; Moves value in D1 to D2
    
    MOVE #5, D0         
    TRAP #15            ; Reads single character from keyboard
    MOVE.B D1, D3       ; Moves value stored in D1 to D3
    ADD D2, D3          ; Adds value in D2 with D3 and stores in D3

    
    MOVE #8, D0
    TRAP #15            ; Return time in hundredths of a second since midnight in D1
    
    MOVE #11, D0
    TRAP #15            ; Positions the cursor at row, col
    
    MOVE #13, D0
    TRAP #15            ; Display the NULL terminated string at (A1) with CR, LF.
    
    MOVE #17, D0        
    TRAP #15            ; Combinations of trap codes 14 & 3 - displays string at A1 and displays decimal number in D1
    
    MOVE #18, D0
    TRAP #15            ; Combination of trap codes 14 & 4 - displays string at A1 and reads number from keyboard into D1
    
    MOVE #21, D0
    TRAP #15            ;  Sets font colour

    SIMHALT             

text dc.b 'Enter points : ' ,0

    END    START       ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
