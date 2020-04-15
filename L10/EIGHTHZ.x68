******************************************************
* TWOHZ.x68                                          *
*                                                    *
* This program uses the 68681 timer to create a 2 Hz *
* square wave on OP3.  If the 68681 X1 input is      *
* driven at 3.6864 MHz, then the frequency on OP3    *
* equals                                             *
*                                                    *
*       3686400 / 2 / 16 / COUNT                     *
*                                                    *
* where COUNT is the 16-bit integer in the timer     *
* registers CTUR and CTLR.  CTUR holds the upper     *
* byte, CTLR holds the lower byte.                   *
******************************************************
DUART    EQU      $00C001  ;68681 base address
ACR      EQU      4*2      ;auxiliary control reg.
CTUR     EQU      6*2      ;counter/timer upper reg.
CTLR     EQU      7*2      ;counter/timer lower reg.
OPCR     EQU      13*2     ;output port config. reg.
COUNT    EQU      14400    ;8 Hz count (see above)
opr_set equ 14*2
opr_clr equ 15*2

isr equ $a
stop equ $1e

         ORG      $8000
TWOHZ    MOVEA.L  #DUART,A0
         MOVE.B   #$FF,D2
loop     MOVE.B  isr(a0),d1
         MOVE.L   #COUNT,D0
         MOVEP.W  D0,CTUR(A0)
         MOVE.B   #$70,ACR(A0)   ;crystal clock / 16
         MOVE.B   #$04,OPCR(A0)  ;timer output to OP3
         move.b   D2,opr_set(A0)
         not.b    D2
         move.b   D2,opr_clr(A0)
         andi.b #8,d1
         beq loop
         tst.b stop(a0)
         trap #14              ;now relax a bit
         END      TWOHZ



*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
