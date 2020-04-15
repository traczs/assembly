*L6_2.x68     

	ORG	$8000
START  LEA STR1,A0
       LEA STR2,A1
       move.b $FF,d0
START1 move.b (A0)+,d1
       move.b (A1)+,d2
       cmp d2,d1
       beq exit1
       move.b #0,d0
exit1  cmpi.b #$d,(A0)
       beq EXIT
       cmp.b $FF,d0
       bne START1       
EXIT   trap #9
 
	ORG	$9000
STR1  dc.b 'hello',$D
    ORG $9020
STR2 dc.b 'hello',$D    
	END	START













*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
