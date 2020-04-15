*template


	ORG	$8000

START MOVE.W VARW,D0
    MOVE.B VARY,D1
    EXT.W D1
    MULS D0,D1
    MOVE.W VARX,D2
    EXT.L D2
    DIVS #3,D2
    MOVE.W D2,D3
    ADD.W D1,D3
    MOVE.L D3,VARZ
    MOVE.L VARZ,D4
    TRAP #14
    
    ORG $9000
VARW DC.W 3
VARX DC.W 2
VARY DC.B 1
    DS.B 1
VARZ DS.L 1

    END START
*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
