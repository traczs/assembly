*L5_3.x68     

	ORG	$8000
START  move.b  hex,d0
       move.b  d0,d1
       add.b   #$30,d1
       cmpi.b  #$39,d1
       ble     quit
       move    d1,d2
       add.b   #7,d2
       move.b d2,char
quit   TRAP #14       
 
	ORG	$9000		
hex dc.b $A
char ds.b 1
	END	START








*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
