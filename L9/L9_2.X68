    ORG $8000
START    MOVE #$4D2,D3
    TRAP #5
    TRAP #14

    ORG $8024
    JMP T5
 
    ORG $8500
T5  MOVE D3,-(SP)
    BSR DISPLAY
    LEA 2(SP),SP
    RTE
DISPLAY LINK A6,#-4
    MOVEM D0/D3,-(SP)
    CLR.L D0
    MOVE.W 8(A6),D0
    DIVS #10,D0
    MOVE.W D0,-4(A6)
    SWAP D0
    MOVE.W D0,-2(A6)
    CMPI.W #0,-4(A6)
    BEQ ELSE
    MOVE.W -4(A6),-(SP)
    BSR DISPLAY
    LEA 2(SP),SP
ELSE CLR D0 
    MOVE.W -2(A6),D0
    ADD #$30,D0
    TRAP #1
    MOVEM (SP)+,D0/D3
    UNLK A6
    RTS
    END START
  






*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
