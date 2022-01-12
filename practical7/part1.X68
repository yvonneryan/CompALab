
    ORG    $1000
START:                  
    MOVE.B #9,D1        ; Moves value 9 into D1
    MOVE.B D1,D2        ; Moves value in D1(9) into D2
    MOVE.B D1,1100      ; Moves value in D1 to memory location 1100
    MOVE.B 1100,D2      ; Moves value at memory location 1100 to D2
    MOVE.B 1100,100     ; Moves value at memory location 1100 to memory location 100



    SIMHALT            


    END    START        ; last line of source


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
