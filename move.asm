; Test if player wants to move right.

       call getkey         ; read controller port.
       ld a,(input)        ; read input from ram mirror.
       bit 3,a             ; is right key pressed?
       jp nz,mpl           ; no - test for left key.

       ld a,(plx)          ; get player's hpos (x-coordinate).
       cp rightb           ; is player over thr right border?
       jp nc,mpl           ; yes - skip to left test.

; Move player right.

       ld a,(plx)          ; get player x-coordinate.
       add a,hspeed        ; add constant hspeed
       ld (plx),a          ; update player x-coordinate.
       jp endchk           ; exit key check part.

; Test if player wants to move left.

mpl    ld a,(input)        ; read input from ram mirror.
       bit 2,a             ; is left key pressed?
       jp nz,endchk        ; no - end key check.

       ld a,(plx)          ; get player's hpos (x-coordinate).
       cp leftb            ; is player over the left border?
       jp c,endchk         ; yes - then don't move left.

; Move player left.

       ld a,(plx)          ; get player x-coordinate.
       ld b, hspeed        ; load horizontal speed (constant).
       sub b               ; subtract hspeed from player x.
       ld (plx),a          ; update player x-coordinate.
endchk                     ; end key check
