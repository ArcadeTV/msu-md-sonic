; ---------------------------------------------------------------------------
; Subroutine to	play a music track

; input:
;	d0 = track to play
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PlaySound:
		;move.b	d0,(v_snddriver_ram+v_soundqueue0).w
        
        jsr     findAndPlayTrack
        rts
findAndPlayTrack:
        cmp.b   #$80,d0                 ; Stop MSU Sounds
        beq     msuStop
        cmp.b   #$81,d0                 ; Green Hill Zone
        beq     msuPlayTrack_01
        cmp.b   #$82,d0                 ; Labyrinth Zone
        beq     msuPlayTrack_02
        cmp.b   #$83,d0                 ; Marble Zone
        beq     msuPlayTrack_03
        cmp.b   #$84,d0                 ; Star Light Zone
        beq     msuPlayTrack_04
        cmp.b   #$85,d0                 ; Spring Yard Zone
        beq     msuPlayTrack_05
        cmp.b   #$86,d0                 ; Scrap Brain Zone
        beq     msuPlayTrack_06
        cmp.b   #$87,d0                 ; Invincibility
        beq     msuPlayTrack_07
        ;cmp.b   #$88,d0                 ; Extra Life
        ;beq     msuPlayTrack_08
        cmp.b   #$89,d0                 ; Special Stage
        beq     msuPlayTrack_09
        cmp.b   #$8A,d0                 ; Title Screen
        beq     msuPlayTrack_10
        cmp.b   #$8B,d0                 ; Ending
        beq     msuPlayTrack_11
        cmp.b   #$8C,d0                 ; Boss
        beq     msuPlayTrack_12
        cmp.b   #$8D,d0                 ; Final Zone
        beq     msuPlayTrack_13
        cmp.b   #$8E,d0                 ; Sonic Got Through
        beq     msuPlayTrack_14
        cmp.b   #$8F,d0                 ; Game Over
        beq     msuPlayTrack_15
        cmp.b   #$90,d0                 ; Continue Screen
        beq     msuPlayTrack_16
        cmp.b   #$91,d0                 ; Credits
        beq     msuPlayTrack_17
        cmp.b   #$92,d0                 ; Drowning
        beq     msuPlayTrack_18
        cmp.b   #$93,d0                 ; Get Emerald
        beq     msuPlayTrack_19
        ; track 20                      ; Seegaaa
 
		rts	
; End of function PlaySound

; ---------------------------------------------------------------------------
; Subroutine for SoundTest in Debug Menu
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PlaySound_Test:
        cmpi.b  #$94,d0
        bpl.s   PlaySound_Special_SFX   ; branch if d0-#$94 is a positive value
        jsr     findAndPlayTrack
        rts
PlaySound_Special_SFX:
        jsr     msuStop
		move.b	d0,(v_snddriver_ram+v_soundqueue1).w
		rts	
; End of function PlaySound_Special

; ===========================================================================

; ---------------------------------------------------------------------------
; Subroutine to	play a sound effect
; ---------------------------------------------------------------------------

; ||||||||||||||| S U B	R O U T	I N E |||||||||||||||||||||||||||||||||||||||


PlaySound_Special:
		move.b	d0,(v_snddriver_ram+v_soundqueue1).w
		rts	
; End of function PlaySound_Special

; ===========================================================================

msuPlayTrack_01:                        ; Green Hill Zone
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_21	            ; if yes, branch to play fast track

    tst.b   MCD_STAT
    bne.s   msuPlayTrack_01 
        
    move.w  #($1200|1),MCD_CMD          ; send cmd: play track #1, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$81,(v_LAST_MSU)
    rts
    
msuPlayTrack_02:                        ; Labyrinth Zone
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_22	            ; if yes, branch to play fast track

    tst.b   MCD_STAT
    bne.s   msuPlayTrack_02 
        
    move.w  #($1200|2),MCD_CMD          ; send cmd: play track #2, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$82,(v_LAST_MSU)
    rts
    
msuPlayTrack_03:                        ; Marble Zone
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_23	            ; if yes, branch to play fast track

    tst.b   MCD_STAT
    bne.s   msuPlayTrack_03 
        
    move.w  #($1200|3),MCD_CMD          ; send cmd: play track #3, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$83,(v_LAST_MSU)
    rts
    
msuPlayTrack_04:                        ; Star Light Zone
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_24	            ; if yes, branch to play fast track

    tst.b   MCD_STAT
    bne.s   msuPlayTrack_04 
        
    move.w  #($1200|4),MCD_CMD          ; send cmd: play track #4, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$84,(v_LAST_MSU)
    rts
    
msuPlayTrack_05:                        ; Spring Yard Zone
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_25	            ; if yes, branch to play fast track

    tst.b   MCD_STAT
    bne.s   msuPlayTrack_05 
        
    move.w  #($1200|5),MCD_CMD          ; send cmd: play track #5, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$85,(v_LAST_MSU)
    rts
    
msuPlayTrack_06:                        ; Scrap Brain Zone
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_26	            ; if yes, branch to play fast track

    tst.b   MCD_STAT
    bne.s   msuPlayTrack_06 
        
    move.w  #($1200|6),MCD_CMD          ; send cmd: play track #6, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$86,(v_LAST_MSU)
    rts
    
