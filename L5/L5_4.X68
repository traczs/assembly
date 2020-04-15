*L5_4.x68     

	ORG	$8000
START  move.w num1,d0
       move.w num2,d1
       move.w num3,d2
       cmp    d1,d0
       blt    else1
       cmp    d2,d0
       blt    else2
       move.w d0,d3
       move.w d3,biggest
	   TRAP   #14
else2  move.w d2,d3
       move.w d3,biggest
       TRAP   #14
else1   cmp    d2,d1
       blt    else3
       move.w d1,d3
       move.w d3,biggest
       TRAP #14
else3  move.w d2,d3
       move.w d3,biggest
       TRAP #14      
           
 
	ORG	$9000		
num1 dc.w -$A
num2 dc.w 5
num3 dc.w -2
biggest ds.w 1
	END	START





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
