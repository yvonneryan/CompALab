
    ORG    $1000
START:                  ; first instruction of program
    MOVE.B #1, $2000
    MOVE.B $2000, D3
    MOVE.B #100, $2010
    
    CMP 1, D3
    BNE END
    BRA LOOP
    
LOOP:
    MOVE.B $2000, D3
    CMP #1, D3
    BNE END
    BSR INPUT
    BSR UPDATE
    BSR DRAW
    BRA LOOP
    
INPUT:
    MOVE.B #4, D0
    TRAP #15
    MOVE.B D1, $2000
    RTS
    
UPDATE:
    MOVE.B $2010, D4
    SUB #10, D4
    MOVE.B $2010, D4
    
    CMP #0, D4
    BEQ CHANGE
    RTS
    
DRAW:
    RTS
    
CHANGE:
    MOVE.B #0, $2000
    BRA DRAW
    
END:
    LEA MSG1, A1
    MOVE.B #14, D0
    TRAP #15
    
   

MSG1 dc.b 'STILL FIGHTING ON', 0
MG2 dc.b 'GAME OVER', 0

    SIMHALT             ; halt simulator

* Put variables and constants here

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
