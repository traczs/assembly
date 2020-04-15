*-----------------------------------------------------------
* Title      :
* Written by :
* Date       :
* Description:
*-----------------------------------------------------------
    ORG    $802A
    JMP T6
    JMP T7
    
    ORG $9000
T6  OR #$2000,(SP)
    AND #%0111111111111111,(SP)
    RTE

    ORG $9020
T7  AND #$DFFF,(SP)
    RTE

    ORG $9500
START TRAP #7
    TRAP #6
    TRAP #14            

    END    START        





*~Font name~Courier New~
*~Font size~10~
*~Tab type~1~
*~Tab size~4~
