; ---------------------------------------------------------------------------
; Sprite mappings - spiked balls on the	seesaws	(SLZ)
; ---------------------------------------------------------------------------
Map_SSawBall_internal:
		dc.w @red-Map_SSawBall_internal
		dc.w @silver-Map_SSawBall_internal
@red:		dc.b 1
		dc.b $F4, $A, 0, 0, $F4
@silver:	dc.b 1
		dc.b $F4, $A, 0, 9, $F4
		even