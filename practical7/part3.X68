
 
 	 ORG    $1000 
START: 
    LEA text, A1    ; Loads the address of where text veriable is stored in A1
    MOVE #4,D0      ; Moves value 4 into D0
    TRAP #15        ; Reads value from D0(4) takes input from keyboard and stores it in D1
    MOVE #14,D0     ; Moves 14 into D0
    TRAP #15        ; Reads value from D0 and displays string
    MOVE #3,D0      ; Moves value 3 into D0
    TRAP #15        ; Reads value from D0 and displays number in decimal
    
    SIMHALT
 
text  dc.b    'Data Register: ',0 
     
    END    START 




*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
