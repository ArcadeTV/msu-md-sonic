; ---------------------------------------------------------------------------
; Sprite mappings - blocks that	disintegrate when Eggman presses a switch
; ---------------------------------------------------------------------------
Map_FFloor_internal:
		dc.w @wholeblock-Map_FFloor_internal
		dc.w @topleft-Map_FFloor_internal
		dc.w @topright-Map_FFloor_internal
		dc.w @bottomleft-Map_FFloor_internal
		dc.w @bottomright-Map_FFloor_internal
@wholeblock:	dc.b 1
		dc.b $F0, $F, 0, 0, $F0
@topleft:	dc.b 2
		dc.b $F8, 1, 0,	0, $F8
		dc.b $F8, 1, 0,	4, 0
		dc.b 0
@topright:	dc.b 2
		dc.b $F8, 1, 0,	8, $F8
		dc.b $F8, 1, 0,	$C, 0
		dc.b 0
@bottomleft:	dc.b 2
		dc.b $F8, 1, 0,	2, $F8
		dc.b $F8, 1, 0,	6, 0
		dc.b 0
@bottomright:	dc.b 2
		dc.b $F8, 1, 0,	$A, $F8
		dc.b $F8, 1, 0,	$E, 0
		even