msuPlayTrack_07:                        ; Invincibility
    tst.b	(v_shoes).w	                ; does Sonic have speed	shoes?
	bne.w	msuPlayTrack_27	            ; if yes, branch to play fast track
        
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_07 
        
    move.w  #($1100|7),MCD_CMD          ; send cmd: play track #7, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    ;move.b  #$87,(v_LAST_MSU)
    rts
    
msuPlayTrack_08:                        ; Extra Life
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_08 
        
    move.w  #($1100|8),MCD_CMD          ; send cmd: play track #8, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_09:                        ; Special Stage
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_09 
        
    move.w  #($1200|9),MCD_CMD          ; send cmd: play track #9, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    move.b  #$89,(v_LAST_MSU)
    rts
    
msuPlayTrack_10:                        ; Title Screen
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_10 
        
    move.w  #($1100|10),MCD_CMD         ; send cmd: play track #10, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_11:                        ; Ending
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_11 
        
    move.w  #($1100|11),MCD_CMD         ; send cmd: play track #11, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_12:                        ; Boss
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_12 
        
    move.w  #($1200|12),MCD_CMD         ; send cmd: play track #12, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_13:                        ; Final Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_13 
        
    move.w  #($1200|13),MCD_CMD         ; send cmd: play track #13, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_14:                        ; Sonic Got Through
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_14 
        
    move.w  #($1100|14),MCD_CMD         ; send cmd: play track #14, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_15:                        ; Game Over
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_15 
        
    move.w  #($1100|15),MCD_CMD         ; send cmd: play track #15, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_16:                        ; Continue Screen
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_16 
        
    move.w  #($1100|16),MCD_CMD         ; send cmd: play track #16, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_17:                        ; Credits
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_17 
        
    move.w  #($1100|17),MCD_CMD         ; send cmd: play track #17, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_18:                        ; Drowning
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_18 
        
    move.w  #($1100|18),MCD_CMD         ; send cmd: play track #18, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_19:                        ; Get Emerald
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_19 
        
    move.w  #($1100|19),MCD_CMD         ; send cmd: play track #19, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_20:                        ; SEEEGAAAAA
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_20 
        
    move.w  #($1100|20),MCD_CMD         ; send cmd: play track #20, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
; ----- Fast Tracks :

msuPlayTrack_21:                        ; FAST Green Hill Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_21 
        
    move.w  #($1200|21),MCD_CMD         ; send cmd: play track #1, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_22:                        ; FAST Labyrinth Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_22 
        
    move.w  #($1200|22),MCD_CMD         ; send cmd: play track #2, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_23:                        ; FAST Marble Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_23 
        
    move.w  #($1200|23),MCD_CMD         ; send cmd: play track #3, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_24:                        ; FAST Star Light Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_24 
        
    move.w  #($1200|24),MCD_CMD         ; send cmd: play track #4, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_25:                        ; FAST Spring Yard Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_25 
        
    move.w  #($1200|25),MCD_CMD         ; send cmd: play track #5, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_26:                        ; FAST Scrap Brain Zone
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_26 
        
    move.w  #($1200|26),MCD_CMD         ; send cmd: play track #6, loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuPlayTrack_27:                        ; FAST Invincibility
    tst.b   MCD_STAT
    bne.s   msuPlayTrack_27 

    ;move.b  #$87,(v_LAST_MSU)

    move.w  #($1100|27),MCD_CMD         ; send cmd: play track #7, no loop
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
; ----- end Tracks

msuStop:
    tst.b   MCD_STAT
    bne.s   msuStop 
    move.w  #($1300|40),MCD_CMD         ; send cmd: pause track
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuResume:
    tst.b   MCD_STAT
    bne.s   msuResume 
    move.w  #($1400),MCD_CMD            ; send cmd: resume track
    addq.b  #1,MCD_CMD_CK               ; Increment command clock
    rts
    
msuChangeTrackSpeed:                    ; Sonic got shoes
    move.b  (v_LAST_MSU),d0
    jsr     findAndPlayFastTrack
    rts
    
msuRestoreTrackSpeed:                   ; Sonic lost his shoes
    tst.b   (v_invinc).w                ; is Sonic invincible?
    bne.w   msuPlayTrack_07             ; if yes, play invincible music

    move.b  (v_LAST_MSU),d0
    jsr     findAndPlayTrack
    rts
    
findAndPlayFastTrack:
        cmp.b   #$80,d0                 ; Stop MSU Sounds
        beq     msuStop
        cmp.b   #$81,d0                 ; Fast: Green Hill Zone
        beq     msuPlayTrack_21
        cmp.b   #$82,d0                 ; Fast: Labyrinth Zone
        beq     msuPlayTrack_22
        cmp.b   #$83,d0                 ; Fast: Marble Zone
        beq     msuPlayTrack_23
        cmp.b   #$84,d0                 ; Fast: Star Light Zone
        beq     msuPlayTrack_24
        cmp.b   #$85,d0                 ; Fast: Spring Yard Zone
        beq     msuPlayTrack_25
        cmp.b   #$86,d0                 ; Fast: Scrap Brain Zone
        beq     msuPlayTrack_26
        cmp.b   #$87,d0                 ; Fast: Invincibility
        beq     msuPlayTrack_27
		rts	
; ---------------------------------------------------------------------------
; Unused sound/music subroutine
; ---------------------------------------------------------------------------

PlaySound_Unused:
		move.b	d0,(v_snddriver_ram+v_soundqueue2).w
		rts	
