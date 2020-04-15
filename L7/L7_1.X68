*L7_1.x68     

	ORG	$8000
START  MOVE.B #30,d0
       MOVE.w #25,d1
       cmpi.w #1,d1
       bne    LOOP
       add.w  d0,d2
       bra    EXIT
LOOP   lsr.w  #1,d1
       bcc    MUL
       add.w  d0,d2
MUL    lsl.w  #1,d0
       cmpi.w #1,d1
       bne    LOOP
       add.w  d0,d2
EXIT   trap   #14 
	END	START












*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
