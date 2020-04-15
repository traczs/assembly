*template


	ORG	$8000

START MOVE.W VARW,D0
    MOVE.B VARW+4,D1
    EXT.W D1
    MULS D0,D1
    MOVE.W VARW+2,D2
    EXT.L D2
    DIVS #3,D2
    MOVE.W D2,D3
    ADD.W D1,D3
    MOVE.L D3,VARW+6
    MOVE.L VARW+6,D4
    TRAP #14
    
    ORG $9000
VARW DC.W 3
 DC.W 2
 DC.B 1
 DS.B 1
 DS.L 1

    END START


*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
