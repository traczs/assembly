*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $8000
START:     MOVE.W #2,D0
        LEA $9010,SP
        MOVE.W D0,-(SP)
        JSR SOLVEQUAD
        LEA 2(SP),SP
        TRAP #14
SOLVEQUAD   MOVE 4(SP),D1
        MULS.W D1,D1
        MULS.W #5,D1
        MOVE.W 4(SP),D2
        MULS.W #2,D2
        SUB.W D2,D1
        ADD.W #6,D1
        RTS              

    END    START        



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
