; ---------------------------------------------------------------------------
; Level Headers
; ---------------------------------------------------------------------------

LevelHeaders:

lhead:	macro plc1,lvlgfx,plc2,sixteen,twofivesix,music,pal
	dc.l (plc1<<24)+lvlgfx
	dc.l (plc2<<24)+sixteen
	dc.l twofivesix
	dc.b 0, music, pal, pal
	endm

; 1st PLC, level gfx (unused), 2nd PLC, 16x16 data, 256x256 data,
; music (unused), palette (unused), palette

;		1st PLC				2nd PLC				256x256 data			palette
;				level gfx*			16x16 data			music*

	lhead	plcid_GHZ,	Nem_GHZ_2nd,	plcid_GHZ2,	Blk16_GHZ,	Blk256_GHZ,	bgm_GHZ,	palid_GHZ	; Green Hill
	lhead	plcid_LZ,	Nem_LZ,		plcid_LZ2,	Blk16_LZ,	Blk256_LZ,	bgm_LZ,		palid_LZ	; Labyrinth
	lhead	plcid_MZ,	Nem_MZ,		plcid_MZ2,	Blk16_MZ,	Blk256_MZ,	bgm_MZ,		palid_MZ	; Marble
	lhead	plcid_SLZ,	Nem_SLZ,	plcid_SLZ2,	Blk16_SLZ,	Blk256_SLZ,	bgm_SLZ,	palid_SLZ	; Star Light
	lhead	plcid_SYZ,	Nem_SYZ,	plcid_SYZ2,	Blk16_SYZ,	Blk256_SYZ,	bgm_SYZ,	palid_SYZ	; Spring Yard
	lhead	plcid_SBZ,	Nem_SBZ,	plcid_SBZ2,	Blk16_SBZ,	Blk256_SBZ,	bgm_SBZ,	palid_SBZ1	; Scrap Brain
	zonewarning LevelHeaders,$10
	lhead	0,		Nem_GHZ_2nd,	0,		Blk16_GHZ,	Blk256_GHZ,	bgm_SBZ,	palid_Ending	; Ending
	even

;	* music and level gfx are actually set elsewhere, so these values are useless