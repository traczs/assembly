DUART EQU $C001
SRA EQU 2
RBA EQU 6

    ORG $8000
MESSAGE MOVEA.L #TEXT,A1
    BSR PRINT
    TRAP #14
    
PRINT MOVE.L D0,-(A7)    
INCHR MOVE.L A0,-(A7)
    MOVE.W D7,-(A7)
    MOVEA.L #DUART,A0
INCHR2 MOVE.B SRA(A0),D7
    ANDI.B #1,D7
    BEQ INCHR2
    MOVE.B RBA(A0),D0
    MOVE.W (A7)+,D7
    MOVE.L (A7)+,A0
    CMPI #$0D,D0
    BEQ EXIT
    MOVE.B D0,(A1)+
    BRA INCHR
EXIT MOVE.L (A7)+,D0 
    MOVE.B #$0D,(A1)+
    MOVE.B #0,(A1)+
   
    RTS

TEXT DS.L 1
    END MESSAGE

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
