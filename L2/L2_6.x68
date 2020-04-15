*template


	ORG	$8000

	
PROGRAM MULS    #9,D0
    DIVS    #5,D0
    ADD     #32,D0
    MOVE    D0,D1

	TRAP	#14
	END	$8000

*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
