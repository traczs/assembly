    ORG $8500
MAIN  LEA $9000,SP
    MOVE #1234,-(SP)
    BSR DISPLAY
    LEA 2(SP),SP
    TRAP #9
DISPLAY LINK A6,#-4
    MOVEM D0-D1,-(SP)
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
    MOVE.W -2(A6),D1
    ADD #$30,D1
    MOVE #6,D0
    TRAP #15
    MOVEM (SP)+,D0-D1
    UNLK A6
    RTS
    END MAIN
  





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
