    
   ORG    $1000
START:                  ; first instruction of program

    LEA text, A1        ; Stores the string variable in A1
    MOVE #14, D0        ; Moves value 14 into D0
    TRAP #15            ; Value is read from D0,14 - the string stored is displayed
    MOVE #4, D0         ; Moves value 4 to D0
    TRAP #15            ; Reads value from D0, 4 - reads number entered from keyboard
    MOVE #3, D0         ; Moves the value 3 into D0
    TRAP #15            ; Reads value from D0, 3 - displays the points entered
    

    SIMHALT             ; halt simulator

text dc.b   'Please enter gamer points: ',0

    END    START        ; last line of source

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
