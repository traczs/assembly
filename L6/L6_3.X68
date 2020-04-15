*L6_3.x68     

	ORG	$8000
START  LEA MATRIX,A0
OUT_   CMPI.B #2,d0
       BGT EXIT
       MOVE.B d0,d1
       add.b #1,d1
IN_    CMPI.B #3,d1
       BGT ADD_I
       move.b d0,d3
       muls #4,d3
       add.b d1,d3
       move.b (A0,d3.l),d2
       move.b d1,d4
       muls #4,d4
       add.b d0,d4
       move.b (A0,d4.l),(A0,d3.l)
       move.b d2,(A0,d4.l)
       add.b #1,d1
       BRA IN_
ADD_I  Add.b #1,d0
EXIT   trap #9
 
	ORG	$9000		
MATRIX DC.B 1,2,3,4
       DC.B 5,6,7,8
       DC.B 9,10,11,12
       DC.B 13,14,15,16
	END	START











*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
