	.INCLUDE "gba.inc"
	.INCLUDE "macro.inc"

	.SECTION .data

	.GLOBAL gUnknown_080788B0
gUnknown_080788B0:
	.INCBIN "baserom.gba", 0x788B0, 0x788C8-0x788B0

	.GLOBAL gUnknown_080788C8
gUnknown_080788C8:
	.INCBIN "baserom.gba", 0x788C8, 0x788E0-0x788C8

	.GLOBAL gUnknown_080788E0
gUnknown_080788E0:
	.INCBIN "baserom.gba", 0x788E0, 0x788F4-0x788E0

	.GLOBAL gSelectedSaveFileNumPtr
gSelectedSaveFileNumPtr:
	.4byte 0x02032100

	.GLOBAL gUnknown_080788F8
gUnknown_080788F8:
	.4byte 0x02032108

	.GLOBAL gScreenModeRelatedPtr
gScreenModeRelatedPtr:
	.4byte 0x02032104 

	.GLOBAL gSaveFilesPtr
gSaveFilesPtr:
	.4byte 0x02032110

	.GLOBAL gUnknown_08078904
gUnknown_08078904:
	.INCBIN "baserom.gba", 0x78904, 0x78944-0x78904

	.GLOBAL gUnknown_08078944
gUnknown_08078944:
	.INCBIN "baserom.gba", 0x78944, 0x7897C-0x78944

	.GLOBAL gUnknown_0807897C
gUnknown_0807897C:
	.INCBIN "baserom.gba", 0x7897C, 0x789BC-0x7897C

	.GLOBAL gUnknown_080789BC
gUnknown_080789BC:
	.INCBIN "baserom.gba", 0x789BC, 0x789F4-0x789BC

	.GLOBAL gUnknown_080789F4
gUnknown_080789F4:
	.INCBIN "baserom.gba", 0x789F4, 0x78AB4-0x789F4

	.GLOBAL gUnknown_08078AB4
gUnknown_08078AB4:
	.INCBIN "baserom.gba", 0x78AB4, 0x78B74-0x78AB4

	.GLOBAL gUnknown_08078B74
gUnknown_08078B74:
	.INCBIN "baserom.gba", 0x78B74, 0x78C1C-0x78B74

	.GLOBAL gUnknown_08078C1C
gUnknown_08078C1C:
	.INCBIN "baserom.gba", 0x78C1C, 0x78CC4-0x78C1C

	.GLOBAL gUnknown_08078CC4
gUnknown_08078CC4:
	.INCBIN "baserom.gba", 0x78CC4, 0x78CF4-0x78CC4

	.GLOBAL gUnknown_08078CF4
gUnknown_08078CF4:
	.INCBIN "baserom.gba", 0x78CF4, 0x78D24-0x78CF4

	.GLOBAL gUnknown_08078D24
gUnknown_08078D24:
	.INCBIN "baserom.gba", 0x78D24, 0x78DE4-0x78D24

	.GLOBAL gUnknown_08078DE4
gUnknown_08078DE4:
	.INCBIN "baserom.gba", 0x78DE4, 0x78E8C-0x78DE4

	.GLOBAL gLevelSelectLevelArtSpriteLayout
gLevelSelectLevelArtSpriteLayout:
	.2byte 0x001C @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count? doesnt affect this first one
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x004E @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x0080 @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x00B2 @ X Position
	.2byte 0x0034 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x001C @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Graphics Size in Bytes
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Skip 4 pixels count?
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x004E @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x0080 @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics
	
	.2byte 0x00B2 @ X Position
	.2byte 0x0061 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0200 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ Sprite Data 2
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.GLOBAL gLevelSelectLevelPlusArtSpriteLayout
gLevelSelectLevelPlusArtSpriteLayout:
	.INCBIN "baserom.gba", 0x78F4C, 0x78FF4-0x78F4C

	.GLOBAL gUnknown_08078FF4
gUnknown_08078FF4:
	.INCBIN "baserom.gba", 0x78FF4, 0x790B4-0x78FF4

	.GLOBAL gUnknown_080790B4
gUnknown_080790B4:
	.INCBIN "baserom.gba", 0x790B4, 0x7915C-0x790B4

	.GLOBAL gUnknown_0807915C
gUnknown_0807915C:
	.INCBIN "baserom.gba", 0x7915C, 0x7921C-0x7915C

	.GLOBAL gUnknown_0807921C
gUnknown_0807921C:
	.INCBIN "baserom.gba", 0x7921C, 0x792C4-0x7921C

	.GLOBAL gUnknown_080792C4
gUnknown_080792C4:
	.INCBIN "baserom.gba", 0x792C4, 0x792DC-0x792C4

	.GLOBAL gUnknown_080792DC
gUnknown_080792DC:
	.INCBIN "baserom.gba", 0x792DC, 0x792F4-0x792DC

	.GLOBAL gUnknown_080792F4
gUnknown_080792F4:
	.INCBIN "baserom.gba", 0x792F4, 0x7930C-0x792F4

	.GLOBAL gUnknown_0807930C
gUnknown_0807930C:
	.INCBIN "baserom.gba", 0x7930C, 0x79324-0x7930C

	.GLOBAL gUnknown_08079324
gUnknown_08079324:
	.INCBIN "baserom.gba", 0x79324, 0x7933C-0x79324

	.GLOBAL gUnknown_0807933C
gUnknown_0807933C:
	.INCBIN "baserom.gba", 0x7933C, 0x79354-0x7933C

	.GLOBAL gUnknown_08079354
gUnknown_08079354:
	.INCBIN "baserom.gba", 0x79354, 0x7936C-0x79354

	.GLOBAL gUnknown_0807936C
gUnknown_0807936C:
	.INCBIN "baserom.gba", 0x7936C, 0x79384-0x7936C

	.GLOBAL gUnknown_08079384
gUnknown_08079384:
	.INCBIN "baserom.gba", 0x79384, 0x7939C-0x79384

	.GLOBAL gUnknown_0807939C
gUnknown_0807939C:
	.INCBIN "baserom.gba", 0x7939C, 0x793B4-0x7939C

	.GLOBAL gUnknown_080793B4
gUnknown_080793B4:
	.INCBIN "baserom.gba", 0x793B4, 0x793CC-0x793B4

	.GLOBAL gUnknown_080793CC
gUnknown_080793CC:
	.INCBIN "baserom.gba", 0x793CC, 0x793E4-0x793CC

	.GLOBAL gUnknown_080793E4
gUnknown_080793E4:
	.INCBIN "baserom.gba", 0x793E4, 0x793FC-0x793E4

	.GLOBAL gUnknown_080793FC
gUnknown_080793FC:
	.INCBIN "baserom.gba", 0x793FC, 0x79414-0x793FC

	.GLOBAL gUnknown_08079414
gUnknown_08079414:
	.INCBIN "baserom.gba", 0x79414, 0x7942C-0x79414

	.GLOBAL gUnknown_0807942C
gUnknown_0807942C:
	.INCBIN "baserom.gba", 0x7942C, 0x79444-0x7942C

	.GLOBAL gUnknown_08079444
gUnknown_08079444:
	.INCBIN "baserom.gba", 0x79444, 0x7945C-0x79444

	.GLOBAL gUnknown_0807945C
gUnknown_0807945C:
	.INCBIN "baserom.gba", 0x7945C, 0x79474-0x7945C

	.GLOBAL gUnknown_08079474
gUnknown_08079474:
	.INCBIN "baserom.gba", 0x79474, 0x7948C-0x79474

	.GLOBAL gUnknown_0807948C
gUnknown_0807948C:
	.INCBIN "baserom.gba", 0x7948C, 0x794A4-0x7948C

	.GLOBAL gUnknown_080794A4
gUnknown_080794A4:
	.INCBIN "baserom.gba", 0x794A4, 0x794BC-0x794A4

	.GLOBAL gUnknown_080794BC
gUnknown_080794BC:
	.INCBIN "baserom.gba", 0x794BC, 0x794D4-0x794BC

	.GLOBAL gUnknown_080794D4
gUnknown_080794D4:
	.INCBIN "baserom.gba", 0x794D4, 0x794EC-0x794D4

	.GLOBAL gLevelSelectPaletteIDs
gLevelSelectPaletteIDs:
	.4byte 11 @ palette level_select_world_one
	.4byte 12 @ palette level_select_world_two
	.4byte 13 @ palette level_select_world_three
	.4byte 14 @ palette level_select_world_four
	.4byte 15 @ palette level_select_world_five
	.4byte 16 @ palette level_select_world_six

	.GLOBAL gLevelSelectPlusPaletteIDs
gLevelSelectPlusPaletteIDs:
	.4byte 18 @ palette level_select_world_one_plus
	.4byte 19 @ palette level_select_world_two_plus
	.4byte 20 @ palette level_select_world_three_plus
	.4byte 21 @ palette level_select_world_four_plus
	.4byte 22 @ palette level_select_world_five_plus
	.4byte 23 @ palette level_select_world_six_plus

	.GLOBAL gLevelSelectBackgrounds
gLevelSelectBackgrounds:
	.4byte gLevelSelectWorldOneBG
	.4byte gLevelSelectWorldTwoBG
	.4byte gLevelSelectWorldThreeBG
	.4byte gLevelSelectWorldFourBG
	.4byte gLevelSelectWorldFiveBG
	.4byte gLevelSelectWorldSixBG


	.GLOBAL gLevelSelectPlusBackgrounds
gLevelSelectPlusBackgrounds:
	.4byte gLevelSelectWorldOnePlusBG
	.4byte gLevelSelectWorldTwoPlusBG
	.4byte gLevelSelectWorldThreePlusBG
	.4byte gLevelSelectWorldFourPlusBG
	.4byte gLevelSelectWorldFivePlusBG
	.4byte gLevelSelectWorldSixPlusBG
	

	.GLOBAL gUnknown_0807954C
gUnknown_0807954C:
	.2byte 0x0000 @ world 1
	.2byte 0x0000
	.2byte 0x0100 @ world 2
	.2byte 0x0000
	.2byte 0x0200 @ world 3
	.2byte 0x0000
	.2byte 0x0001 @ title screen plays intro cutscene
	.2byte 0x0000
	.2byte 0x0300 @ world 4
	.2byte 0x0000
	.2byte 0x0400 @ world 5
	.2byte 0x0000
	.2byte 0x0500 @ world 6
	.2byte 0x0000
	.2byte 0x0001 @ title screen plays intro cutscene
	.2byte 0x0000

	.GLOBAL gTitleMarioEyesAnimationData
gTitleMarioEyesAnimationData:
	.INCBIN "baserom.gba", 0x7956C, 0x79698-0x7956C

	.GLOBAL gTitleDKEyesAnimationData
gTitleDKEyesAnimationData:
	.INCBIN "baserom.gba", 0x79698, 0x7976C-0x79698

	.GLOBAL gUnknown_0807976C
gUnknown_0807976C:
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8
	.2byte 0x00E6
	.2byte 0x00E7
	.2byte 0x00E8

	.GLOBAL gUnknown_08079778
gUnknown_08079778:
	.4byte 25 @ palette world_one_boss_clear
	.4byte 26 @ palette world_two_boss_clear
	.4byte 27 @ palette world_three_boss_clear
	.4byte 28 @ palette world_four_boss_clear
	.4byte 29 @ palette world_five_boss_clear
	.4byte 30 @ palette world_six_boss_clear

	.GLOBAL gUnknown_08079790
gUnknown_08079790:
	.4byte 31 @ palette world_one_plus_boss_clear
	.4byte 32 @ palette world_two_plus_boss_clear
	.4byte 33 @ palette world_three_plus_boss_clear
	.4byte 34 @ palette world_four_plus_boss_clear
	.4byte 35 @ palette world_five_plus_boss_clear
	.4byte 36 @ palette world_six_plus_boss_clear

	.GLOBAL gUnknown_080797A8
gUnknown_080797A8:
	.INCBIN "baserom.gba", 0x797A8, 0x797B0-0x797A8

	.GLOBAL gUnknown_080797B0
gUnknown_080797B0:
	.INCBIN "baserom.gba", 0x797B0, 0x797B8-0x797B0

	.GLOBAL gUnknown_080797B8
gUnknown_080797B8:
	.INCBIN "baserom.gba", 0x797B8, 0x797C8-0x797B8

	.GLOBAL gUnknown_080797C8
gUnknown_080797C8:
	.INCBIN "baserom.gba", 0x797C8, 0x797E0-0x797C8

	.GLOBAL gUnknown_080797E0
gUnknown_080797E0:
	.INCBIN "baserom.gba", 0x797E0, 0x79868-0x797E0

	.GLOBAL gUnknown_08079868
gUnknown_08079868:
	.INCBIN "baserom.gba", 0x79868, 0x79878-0x79868

	.GLOBAL gUnknown_08079878
gUnknown_08079878:
	.INCBIN "baserom.gba", 0x79878, 0x798B0-0x79878

	.GLOBAL gUnknown_080798B0
gUnknown_080798B0:
	.INCBIN "baserom.gba", 0x798B0, 0x798E8-0x798B0

	.GLOBAL gUnknown_080798E8
gUnknown_080798E8:
	.INCBIN "baserom.gba", 0x798E8, 0x79938-0x798E8

	.GLOBAL gUnknown_08079938
gUnknown_08079938:
	.4byte sub_0802200C
	.4byte sub_08027C34
	.4byte sub_08027CD0
	.4byte sub_08027D08
	.4byte sub_08027D40
	.4byte sub_08027DD0
	.4byte sub_08027DE4
	.4byte sub_08027DF8
	.4byte sub_08027E0C
	.4byte sub_08027E20
	.4byte sub_08027E34
	.4byte sub_08027E48
	.4byte sub_08027E5C
	.4byte sub_08027E70
	.4byte sub_08027E84
	.4byte sub_08027EC8
	.4byte sub_08027F58
	.4byte sub_08027F9C
	.4byte sub_08027FE0
	.4byte sub_08028024

	.GLOBAL gOptionsMenuMovieIDTable
gOptionsMenuMovieIDTable:
	.byte 0x0
	.byte 0x1
	.byte 0x2
	.byte 0x3
	.byte 0x4
	.byte 0x5
	.byte 0x6
	.byte 0x7

	.GLOBAL gUnknown_08079990 @ potentally movie song ID table?
gUnknown_08079990:
	.byte 0x17
	.byte 0x29
	.byte 0x2B
	.byte 0x3D
	.byte 0x2C
	.byte 0x2D
	.byte 0x2E
	.byte 0x2F

	.GLOBAL gUnknown_08079998
gUnknown_08079998:
	.INCBIN "baserom.gba", 0x79998, 0x799D0-0x79998

	.GLOBAL gUnknown_080799D0
gUnknown_080799D0:
	.INCBIN "baserom.gba", 0x799D0, 0x799F0-0x799D0

	.GLOBAL gUnknown_080799F0
gUnknown_080799F0:
	.INCBIN "baserom.gba", 0x799F0, 0x79D20-0x799F0

	.GLOBAL gUnknown_08079D20
gUnknown_08079D20:
	.4byte 0x00000004
	.4byte 0x00000003

	.GLOBAL gUnknown_08079D28
gUnknown_08079D28:
	.4byte 0x00000012
	.4byte 0x00000011
	
	.GLOBAL gUnknown_08079D30
gUnknown_08079D30:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18

	.GLOBAL gUnknown_08079D4C
gUnknown_08079D4C:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18
	
	.GLOBAL gUnknown_08079D68
gUnknown_08079D68:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18	
	
	.GLOBAL gUnknown_08079D84
gUnknown_08079D84:
	.4byte 0x00000003
	.4byte 0x00000000
	.4byte 0x00C02018
	.4byte 0x00000000
	.4byte 0x03C03440
	.4byte 0x00000000
	.4byte 0x04C04C18
	

	.GLOBAL gUnknown_08079DA0
gUnknown_08079DA0:
	.4byte gUnknown_08079D30
	.4byte gUnknown_08079D4C
	.4byte gUnknown_08079D68
	.4byte gUnknown_08079D84
	
	.GLOBAL gUnknown_08079DB0  	@ Level help screen sprite table
gUnknown_08079DB0:
	.INCBIN "baserom.gba", 0x79DB0, 0x79DC8-0x79DB0

	.GLOBAL gUnknown_08079DC8
gUnknown_08079DC8:
	.INCBIN "baserom.gba", 0x79DC8, 0x79DE0-0x79DC8

	.GLOBAL gUnknown_08079DE0
gUnknown_08079DE0:
	.INCBIN "baserom.gba", 0x79DE0, 0x79DF8-0x79DE0

	.GLOBAL gUnknown_08079DF8
gUnknown_08079DF8:
	.INCBIN "baserom.gba", 0x79DF8, 0x79E10-0x79DF8

	.GLOBAL gUnknown_08079E10
gUnknown_08079E10:
	.INCBIN "baserom.gba", 0x79E10, 0x79E28-0x79E10

	.GLOBAL gUnknown_08079E28
gUnknown_08079E28:
	.INCBIN "baserom.gba", 0x79E28, 0x79E40-0x79E28

	.GLOBAL gUnknown_08079E40
gUnknown_08079E40:
	.INCBIN "baserom.gba", 0x79E40, 0x79E58-0x79E40

	.GLOBAL gUnknown_08079E58
gUnknown_08079E58:
	.INCBIN "baserom.gba", 0x79E58, 0x79E70-0x79E58

	.GLOBAL gUnknown_08079E70
gUnknown_08079E70:
	.INCBIN "baserom.gba", 0x79E70, 0x79E88-0x79E70

	.GLOBAL gUnknown_08079E88
gUnknown_08079E88:
	.INCBIN "baserom.gba", 0x79E88, 0x79EA0-0x79E88

	.GLOBAL gUnknown_08079EA0
gUnknown_08079EA0:
	.INCBIN "baserom.gba", 0x79EA0, 0x79EB8-0x79EA0

	.GLOBAL gUnknown_08079EB8
gUnknown_08079EB8:
	.INCBIN "baserom.gba", 0x79EB8, 0x79ED0-0x79EB8

	.GLOBAL gUnknown_08079ED0 	@ Level help screen sprite table pointers
gUnknown_08079ED0:
	.INCBIN "baserom.gba", 0x79ED0, 0x79F00-0x79ED0

	.GLOBAL gHelpScreenBaseSpriteLayout
gHelpScreenBaseSpriteLayout:
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 0 @ Y position

	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 96 @ Y position

	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079DB0 @ Sprite pointer
	.4byte 0x00000000 @ Unknown
	.2byte 0 @ X position
	.2byte 32 @ Y position	
	
	.4byte gUnknown_08079EA0 @ Sprite pointer
	.4byte 0x0000000A @ Unknown
	.2byte 24 @ X position
	.2byte 16 @ Y position
	
	.4byte gUnknown_08079DC8 @ Sprite pointer
	.4byte 0x00000001 @ Unknown
	.2byte 16 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 48 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 80 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 112 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 144 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DE0 @ Sprite pointer
	.4byte 0x00000002 @ Unknown
	.2byte 176 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079DF8 @ Sprite pointer
	.4byte 0x00000003 @ Unknown
	.2byte 208 @ X position
	.2byte 0 @ Y position
	
	.4byte gUnknown_08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 32 @ Y position
	
	.4byte gUnknown_08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 32 @ Y position	
	
	.4byte gUnknown_08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 64 @ Y position
	
	.4byte gUnknown_08079E10 @ Sprite pointer
	.4byte 0x00000004 @ Unknown
	.2byte 16 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 48 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 80 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 112 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 144 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E88 @ Sprite pointer
	.4byte 0x00000009 @ Unknown
	.2byte 176 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079E28 @ Sprite pointer
	.4byte 0x00000005 @ Unknown
	.2byte 208 @ X position
	.2byte 96 @ Y position
	
	.4byte gUnknown_08079EB8 @ Sprite pointer
	.4byte 0x0000000B @ Unknown
	.2byte 100 @ X position
	.2byte 144 @ Y position
	
	.4byte gUnknown_08079E40 @ Sprite pointer
	.4byte 0x00000006 @ Unknown
	.2byte 16 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 48 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 80 @ X position
	.2byte 128 @ Y position	
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 112 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 144 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E58 @ Sprite pointer
	.4byte 0x00000007 @ Unknown
	.2byte 176 @ X position
	.2byte 128 @ Y position
	
	.4byte gUnknown_08079E70 @ Sprite pointer
	.4byte 0x00000008 @ Unknown
	.2byte 208 @ X position
	.2byte 128 @ Y position
	
	.GLOBAL gHelpLevelViewerSpriteLayout
gHelpLevelViewerSpriteLayout:
	.INCBIN "baserom.gba", 0x7A104, 0x7A1C4-0x7A104
	
	.GLOBAL gHelpHandstandSpriteLayout
gHelpHandstandSpriteLayout:
	.INCBIN "baserom.gba", 0x7A1C4, 0x7A2CC-0x7A1C4
	
	.GLOBAL gHelpHandstandDoubleJumpSpriteLayout
gHelpHandstandDoubleJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7A2CC, 0x7A44C-0x7A2CC
	
	.GLOBAL gHelpBackflipSpriteLayout
gHelpBackflipSpriteLayout:
	.INCBIN "baserom.gba", 0x7A44C, 0x7A4F4-0x7A44C
	
	.GLOBAL gHelpThrowObjectsSpriteLayout
gHelpThrowObjectsSpriteLayout:
	.INCBIN "baserom.gba", 0x7A4F4, 0x7A5B4-0x7A4F4
	
	.GLOBAL gHelpJumpUpAndThrowSpriteLayout
gHelpJumpUpAndThrowSpriteLayout:
	.INCBIN "baserom.gba", 0x7A5B4, 0x7A6A4-0x7A5B4
	
	.GLOBAL gHelpHandStandDeflectsSpriteLayout
gHelpHandStandDeflectsSpriteLayout:
	.INCBIN "baserom.gba", 0x7A6A4, 0x7A764-0x7A6A4
	
	.GLOBAL gHelpWireSpinAndJumpSpriteLayout
gHelpWireSpinAndJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7A764, 0x7A884-0x7A764
	
	.GLOBAL gHelpSpringJumpSpriteLayout
gHelpSpringJumpSpriteLayout:
	.INCBIN "baserom.gba", 0x7A884, 0x7A92C-0x7A884

	.GLOBAL gUnknown_0807A92C @ Level help screen tutorial sprite layout table
gUnknown_0807A92C:
	.4byte gHelpLevelViewerSpriteLayout
	.4byte 8 @ Sprite count
	.4byte gHelpHandstandSpriteLayout
	.4byte 11 @ Sprite count
	.4byte gHelpHandstandDoubleJumpSpriteLayout
	.4byte 16 @ Sprite count
	.4byte gHelpBackflipSpriteLayout
	.4byte 7 @ Sprite count
	.4byte gHelpThrowObjectsSpriteLayout
	.4byte 8 @ Sprite count
	.4byte gHelpJumpUpAndThrowSpriteLayout
	.4byte 10 @ Sprite count
	.4byte gHelpHandStandDeflectsSpriteLayout
	.4byte 8 @ Sprite count
	.4byte gHelpWireSpinAndJumpSpriteLayout
	.4byte 12 @ Sprite count
	.4byte gHelpSpringJumpSpriteLayout
	.4byte 7 @ Sprite count

	.GLOBAL gUnknown_0807A974
gUnknown_0807A974:
	.INCBIN "baserom.gba", 0x7A974, 0x7AA1C-0x7A974

	.GLOBAL gUnknown_0807AA1C
gUnknown_0807AA1C:
	.INCBIN "baserom.gba", 0x7AA1C, 0x7AA58-0x7AA1C

	.GLOBAL gUnknown_0807AA58
gUnknown_0807AA58:
	.INCBIN "baserom.gba", 0x7AA58, 0x7BA58-0x7AA58

	.GLOBAL gUnknown_0807BA58
gUnknown_0807BA58:
	.INCBIN "baserom.gba", 0x7BA58, 0x7BA68-0x7BA58

	.GLOBAL gUnknown_0807BA68
gUnknown_0807BA68:
	.INCBIN "baserom.gba", 0x7BA68, 0x7BB30-0x7BA68

	.GLOBAL gUnknown_0807BB30
gUnknown_0807BB30:
	.INCBIN "baserom.gba", 0x7BB30, 0x7C028-0x7BB30

	.GLOBAL gUnknown_0807C028
gUnknown_0807C028:
	.INCBIN "baserom.gba", 0x7C028, 0x7C098-0x7C028

	.GLOBAL gUnknown_0807C098
gUnknown_0807C098:
	.INCBIN "baserom.gba", 0x7C098, 0x7C0D0-0x7C098

	.GLOBAL gUnknown_0807C0D0
gUnknown_0807C0D0:
	.INCBIN "baserom.gba", 0x7C0D0, 0x7C0D8-0x7C0D0

	.GLOBAL gUnknown_0807C0D8
gUnknown_0807C0D8:
	.INCBIN "baserom.gba", 0x7C0D8, 0x7C0E0-0x7C0D8

	.GLOBAL gUnknown_0807C0E0
gUnknown_0807C0E0:
	.INCBIN "baserom.gba", 0x7C0E0, 0x7C118-0x7C0E0

	.GLOBAL gUnknown_0807C118
gUnknown_0807C118:
	.INCBIN "baserom.gba", 0x7C118, 0x7C7A8-0x7C118

	.GLOBAL gUnknown_0807C7A8
gUnknown_0807C7A8:
	.INCBIN "baserom.gba", 0x7C7A8, 0x7C7C4-0x7C7A8

	.GLOBAL gUnknown_0807C7C4
gUnknown_0807C7C4:
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x01
	.byte 0x00

	.GLOBAL gUnknown_0807C7CC
gUnknown_0807C7CC:
	.INCBIN "baserom.gba", 0x7C7CC, 0x7C804-0x7C7CC

	.GLOBAL gUnknown_0807C804
gUnknown_0807C804:
	.INCBIN "baserom.gba", 0x7C804, 0x7C814-0x7C804

	.GLOBAL gUnknown_0807C814
gUnknown_0807C814:
	.INCBIN "baserom.gba", 0x7C814, 0x7C82C-0x7C814

	.GLOBAL gUnknown_0807C82C
gUnknown_0807C82C:
	.byte 0x03
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807C834
gUnknown_0807C834:
	.INCBIN "baserom.gba", 0x7C834, 0x7C838-0x7C834

	.GLOBAL gUnknown_0807C838
gUnknown_0807C838:
	.byte 0x02
	.byte 0x00

	.GLOBAL gUnknown_0807C83A
gUnknown_0807C83A:
	.2byte 0x0169
	.2byte 0x0143
	.2byte 0x011D
	.2byte 0x00F7
	.2byte 0x00D1
	.2byte 0x00AB
	.2byte 0x0085
	.2byte 0x005F
	.2byte 0x0039
	.2byte 0x0013
	.2byte 0x0000

	.GLOBAL gUnknown_0807C850
gUnknown_0807C850:
	.4byte 0x00000001
	.4byte gTextCRCCheckFailed
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000001
	.4byte gTextTimeOut
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000001
	.4byte gTextConnectionLost
	.4byte 0x00000002
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x000000C
	.4byte gTextCancel
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextLevelAlreadyExists
	.4byte 0x00000003
	.4byte 0x00000007
	.4byte gTextOverwrite
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextLevelDoesNotBelongToCurrentWorld
	.4byte 0x00000003
	.4byte 0x00000008
	.4byte gTextEraseOldWorld
	.4byte 0x00000001
	.4byte gTextRetry
	.4byte 0x0000000C
	.4byte gTextCancel
	.4byte 0x00000000
	
	.4byte 0x00000000
	.4byte gTextThemeCardActivated
	.4byte 0x00000001
	.4byte 0x0000000D
	.4byte gTextPressAToContinue2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14000101
	
	.4byte 0x00000000
	.4byte gTextThemeCardDeactivated
	.4byte 0x00000001
	.4byte 0x0000000E
	.4byte gTextPressAToContinue2
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x14000101
	
	.4byte 0x00000000
	.4byte gTextThemeCardAlreadyLoadedOverwrite
	.4byte 0x00000002
	.4byte 0x0000000D
	.4byte gTextYes
	.4byte 0x0000000B
	.4byte gTextNo
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x28010101
	
	.GLOBAL gUnknown_0807C990
gUnknown_0807C990:
	.4byte gTextPleaseConnectEReader
	.4byte gTextWaitingForECard
	.4byte gTextECardDetected
	.4byte gTextRecivingECard
	.4byte gTextRecivedNewLevel
	.4byte gTextRecivedLevelAlreadyExists
	.4byte gTextError
	.4byte gTextAddingLevel
	.4byte gTextErasingLevels
	.4byte gTextSavingLevelAs
	.4byte gTextSavingLevelAs
	.4byte gTextBlank
	.4byte gTextBlank
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807C9CC
gUnknown_0807C9CC:
	.4byte gTextPressAWhenReady
	.4byte gTextPressBToCancel
	.4byte gTextPressAToReceiveLevel
	.4byte gTextDoNotTurnOff
	.4byte gTextPressAToContinue
	.4byte gTextPressAToContinue
	.4byte gTextPressAToRetry
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807CA08
gUnknown_0807CA08:
	.4byte 0x00000334
	.4byte 0x000003A3
	.4byte 0x00000097
	.4byte 0x00000359
	.4byte 0x0000035D
	.4byte 0x00000354
	.4byte 0x00000357
	.4byte 0x0000035B
	.4byte 0x00000352

	.GLOBAL gUnknown_0807CA2C
gUnknown_0807CA2C:
	.byte 0x05
	.byte 0x00
	.byte 0x06
	.byte 0x00
	.byte 0x07
	.byte 0x05
	.byte 0x08
	.byte 0x06
	.byte 0x09
	.byte 0x07
	.byte 0x0A
	.byte 0x08
	.byte 0x0B
	.byte 0x0D
	.byte 0x0C
	.byte 0x0E
	.byte 0x0D
	.byte 0x0F
	.byte 0x00
	.byte 0x00

	.GLOBAL gUnknown_0807CA40
gUnknown_0807CA40:
	.4byte 0x00000001
	.4byte 0x00000011
	.4byte 0x00000015
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000018
	.4byte 0x00000011
	.4byte 0x00000001
	.4byte 0x00000011
	.4byte 0x00000015
	.4byte 0x00000011
	.4byte 0x00000007
	.4byte 0x00000006
	.4byte 0x00000007
	.4byte 0x00000003
	
	.GLOBAL gUnknown_0807CA88
gUnknown_0807CA88:
	.4byte gTextPressAToAddLevel
	.4byte gTextPressAToEraseLevel

	.GLOBAL gUnknown_0807CA90
gUnknown_0807CA90:
	.2byte 0x0044
	.2byte 0x0073

	.GLOBAL gUnknown_0807CA94
gUnknown_0807CA94:
	.4byte 0x02012C00

	.GLOBAL gUnknown_0807CA98
gUnknown_0807CA98:
	.4byte 0x0201BC68

	.GLOBAL gPreloadedCardETable
gPreloadedCardETable:
	.4byte gTextCardEOne
	.4byte gCardEDataRevenge
	.4byte gTextCardETwo
	.4byte gCardEDataTheLongWay
	.4byte gTextCardEThree
	.4byte gCardEDataOneShotBlue
	.4byte gTextCardEFour
	.4byte gCardEDataEggAttack
	.4byte gTextCardEFive
	.4byte gCardEDataLaterGator
	.4byte gTextCardESix
	.4byte gCardEDataHotFeet
	.4byte gTextCardESeven
	.4byte gCardEDataBooInABox
	.4byte gTextCardEEight
	.4byte gCardEDataTheThwamplet
	.4byte gTextCardENine
	.4byte gCardEDataATrickyCandle
	.4byte gTextCardETen
	.4byte gCardEDataKeyToTheKey
	.4byte gTextCardEEleven
	.4byte gCardEDataDangerFlowers
	.4byte gTextCardETwelve
	.4byte gCardEDataClimbAndFall
	.4byte gTextCardEThirteen
	.4byte gCardEDataDummy2
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807CB0C
gUnknown_0807CB0C:
	.INCBIN "baserom.gba", 0x7CB0C, 0x7CB68-0x7CB0C
	
	.GLOBAL gUnknown_0807CB68
gUnknown_0807CB68:
	.INCBIN "baserom.gba", 0x7CB68, 0x7D1F0-0x7CB68

	.GLOBAL gUnknown_0807D1F0
gUnknown_0807D1F0:
	.INCBIN "baserom.gba", 0x7D1F0, 0x7D270-0x7D1F0

	.GLOBAL gUnknown_0807D270
gUnknown_0807D270:
	.INCBIN "baserom.gba", 0x7D270, 0x7D298-0x7D270

	.GLOBAL gUnknown_0807D298
gUnknown_0807D298:
	.INCBIN "baserom.gba", 0x7D298, 0x7DC70-0x7D298

	.GLOBAL gUnknown_0807DC70
gUnknown_0807DC70:
	.INCBIN "baserom.gba", 0x7DC70, 0x7DC88-0x7DC70

	.GLOBAL gUnknown_0807DC88
gUnknown_0807DC88:
	.INCBIN "baserom.gba", 0x7DC88, 0x7DC8C-0x7DC88

	.GLOBAL gUnknown_0807DC8C
gUnknown_0807DC8C:
	.INCBIN "baserom.gba", 0x7DC8C, 0x7DC90-0x7DC8C

	.GLOBAL gUnknown_0807DC90
gUnknown_0807DC90:
	.INCBIN "baserom.gba", 0x7DC90, 0x7DC9C-0x7DC90

	.GLOBAL gUnknown_0807DC9C
gUnknown_0807DC9C:
	.INCBIN "baserom.gba", 0x7DC9C, 0x7DD14-0x7DC9C

	.GLOBAL gUnknown_0807DD14
gUnknown_0807DD14:
	.4byte 0x7FFF0000
	.4byte 0x00000000

	.GLOBAL gUnknown_0807DD1C
gUnknown_0807DD1C:
	.4byte gTextErrorFlashNotDetected
	.4byte 0x00000007
	.4byte gTextErrorSaveCorrupted
	.4byte 0x00000004
	.4byte gErrorELevelCorruptedText
	.4byte 0x00000005

	.GLOBAL gPaletteIndices_0807DD34
gPaletteIndices_0807DD34:
	.4byte 37 @ World 1 palette
	.4byte 38 @ World 2 palette
	.4byte 39 @ World 3 palette
	.4byte 40 @ World 4 palette
	.4byte 41 @ World 5 palette
	.4byte 42 @ World 6 palette

	.GLOBAL gPaletteIndices_0807DD4C
gPaletteIndices_0807DD4C:
	.4byte 43 @ World 1 Plus palette
	.4byte 44 @ World 2 Plus palette
	.4byte 45 @ World 3 Plus palette
	.4byte 46 @ World 4 Plus palette
	.4byte 47 @ World 5 Plus palette
	.4byte 48 @ World 6 Plus palette

	.GLOBAL gPaletteIndices_0807DD64
gPaletteIndices_0807DD64:
	.4byte 49 @ Expert 1 palette
	.4byte 50 @ Expert 2 palette
	.4byte 51 @ Expert 3 palette
	.4byte 52 @ Expert 4 palette
	.4byte 53 @ Expert 5 palette
	.4byte 54 @ Expert 6 palette

	.GLOBAL gPaletteIndices_0807DD7C
gPaletteIndices_0807DD7C:
	.4byte 55 @ Expert 7 palette
	.4byte 56 @ Expert 8 palette
	.4byte 57 @ Expert 9 palette
	.4byte 59 @ Expert 10 palette
	.4byte 60 @ Expert 11 palette
	.4byte 61 @ Expert 12 palette

	.GLOBAL gUnknown_0807DD94
gUnknown_0807DD94:
	.INCBIN "baserom.gba", 0x7DD94, 0x81D98-0x7DD94

	.GLOBAL gPredefinedPalettes
gPredefinedPalettes:
	.INCBIN "assets/palettes/0_title_screen_bg.gbapal"
	.INCBIN "assets/palettes/0_title_screen_obj.gbapal"
	.INCBIN "assets/palettes/0_title_screen_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/0_title_screen_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/1_main_menu_bg.gbapal"
	.INCBIN "assets/palettes/1_main_menu_obj.gbapal"
	.INCBIN "assets/palettes/1_main_menu_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/1_main_menu_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_bg.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_obj.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/2_expert_levels_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/3_options_menu_bg.gbapal"
	.INCBIN "assets/palettes/3_options_menu_obj.gbapal"
	.INCBIN "assets/palettes/3_options_menu_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/3_options_menu_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/4_bg.gbapal"
	.INCBIN "assets/palettes/4_obj.gbapal"
	.INCBIN "assets/palettes/4_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/4_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/5_level_help_bg.gbapal"
	.INCBIN "assets/palettes/5_level_help_obj.gbapal"
	.INCBIN "assets/palettes/5_level_help_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/5_level_help_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/6_bg.gbapal"
	.INCBIN "assets/palettes/6_obj.gbapal"
	.INCBIN "assets/palettes/6_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/6_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/7_bg.gbapal"
	.INCBIN "assets/palettes/7_obj.gbapal"
	.INCBIN "assets/palettes/7_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/7_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/8_e_world_bg.gbapal"
	.INCBIN "assets/palettes/8_e_world_obj.gbapal"
	.INCBIN "assets/palettes/8_e_world_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/8_e_world_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/9_bg.gbapal"
	.INCBIN "assets/palettes/9_obj.gbapal"
	.INCBIN "assets/palettes/9_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/9_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/10_bg.gbapal"
	.INCBIN "assets/palettes/10_obj.gbapal"
	.INCBIN "assets/palettes/10_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/10_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_bg.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_obj.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/11_level_select_world_one_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_bg.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_obj.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/12_level_select_world_two_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_bg.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_obj.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/13_level_select_world_three_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_bg.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_obj.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/14_level_select_world_four_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_bg.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_obj.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/15_level_select_world_five_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_bg.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_obj.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/16_level_select_world_six_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_bg.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_obj.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/17_level_select_dk_boss_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_bg.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_obj.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/18_level_select_world_one_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_bg.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_obj.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/19_level_select_world_two_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_bg.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_obj.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/20_level_select_world_three_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_bg.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_obj.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/21_level_select_world_four_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_bg.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_obj.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/22_level_select_world_five_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_bg.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_obj.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/23_level_select_world_six_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_bg.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_obj.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/24_level_select_dk_boss_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/25_world_one_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/26_world_two_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/27_world_three_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/28_world_four_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/29_world_five_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/30_world_six_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/31_world_one_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/32_world_two_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/33_world_three_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/34_world_four_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/35_world_five_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_bg.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_obj.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/36_world_six_plus_boss_clear_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/37_world_one_bg.gbapal"
	.INCBIN "assets/palettes/37_world_one_obj.gbapal"
	.INCBIN "assets/palettes/37_world_one_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/37_world_one_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/38_world_two_bg.gbapal"
	.INCBIN "assets/palettes/38_world_two_obj.gbapal"
	.INCBIN "assets/palettes/38_world_two_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/38_world_two_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/39_world_three_bg.gbapal"
	.INCBIN "assets/palettes/39_world_three_obj.gbapal"
	.INCBIN "assets/palettes/39_world_three_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/39_world_three_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/40_world_four_bg.gbapal"
	.INCBIN "assets/palettes/40_world_four_obj.gbapal"
	.INCBIN "assets/palettes/40_world_four_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/40_world_four_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/41_world_five_bg.gbapal"
	.INCBIN "assets/palettes/41_world_five_obj.gbapal"
	.INCBIN "assets/palettes/41_world_five_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/41_world_five_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/42_world_six_bg.gbapal"
	.INCBIN "assets/palettes/42_world_six_obj.gbapal"
	.INCBIN "assets/palettes/42_world_six_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/42_world_six_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_bg.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_obj.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/43_world_one_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_bg.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_obj.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/44_world_two_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_bg.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_obj.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/45_world_three_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_bg.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_obj.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/46_world_four_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_bg.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_obj.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/47_world_five_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_bg.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_obj.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/48_world_six_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/49_expert_1_bg.gbapal"
	.INCBIN "assets/palettes/49_expert_1_obj.gbapal"
	.INCBIN "assets/palettes/49_expert_1_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/49_expert_1_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/50_expert_2_bg.gbapal"
	.INCBIN "assets/palettes/50_expert_2_obj.gbapal"
	.INCBIN "assets/palettes/50_expert_2_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/50_expert_2_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/51_expert_3_bg.gbapal"
	.INCBIN "assets/palettes/51_expert_3_obj.gbapal"
	.INCBIN "assets/palettes/51_expert_3_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/51_expert_3_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/52_expert_4_bg.gbapal"
	.INCBIN "assets/palettes/52_expert_4_obj.gbapal"
	.INCBIN "assets/palettes/52_expert_4_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/52_expert_4_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/53_expert_5_bg.gbapal"
	.INCBIN "assets/palettes/53_expert_5_obj.gbapal"
	.INCBIN "assets/palettes/53_expert_5_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/53_expert_5_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/54_expert_6_bg.gbapal"
	.INCBIN "assets/palettes/54_expert_6_obj.gbapal"
	.INCBIN "assets/palettes/54_expert_6_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/54_expert_6_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/55_expert_7_bg.gbapal"
	.INCBIN "assets/palettes/55_expert_7_obj.gbapal"
	.INCBIN "assets/palettes/55_expert_7_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/55_expert_7_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/56_expert_8_bg.gbapal"
	.INCBIN "assets/palettes/56_expert_8_obj.gbapal"
	.INCBIN "assets/palettes/56_expert_8_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/56_expert_8_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/57_expert_9_bg.gbapal"
	.INCBIN "assets/palettes/57_expert_9_obj.gbapal"
	.INCBIN "assets/palettes/57_expert_9_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/57_expert_9_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_bg.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_obj.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/58_expert_unused_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/59_expert_10_bg.gbapal"
	.INCBIN "assets/palettes/59_expert_10_obj.gbapal"
	.INCBIN "assets/palettes/59_expert_10_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/59_expert_10_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/60_expert_11_bg.gbapal"
	.INCBIN "assets/palettes/60_expert_11_obj.gbapal"
	.INCBIN "assets/palettes/60_expert_11_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/60_expert_11_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/61_expert_12_bg.gbapal"
	.INCBIN "assets/palettes/61_expert_12_obj.gbapal"
	.INCBIN "assets/palettes/61_expert_12_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/61_expert_12_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_bg.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_obj.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/62_dk_boss_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_bg.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_obj.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/63_dk_boss_plus_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/64_bg.gbapal"
	.INCBIN "assets/palettes/64_obj.gbapal"
	.INCBIN "assets/palettes/64_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/64_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/65_bg.gbapal"
	.INCBIN "assets/palettes/65_obj.gbapal"
	.INCBIN "assets/palettes/65_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/65_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/66_bg.gbapal"
	.INCBIN "assets/palettes/66_obj.gbapal"
	.INCBIN "assets/palettes/66_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/66_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/67_bg.gbapal"
	.INCBIN "assets/palettes/67_obj.gbapal"
	.INCBIN "assets/palettes/67_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/67_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/68_bg.gbapal"
	.INCBIN "assets/palettes/68_obj.gbapal"
	.INCBIN "assets/palettes/68_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/68_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/69_bg.gbapal"
	.INCBIN "assets/palettes/69_obj.gbapal"
	.INCBIN "assets/palettes/69_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/69_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/70_bg.gbapal"
	.INCBIN "assets/palettes/70_obj.gbapal"
	.INCBIN "assets/palettes/70_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/70_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/71_bg.gbapal"
	.INCBIN "assets/palettes/71_obj.gbapal"
	.INCBIN "assets/palettes/71_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/71_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/72_bg.gbapal"
	.INCBIN "assets/palettes/72_obj.gbapal"
	.INCBIN "assets/palettes/72_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/72_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/73_bg.gbapal"
	.INCBIN "assets/palettes/73_obj.gbapal"
	.INCBIN "assets/palettes/73_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/73_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/74_bg.gbapal"
	.INCBIN "assets/palettes/74_obj.gbapal"
	.INCBIN "assets/palettes/74_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/74_obj_gbplayer.gbapal"
	.INCBIN "assets/palettes/75_bg.gbapal"
	.INCBIN "assets/palettes/75_obj.gbapal"
	.INCBIN "assets/palettes/75_bg_gbplayer.gbapal"
	.INCBIN "assets/palettes/75_obj_gbplayer.gbapal"

	.GLOBAL gUnknown_080A7D98
gUnknown_080A7D98:
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0x00000070
	.4byte 0x00000010
	.4byte 0x00000098
	.4byte 0x00000010
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x00000048
	.4byte 0x00000038
	.4byte 0x00000070
	.4byte 0x00000038
	.4byte 0x00000098
	.4byte 0x00000038
	.4byte 0x000000C0
	.4byte 0x00000038
	.4byte 0x00000048
	.4byte 0x00000060
	.4byte 0x00000070
	.4byte 0x00000060
	.4byte 0x00000098
	.4byte 0x00000060
	.4byte 0x000000C0
	.4byte 0x00000060

	.GLOBAL gUnknown_080A7DF8
gUnknown_080A7DF8:
	.4byte 0x0000004A
	.4byte 0x00000013
	.4byte 0x00000072
	.4byte 0x00000013
	.4byte 0x0000009A
	.4byte 0x00000013
	.4byte 0x000000C2
	.4byte 0x00000013
	.4byte 0x0000004A
	.4byte 0x0000003B
	.4byte 0x00000072
	.4byte 0x0000003B
	.4byte 0x0000009A
	.4byte 0x0000003B
	.4byte 0x000000C2
	.4byte 0x0000003B
	.4byte 0x0000004A
	.4byte 0x00000063
	.4byte 0x00000072
	.4byte 0x00000063
	.4byte 0x0000009A
	.4byte 0x00000063
	.4byte 0x000000C2
	.4byte 0x00000063
	.4byte 0x00000048
	.4byte 0x00000010
	.4byte 0x00000070
	.4byte 0x00000010
	.4byte 0x00000098
	.4byte 0x00000010
	.4byte 0x000000C0
	.4byte 0x00000010
	.4byte 0x00000048
	.4byte 0x00000038
	.4byte 0x00000070
	.4byte 0x00000038
	.4byte 0x00000098
	.4byte 0x00000038
	.4byte 0x000000C0
	.4byte 0x00000038
	.4byte 0x00000048
	.4byte 0x00000060
	.4byte 0x00000070
	.4byte 0x00000060
	.4byte 0x00000098
	.4byte 0x00000060
	.4byte 0x000000C0
	.4byte 0x00000060

	.GLOBAL gUnknown_080A7EB8
gUnknown_080A7EB8:
	.INCBIN "baserom.gba", 0xA7EB8, 0xA7ED0-0xA7EB8

	.GLOBAL gUnknown_080A7ED0
gUnknown_080A7ED0:
	.INCBIN "baserom.gba", 0xA7ED0, 0xA7EE8-0xA7ED0

	.GLOBAL gUnknown_080A7EE8
gUnknown_080A7EE8:
	.INCBIN "baserom.gba", 0xA7EE8, 0xA8008-0xA7EE8

	.GLOBAL gUnknown_080A8008
gUnknown_080A8008:
	.INCBIN "baserom.gba", 0xA8008, 0xA8128-0xA8008

	.GLOBAL gUnknown_080A8128
gUnknown_080A8128:
	.INCBIN "baserom.gba", 0xA8128, 0xA8248-0xA8128

	.GLOBAL gUnknown_080A8248
gUnknown_080A8248:
	.INCBIN "baserom.gba", 0xA8248, 0xA8260-0xA8248

	.GLOBAL gUnknown_080A8260
gUnknown_080A8260:
	.INCBIN "baserom.gba", 0xA8260, 0xA8278-0xA8260

	.GLOBAL gUnknown_080A8278
gUnknown_080A8278:
	.INCBIN "baserom.gba", 0xA8278, 0xA8290-0xA8278

	.GLOBAL gUnknown_080A8290
gUnknown_080A8290:
	.INCBIN "baserom.gba", 0xA8290, 0xA82A8-0xA8290

	.GLOBAL gUnknown_080A82A8
gUnknown_080A82A8:
	.INCBIN "baserom.gba", 0xA82A8, 0xA82C0-0xA82A8

	.GLOBAL gUnknown_080A82C0
gUnknown_080A82C0:
	.INCBIN "baserom.gba", 0xA82C0, 0xA8308-0xA82C0

	.GLOBAL gUnknown_080A8308
gUnknown_080A8308:
	.INCBIN "baserom.gba", 0xA8308, 0xA8428-0xA8308

	.GLOBAL gUnknown_080A8428
gUnknown_080A8428:
	.INCBIN "baserom.gba", 0xA8428, 0xA8548-0xA8428

	.GLOBAL gUnknown_080A8548
gUnknown_080A8548:
	.INCBIN "baserom.gba", 0xA8548, 0xA8668-0xA8548

	.GLOBAL gUnknown_080A8668
gUnknown_080A8668:
	.byte 0x09
	.byte 0x12
	.byte 0x1B
	.byte 0x24
	.byte 0x2D
	.byte 0x36
	.byte 0x3F
	.byte 0x48
	.byte 0x51
	.byte 0x5A
	.byte 0x5A
	.byte 0x5A

	.GLOBAL gUnknown_080A8674
gUnknown_080A8674:
	.4byte 0x00000040
	.4byte 0x00000041
	.4byte 0x00000042
	.4byte 0x00000043
	.4byte 0x00000044
	.4byte 0x00000045

	.GLOBAL gUnknown_080A868C
gUnknown_080A868C:
	.4byte 0x00000046
	.4byte 0x00000047
	.4byte 0x00000048
	.4byte 0x00000049
	.4byte 0x0000004A
	.4byte 0x0000004B

	.GLOBAL gWorldStartTable
gWorldStartTable:
	.4byte gWorldOneStartData
	.4byte gWorldTwoStartData
	.4byte gWorldThreeStartData
	.4byte gWorldFourStartData
	.4byte gWorldFiveStartData
	.4byte gWorldSixStartData

	.GLOBAL gWorldPlusStartTable
gWorldPlusStartTable:
	.4byte gWorldOnePlusStartData
	.4byte gWorldTwoPlusStartData
	.4byte gWorldThreePlusStartData
	.4byte gWorldFourPlusStartData
	.4byte gWorldFivePlusStartData
	.4byte gWorldSixPlusStartData

	.GLOBAL gUnknown_080A86D4
gUnknown_080A86D4:
	.2byte 0x00EC
	.2byte 0x00EC
	.2byte 0x00A9
	.2byte 0x00D7
	.2byte 0x00D5
	.2byte 0x00D5
	.2byte 0x00DA
	.2byte 0x00DA
	.2byte 0x00D3
	.2byte 0x00DA
	.2byte 0x00D4
	.2byte 0x00D4

	.GLOBAL gUnknown_080A86EC
gUnknown_080A86EC:
	.4byte 0x7FFF0000
	.4byte 0x00000000

	.GLOBAL gUnknown_080A86F4
gUnknown_080A86F4:
	.byte 0x01
	.byte 0x02
	.byte 0x02
	.byte 0x03
	.byte 0x04
	.byte 0x03

	.GLOBAL gEReaderSendTextPointers
gEReaderSendTextPointers:
	.2byte 0x0000
	.4byte 0x00000000
	.4byte gTextReadyToSendLink
	.4byte gTextReadyToSendLink
	.4byte gTextReadyToSendPressA
	.4byte gTextSending
	.4byte gTextSendingCompleted
	.4byte gTextSending

	.GLOBAL gUnknown_080A8718
gUnknown_080A8718:
	.INCBIN "baserom.gba", 0xA8718, 0xA8C18-0xA8718

	.GLOBAL gUnknown_080A8C18
gUnknown_080A8C18:
	.INCBIN "baserom.gba", 0xA8C18, 0xA9098-0xA8C18

	.GLOBAL gUnknown_080A9098
gUnknown_080A9098:
	.INCBIN "baserom.gba", 0xA9098, 0xA9558-0xA9098

	.GLOBAL gUnknown_080A9558
gUnknown_080A9558:
	.INCBIN "baserom.gba", 0xA9558, 0xA999C-0xA9558

	.GLOBAL gUnknown_080A999C
gUnknown_080A999C:
	.INCBIN "baserom.gba", 0xA999C, 0xA9D9C-0xA999C

	.GLOBAL gUnknown_080A9D9C
gUnknown_080A9D9C:
	.INCBIN "baserom.gba", 0xA9D9C, 0xAA778-0xA9D9C

	.GLOBAL gUnknown_080AA778
gUnknown_080AA778:
	.INCBIN "baserom.gba", 0xAA778, 0xAAC64-0xAA778

	.GLOBAL gUnknown_080AAC64
gUnknown_080AAC64:
	.INCBIN "baserom.gba", 0xAAC64, 0xAAEBC-0xAAC64

	.GLOBAL gUnknown_080AAEBC
gUnknown_080AAEBC:
	.INCBIN "baserom.gba", 0xAAEBC, 0xAB3CC-0xAAEBC

	.GLOBAL gUnknown_080AB3CC
gUnknown_080AB3CC:
	.INCBIN "baserom.gba", 0xAB3CC, 0xAB624-0xAB3CC

	.GLOBAL gUnknown_080AB624
gUnknown_080AB624:
	.INCBIN "baserom.gba", 0xAB624, 0xABBF4-0xAB624

	.GLOBAL gUnknown_080ABBF4
gUnknown_080ABBF4:
	.INCBIN "baserom.gba", 0xABBF4, 0xAC54C-0xABBF4

	.GLOBAL gUnknown_080AC54C
gUnknown_080AC54C:
	.INCBIN "baserom.gba", 0xAC54C, 0xAC9D4-0xAC54C

	.GLOBAL gUnknown_080AC9D4
gUnknown_080AC9D4:
	.INCBIN "baserom.gba", 0xAC9D4, 0xACD00-0xAC9D4

	.GLOBAL gUnknown_080ACD00
gUnknown_080ACD00:
	.INCBIN "baserom.gba", 0xACD00, 0xAD0E8-0xACD00

	.GLOBAL gUnknown_080AD0E8
gUnknown_080AD0E8:
	.INCBIN "baserom.gba", 0xAD0E8, 0xAD418-0xAD0E8

	.GLOBAL gUnknown_080AD418
gUnknown_080AD418:
	.INCBIN "baserom.gba", 0xAD418, 0xAD814-0xAD418

	.GLOBAL gUnknown_080AD814
gUnknown_080AD814:
	.INCBIN "baserom.gba", 0xAD814, 0xAE610-0xAD814

	.GLOBAL gUnknown_080AE610
gUnknown_080AE610:
	.INCBIN "baserom.gba", 0xAE610, 0xAEB38-0xAE610

	.GLOBAL gUnknown_080AEB38
gUnknown_080AEB38:
	.INCBIN "baserom.gba", 0xAEB38, 0xAF038-0xAEB38

	.GLOBAL gUnknown_080AF038
gUnknown_080AF038:
	.INCBIN "baserom.gba", 0xAF038, 0xAF538-0xAF038

	.GLOBAL gUnknown_080AF538
gUnknown_080AF538:
	.INCBIN "baserom.gba", 0xAF538, 0xAF90C-0xAF538

	.GLOBAL gUnknown_080AF90C
gUnknown_080AF90C:
	.INCBIN "baserom.gba", 0xAF90C, 0xAFCB4-0xAF90C

	.GLOBAL gUnknown_080AFCB4
gUnknown_080AFCB4:
	.INCBIN "baserom.gba", 0xAFCB4, 0xB07EC-0xAFCB4

	.GLOBAL gUnknown_080B07EC
gUnknown_080B07EC:
	.INCBIN "baserom.gba", 0xB07EC, 0xB0D2C-0xB07EC

	.GLOBAL gUnknown_080B0D2C
gUnknown_080B0D2C:
	.INCBIN "baserom.gba", 0xB0D2C, 0xB116C-0xB0D2C

	.GLOBAL gUnknown_080B116C
gUnknown_080B116C:
	.INCBIN "baserom.gba", 0xB116C, 0xB157C-0xB116C

	.GLOBAL gUnknown_080B157C
gUnknown_080B157C:
	.INCBIN "baserom.gba", 0xB157C, 0xB1B58-0xB157C

	.GLOBAL gUnknown_080B1B58
gUnknown_080B1B58:
	.INCBIN "baserom.gba", 0xB1B58, 0xB20A0-0xB1B58

	.GLOBAL gUnknown_080B20A0
gUnknown_080B20A0:
	.INCBIN "baserom.gba", 0xB20A0, 0xB2D60-0xB20A0

	.GLOBAL gUnknown_080B2D60
gUnknown_080B2D60:
	.INCBIN "baserom.gba", 0xB2D60, 0xB3220-0xB2D60

	.GLOBAL gUnknown_080B3220
gUnknown_080B3220:
	.INCBIN "baserom.gba", 0xB3220, 0xB3760-0xB3220

	.GLOBAL gUnknown_080B3760
gUnknown_080B3760:
	.INCBIN "baserom.gba", 0xB3760, 0xB3BD4-0xB3760

	.GLOBAL gUnknown_080B3BD4
gUnknown_080B3BD4:
	.INCBIN "baserom.gba", 0xB3BD4, 0xB4094-0xB3BD4

	.GLOBAL gUnknown_080B4094
gUnknown_080B4094:
	.INCBIN "baserom.gba", 0xB4094, 0xB43B4-0xB4094

	.GLOBAL gUnknown_080B43B4
gUnknown_080B43B4:
	.INCBIN "baserom.gba", 0xB43B4, 0xB512C-0xB43B4

	.GLOBAL gWorldSpriteTableData
gWorldSpriteTableData:
	.4byte gUnknown_087140B8 @ TODO: replace this with gWorldOneSpriteTable once split
	.4byte 37
	.4byte 15 @ Sprite count

	.4byte gUnknown_08723440 @ TODO: replace this with gWorldTwoSpriteTable once split
	.4byte 38
	.4byte 21 @ Sprite count
	
	.4byte gUnknown_087326E8 @ TODO: replace this with gWorldThreeSpriteTable once split
	.4byte 39
	.4byte 22 @ Sprite count
	
	.4byte gUnknown_0875A154 @ TODO: replace this with gWorldFourSpriteTable once split
	.4byte 40
	.4byte 28 @ Sprite count

	.4byte gUnknown_08771D24 @ TODO: replace this with gWorldFiveSpriteTable once split
	.4byte 41
	.4byte 15 @ Sprite count
	
	.4byte gUnknown_08796104 @ TODO: replace this with gWorldSixSpriteTable once split
	.4byte 42
	.4byte 20 @ Sprite count	

	.GLOBAL gBossOneSpriteTableData
gBossOneSpriteTableData:
	.4byte gUnknown_087AC8DC @ TODO: replace this with gBossOneSpriteTable once split
	.4byte 62
	.4byte 14 @ Sprite count

	.GLOBAL gBossTwoSpriteTableData
gBossTwoSpriteTableData:
	.4byte gUnknown_087AFAA0 @ TODO: replace this with gBossTwoSpriteTable once split
	.4byte 63
	.4byte 10 @ Sprite count

	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	
	.GLOBAL gUnknown_080B51BC
gUnknown_080B51BC:
	.4byte 0x00000008

	.GLOBAL gUnknown_080B51C0
gUnknown_080B51C0:
	.INCBIN "baserom.gba", 0xB51C0, 0xB51D8-0xB51C0

	.GLOBAL gUnknown_080B51D8
gUnknown_080B51D8:
	.INCBIN "baserom.gba", 0xB51D8, 0xB51F8-0xB51D8

	.GLOBAL gUnknown_080B51F8
gUnknown_080B51F8:
	.INCBIN "baserom.gba", 0xB51F8, 0xB521C-0xB51F8

	.GLOBAL gUnknown_080B521C
gUnknown_080B521C:
	.INCBIN "assets/objects/key_blinking.bin"

	.GLOBAL gUnknown_080B5300
gUnknown_080B5300:
	.INCBIN "baserom.gba", 0xB5300, 0xB5328-0xB5300

	.GLOBAL gUnknown_080B5328
gUnknown_080B5328:
	.INCBIN "baserom.gba", 0xB5328, 0xB53F4-0xB5328

	.GLOBAL gUnknown_080B53F4
gUnknown_080B53F4:
	.INCBIN "baserom.gba", 0xB53F4, 0xB5424-0xB53F4

	.GLOBAL gUnknown_080B5424
gUnknown_080B5424:
	.INCBIN "baserom.gba", 0xB5424, 0xB5F80-0xB5424

	.GLOBAL gUnknown_080B5F80
gUnknown_080B5F80:
	.INCBIN "baserom.gba", 0xB5F80, 0xB6C30-0xB5F80

	.GLOBAL gUnknown_080B6C30
gUnknown_080B6C30:
	.4byte gUnknown_080A8718
	.4byte 0x00000000
	.4byte gUnknown_080A8C18
	.4byte 0x00000000
	.4byte gUnknown_080A9098
	.4byte 0x00000000
	.4byte gUnknown_080A9558
	.4byte 0x00000000
	.4byte gUnknown_080A999C
	.4byte 0x00000000
	.4byte gUnknown_080A9D9C
	.4byte 0x00000000
	.4byte gUnknown_080AA778
	.4byte 0x00000000
	.4byte gUnknown_080AAC64
	.4byte 0x00000000
	.4byte gUnknown_080AAEBC
	.4byte 0x00000000
	.4byte gUnknown_080AB3CC
	.4byte 0x00000000
	.4byte gUnknown_080AB624
	.4byte 0x00000000
	.4byte gUnknown_080ABBF4
	.4byte 0x00000000
	.4byte gUnknown_080AC54C
	.4byte 0x00000000
	.4byte gUnknown_080AC9D4
	.4byte 0x00000000
	.4byte gUnknown_080ACD00
	.4byte 0x00000000
	.4byte gUnknown_080AD0E8
	.4byte 0x00000000
	.4byte gUnknown_080AD418
	.4byte 0x00000000
	.4byte gUnknown_080AD814
	.4byte 0x00000000
	.4byte gUnknown_080AE610
	.4byte 0x00000000
	.4byte gUnknown_080AEB38
	.4byte 0x00000000
	.4byte gUnknown_080AF038
	.4byte 0x00000000
	.4byte gUnknown_080AF538
	.4byte 0x00000000
	.4byte gUnknown_080AF90C
	.4byte 0x00000000
	.4byte gUnknown_080AFCB4
	.4byte 0x00000000
	.4byte gUnknown_080B07EC
	.4byte 0x00000000
	.4byte gUnknown_080B0D2C
	.4byte 0x00000000
	.4byte gUnknown_080B116C
	.4byte 0x00000000
	.4byte gUnknown_080B157C
	.4byte 0x00000000
	.4byte gUnknown_080B1B58
	.4byte 0x00000000
	.4byte gUnknown_080B20A0
	.4byte 0x00000000
	.4byte gUnknown_080B2D60
	.4byte 0x00000000
	.4byte gUnknown_080B3220
	.4byte 0x00000000
	.4byte gUnknown_080B3760
	.4byte 0x00000000
	.4byte gUnknown_080B3BD4
	.4byte 0x00000000
	.4byte gUnknown_080B4094
	.4byte 0x00000000
	.4byte gUnknown_080B43B4
	.4byte 0x00000000
	.4byte 0x02A302D5
	.4byte 0x023F0271
	.4byte 0x01DB020D
	.4byte 0x017701A9
	.4byte 0x01130145
	.4byte 0x00AF00E1
	.4byte 0x004B007D
	.4byte 0xFFE70019
	.4byte 0xFF83FFB5
	.4byte 0xFF1FFF51
	.4byte 0xFEBBFEED
	.4byte 0xFE57FE89
	.4byte 0xFDF3FE25
	.4byte 0xFD8FFDC1
	.4byte 0xFD2BFD5D

	.INCBIN "baserom.gba", 0xB6D8C, 0xB77F4-0xB6D8C

	.GLOBAL gUnknown_080B77F4
gUnknown_080B77F4:
	.INCBIN "baserom.gba", 0xB77F4, 0xB8584-0xB77F4

	.GLOBAL gUnknown_080B8584
gUnknown_080B8584:
	.INCBIN "baserom.gba", 0xB8584, 0xB889C-0xB8584

	.GLOBAL gUnknown_080B889C
gUnknown_080B889C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080B88A4
gUnknown_080B88A4:
	.INCBIN "baserom.gba", 0xB88A4, 0xB90A4-0xB88A4

	.GLOBAL gUnknown_080B90A4
gUnknown_080B90A4:
	.INCBIN "baserom.gba", 0xB90A4, 0xB92E4-0xB90A4

	.GLOBAL gUnknown_080B92E4
gUnknown_080B92E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080B92EC
gUnknown_080B92EC:
	.INCBIN "baserom.gba", 0xB92EC, 0xB9AEC-0xB92EC

	.GLOBAL gUnknown_080B9AEC
gUnknown_080B9AEC:
	.INCBIN "baserom.gba", 0xB9AEC, 0xB9B7C-0xB9AEC

	.GLOBAL gUnknown_080B9B7C
gUnknown_080B9B7C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080B9B84
gUnknown_080B9B84:
	.INCBIN "baserom.gba", 0xB9B84, 0xB9C84-0xB9B84

	.GLOBAL gUnknown_080B9C84
gUnknown_080B9C84:
	.INCBIN "baserom.gba", 0xB9C84, 0xB9DA4-0xB9C84

	.GLOBAL gUnknown_080B9DA4
gUnknown_080B9DA4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080B9DAC
gUnknown_080B9DAC:
	.INCBIN "baserom.gba", 0xB9DAC, 0xB9FAC-0xB9DAC

	.GLOBAL gUnknown_080B9FAC
gUnknown_080B9FAC:
	.INCBIN "baserom.gba", 0xB9FAC, 0xBA1A4-0xB9FAC

	.GLOBAL gUnknown_080BA1A4
gUnknown_080BA1A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080BA1AC
gUnknown_080BA1AC:
	.INCBIN "baserom.gba", 0xBA1AC, 0xBA8AC-0xBA1AC

	.GLOBAL gUnknown_080BA8AC
gUnknown_080BA8AC:
	.INCBIN "baserom.gba", 0xBA8AC, 0xBA9CC-0xBA8AC

	.GLOBAL gUnknown_080BA9CC
gUnknown_080BA9CC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080BA9D4
gUnknown_080BA9D4:
	.INCBIN "baserom.gba", 0xBA9D4, 0xBACD4-0xBA9D4

	.GLOBAL gUnknown_080BACD4
gUnknown_080BACD4:
	.INCBIN "baserom.gba", 0xBACD4, 0xBADF4-0xBACD4

	.GLOBAL gUnknown_080BADF4
gUnknown_080BADF4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=3, affineParam=0

	.GLOBAL gUnknown_080BADFC
gUnknown_080BADFC:
	.INCBIN "baserom.gba", 0xBADFC, 0xBEDFC-0xBADFC

	.GLOBAL gUnknown_080BEDFC
gUnknown_080BEDFC:
	.INCBIN "baserom.gba", 0xBEDFC, 0xBF03C-0xBEDFC

	.GLOBAL gUnknown_080BF03C
gUnknown_080BF03C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080BF044
gUnknown_080BF044:
	.INCBIN "baserom.gba", 0xBF044, 0xC0044-0xBF044

	.GLOBAL gUnknown_080C0044
gUnknown_080C0044:
	.INCBIN "baserom.gba", 0xC0044, 0xC0140-0xC0044

	.GLOBAL gUnknown_080C0140
gUnknown_080C0140:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080C0148
gUnknown_080C0148:
	.INCBIN "baserom.gba", 0xC0148, 0xC0848-0xC0148

	.GLOBAL gUnknown_080C0848
gUnknown_080C0848:
	.INCBIN "baserom.gba", 0xC0848, 0xC09F8-0xC0848

	.GLOBAL gUnknown_080C09F8
gUnknown_080C09F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080C0A00
gUnknown_080C0A00:
	.INCBIN "baserom.gba", 0xC0A00, 0xC2200-0xC0A00

	.GLOBAL gUnknown_080C2200
gUnknown_080C2200:
	.INCBIN "baserom.gba", 0xC2200, 0xC2320-0xC2200

	.GLOBAL gUnknown_080C2320
gUnknown_080C2320:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080C2328
gUnknown_080C2328:
	.INCBIN "baserom.gba", 0xC2328, 0xC2728-0xC2328

	.GLOBAL gUnknown_080C2728
gUnknown_080C2728:
	.INCBIN "baserom.gba", 0xC2728, 0xC2800-0xC2728

	.GLOBAL gUnknown_080C2800
gUnknown_080C2800:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080C2808
gUnknown_080C2808:
	.INCBIN "baserom.gba", 0xC2808, 0xC3408-0xC2808

	.GLOBAL gUnknown_080C3408
gUnknown_080C3408:
	.INCBIN "baserom.gba", 0xC3408, 0xC3648-0xC3408

	.GLOBAL gUnknown_080C3648
gUnknown_080C3648:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080C3650
gUnknown_080C3650:
	.INCBIN "baserom.gba", 0xC3650, 0xC5650-0xC3650

	.GLOBAL gUnknown_080C5650
gUnknown_080C5650:
	.INCBIN "baserom.gba", 0xC5650, 0xC56E0-0xC5650

	.GLOBAL gUnknown_080C56E0
gUnknown_080C56E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080C56E8
gUnknown_080C56E8:
	.INCBIN "baserom.gba", 0xC56E8, 0xC5EE8-0xC56E8

	.GLOBAL gUnknown_080C5EE8
gUnknown_080C5EE8:
	.INCBIN "baserom.gba", 0xC5EE8, 0xC6008-0xC5EE8

	.GLOBAL gUnknown_080C6008
gUnknown_080C6008:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_080C6010
gUnknown_080C6010:
	.INCBIN "baserom.gba", 0xC6010, 0xC7010-0xC6010

	.GLOBAL gUnknown_080C7010
gUnknown_080C7010:
	.INCBIN "baserom.gba", 0xC7010, 0xC70E8-0xC7010

	.GLOBAL gUnknown_080C70E8
gUnknown_080C70E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080C70F0
gUnknown_080C70F0:
	.INCBIN "baserom.gba", 0xC70F0, 0xC73F0-0xC70F0

	.GLOBAL gUnknown_080C73F0
gUnknown_080C73F0:
	.INCBIN "baserom.gba", 0xC73F0, 0xC7774-0xC73F0

	.GLOBAL gUnknown_080C7774
gUnknown_080C7774:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080C777C
gUnknown_080C777C:
	.INCBIN "baserom.gba", 0xC777C, 0xC7B7C-0xC777C

	.GLOBAL gUnknown_080C7B7C
gUnknown_080C7B7C:
	.INCBIN "baserom.gba", 0xC7B7C, 0xC7C54-0xC7B7C

	.GLOBAL gUnknown_080C7C54
gUnknown_080C7C54:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080C7C5C
gUnknown_080C7C5C:
	.INCBIN "baserom.gba", 0xC7C5C, 0xC7F5C-0xC7C5C

	.GLOBAL gUnknown_080C7F5C
gUnknown_080C7F5C:
	.INCBIN "baserom.gba", 0xC7F5C, 0xC8034-0xC7F5C

	.GLOBAL gUnknown_080C8034
gUnknown_080C8034:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080C803C
gUnknown_080C803C:
	.INCBIN "baserom.gba", 0xC803C, 0xC833C-0xC803C

	.GLOBAL gUnknown_080C833C
gUnknown_080C833C:
	.INCBIN "baserom.gba", 0xC833C, 0xC83A8-0xC833C

	.GLOBAL gUnknown_080C83A8
gUnknown_080C83A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_080C83B0
gUnknown_080C83B0:
	.INCBIN "baserom.gba", 0xC83B0, 0xC87B0-0xC83B0

	.GLOBAL gUnknown_080C87B0
gUnknown_080C87B0:
	.INCBIN "baserom.gba", 0xC87B0, 0xC8E28-0xC87B0

	.GLOBAL gUnknown_080C8E28
gUnknown_080C8E28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_080C8E30
gUnknown_080C8E30:
	.INCBIN "baserom.gba", 0xC8E30, 0xC9B30-0xC8E30

	.GLOBAL gUnknown_080C9B30
gUnknown_080C9B30:
	.INCBIN "baserom.gba", 0xC9B30, 0xCA130-0xC9B30

	.GLOBAL gUnknown_080CA130
gUnknown_080CA130:
	.INCBIN "baserom.gba", 0xCA130, 0xCA530-0xCA130

	.GLOBAL gUnknown_080CA530
gUnknown_080CA530:
	.INCBIN "baserom.gba", 0xCA530, 0xCABA8-0xCA530

	.GLOBAL gUnknown_080CABA8
gUnknown_080CABA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_080CABB0
gUnknown_080CABB0:
	.INCBIN "baserom.gba", 0xCABB0, 0xCB170-0xCABB0

	.GLOBAL gUnknown_080CB170
gUnknown_080CB170:
	.INCBIN "baserom.gba", 0xCB170, 0xCB7E8-0xCB170

	.GLOBAL gUnknown_080CB7E8
gUnknown_080CB7E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_080CB7F0
gUnknown_080CB7F0:
	.INCBIN "baserom.gba", 0xCB7F0, 0xCBDB0-0xCB7F0

	.GLOBAL gUnknown_080CBDB0
gUnknown_080CBDB0:
	.INCBIN "baserom.gba", 0xCBDB0, 0xCC230-0xCBDB0

	.GLOBAL gUnknown_080CC230
gUnknown_080CC230:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080CC238
gUnknown_080CC238:
	.INCBIN "baserom.gba", 0xCC238, 0xD4238-0xCC238

	.GLOBAL gUnknown_080D4238
gUnknown_080D4238:
	.INCBIN "baserom.gba", 0xD4238, 0xD46B8-0xD4238

	.GLOBAL gUnknown_080D46B8
gUnknown_080D46B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080D46C0
gUnknown_080D46C0:
	.INCBIN "baserom.gba", 0xD46C0, 0xDC6C0-0xD46C0

	.GLOBAL gUnknown_080DC6C0
gUnknown_080DC6C0:
	.INCBIN "baserom.gba", 0xDC6C0, 0xDCB40-0xDC6C0

	.GLOBAL gUnknown_080DCB40
gUnknown_080DCB40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080DCB48
gUnknown_080DCB48:
	.INCBIN "baserom.gba", 0xDCB48, 0xE4B48-0xDCB48

	.GLOBAL gUnknown_080E4B48
gUnknown_080E4B48:
	.INCBIN "baserom.gba", 0xE4B48, 0xE4C68-0xE4B48

	.GLOBAL gUnknown_080E4C68
gUnknown_080E4C68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080E4C70
gUnknown_080E4C70:
	.INCBIN "baserom.gba", 0xE4C70, 0xE6C70-0xE4C70

	.GLOBAL gUnknown_080E6C70
gUnknown_080E6C70:
	.INCBIN "baserom.gba", 0xE6C70, 0xE6EB0-0xE6C70

	.GLOBAL gUnknown_080E6EB0
gUnknown_080E6EB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080E6EB8
gUnknown_080E6EB8:
	.INCBIN "baserom.gba", 0xE6EB8, 0xEAEB8-0xE6EB8

	.GLOBAL gUnknown_080EAEB8
gUnknown_080EAEB8:
	.INCBIN "baserom.gba", 0xEAEB8, 0xEB0F8-0xEAEB8

	.GLOBAL gUnknown_080EB0F8
gUnknown_080EB0F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080EB100
gUnknown_080EB100:
	.INCBIN "baserom.gba", 0xEB100, 0xED100-0xEB100

	.GLOBAL gUnknown_080ED100
gUnknown_080ED100:
	.INCBIN "baserom.gba", 0xED100, 0xED244-0xED100

	.GLOBAL gUnknown_080ED244
gUnknown_080ED244:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080ED24C
gUnknown_080ED24C:
	.INCBIN "baserom.gba", 0xED24C, 0xEF64C-0xED24C

	.GLOBAL gUnknown_080EF64C
gUnknown_080EF64C:
	.INCBIN "baserom.gba", 0xEF64C, 0xEF790-0xEF64C

	.GLOBAL gUnknown_080EF790
gUnknown_080EF790:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080EF798
gUnknown_080EF798:
	.INCBIN "baserom.gba", 0xEF798, 0xF1B98-0xEF798

	.GLOBAL gUnknown_080F1B98
gUnknown_080F1B98:
	.INCBIN "baserom.gba", 0xF1B98, 0xF2018-0xF1B98

	.GLOBAL gUnknown_080F2018
gUnknown_080F2018:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080F2020
gUnknown_080F2020:
	.INCBIN "baserom.gba", 0xF2020, 0xF4020-0xF2020

	.GLOBAL gUnknown_080F4020
gUnknown_080F4020:
	.INCBIN "baserom.gba", 0xF4020, 0xF4800-0xF4020

	.GLOBAL gUnknown_080F4800
gUnknown_080F4800:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080F4808
gUnknown_080F4808:
	.INCBIN "baserom.gba", 0xF4808, 0xF7008-0xF4808

	.GLOBAL gUnknown_080F7008
gUnknown_080F7008:
	.INCBIN "baserom.gba", 0xF7008, 0xF7248-0xF7008

	.GLOBAL gUnknown_080F7248
gUnknown_080F7248:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080F7250
gUnknown_080F7250:
	.INCBIN "baserom.gba", 0xF7250, 0xF8250-0xF7250

	.GLOBAL gUnknown_080F8250
gUnknown_080F8250:
	.INCBIN "baserom.gba", 0xF8250, 0xF8370-0xF8250

	.GLOBAL gUnknown_080F8370
gUnknown_080F8370:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080F8378
gUnknown_080F8378:
	.INCBIN "baserom.gba", 0xF8378, 0xF8B78-0xF8378

	.GLOBAL gUnknown_080F8B78
gUnknown_080F8B78:
	.INCBIN "baserom.gba", 0xF8B78, 0xF8C98-0xF8B78

	.GLOBAL gUnknown_080F8C98
gUnknown_080F8C98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080F8CA0
gUnknown_080F8CA0:
	.INCBIN "baserom.gba", 0xF8CA0, 0xF94A0-0xF8CA0

	.GLOBAL gUnknown_080F94A0
gUnknown_080F94A0:
	.INCBIN "baserom.gba", 0xF94A0, 0xF96E0-0xF94A0

	.GLOBAL gUnknown_080F96E0
gUnknown_080F96E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080F96E8
gUnknown_080F96E8:
	.INCBIN "baserom.gba", 0xF96E8, 0xFA4E8-0xF96E8

	.GLOBAL gUnknown_080FA4E8
gUnknown_080FA4E8:
	.INCBIN "baserom.gba", 0xFA4E8, 0xFA824-0xFA4E8

	.GLOBAL gUnknown_080FA824
gUnknown_080FA824:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_080FA82C
gUnknown_080FA82C:
	.INCBIN "baserom.gba", 0xFA82C, 0xFDC2C-0xFA82C

	.GLOBAL gUnknown_080FDC2C
gUnknown_080FDC2C:
	.INCBIN "baserom.gba", 0xFDC2C, 0xFDD28-0xFDC2C

	.GLOBAL gUnknown_080FDD28
gUnknown_080FDD28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080FDD30
gUnknown_080FDD30:
	.INCBIN "baserom.gba", 0xFDD30, 0xFE0B0-0xFDD30

	.GLOBAL gUnknown_080FE0B0
gUnknown_080FE0B0:
	.INCBIN "baserom.gba", 0xFE0B0, 0xFE1D0-0xFE0B0

	.GLOBAL gUnknown_080FE1D0
gUnknown_080FE1D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080FE1D8
gUnknown_080FE1D8:
	.INCBIN "baserom.gba", 0xFE1D8, 0xFE5D8-0xFE1D8

	.GLOBAL gUnknown_080FE5D8
gUnknown_080FE5D8:
	.INCBIN "baserom.gba", 0xFE5D8, 0xFE6F8-0xFE5D8

	.GLOBAL gUnknown_080FE6F8
gUnknown_080FE6F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080FE700
gUnknown_080FE700:
	.INCBIN "baserom.gba", 0xFE700, 0xFEB00-0xFE700

	.GLOBAL gUnknown_080FEB00
gUnknown_080FEB00:
	.INCBIN "baserom.gba", 0xFEB00, 0xFED40-0xFEB00

	.GLOBAL gUnknown_080FED40
gUnknown_080FED40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_080FED48
gUnknown_080FED48:
	.INCBIN "baserom.gba", 0xFED48, 0xFF548-0xFED48

	.GLOBAL gUnknown_080FF548
gUnknown_080FF548:
	.INCBIN "baserom.gba", 0xFF548, 0xFF56C-0xFF548

	.GLOBAL gUnknown_080FF56C
gUnknown_080FF56C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_080FF574
gUnknown_080FF574:
	.INCBIN "baserom.gba", 0xFF574, 0xFF5F4-0xFF574

	.GLOBAL gUnknown_080FF5F4
gUnknown_080FF5F4:
	.INCBIN "baserom.gba", 0xFF5F4, 0xFF858-0xFF5F4

	.GLOBAL gUnknown_080FF858
gUnknown_080FF858:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_080FF860
gUnknown_080FF860:
	.INCBIN "baserom.gba", 0xFF860, 0xFFBE0-0xFF860

	.GLOBAL gUnknown_080FFBE0
gUnknown_080FFBE0:
	.INCBIN "baserom.gba", 0xFFBE0, 0xFFE20-0xFFBE0

	.GLOBAL gUnknown_080FFE20
gUnknown_080FFE20:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_080FFE28
gUnknown_080FFE28:
	.INCBIN "baserom.gba", 0xFFE28, 0x100228-0xFFE28

	.GLOBAL gUnknown_08100228
gUnknown_08100228:
	.INCBIN "baserom.gba", 0x100228, 0x1002B8-0x100228

	.GLOBAL gUnknown_081002B8
gUnknown_081002B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_081002C0
gUnknown_081002C0:
	.INCBIN "baserom.gba", 0x1002C0, 0x1004C0-0x1002C0

	.GLOBAL gUnknown_081004C0
gUnknown_081004C0:
	.INCBIN "baserom.gba", 0x1004C0, 0x100700-0x1004C0

	.GLOBAL gUnknown_08100700
gUnknown_08100700:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08100708
gUnknown_08100708:
	.INCBIN "baserom.gba", 0x100708, 0x100B08-0x100708

	.GLOBAL gUnknown_08100B08
gUnknown_08100B08:
	.INCBIN "baserom.gba", 0x100B08, 0x100CB8-0x100B08

	.GLOBAL gUnknown_08100CB8
gUnknown_08100CB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08100CC0
gUnknown_08100CC0:
	.INCBIN "baserom.gba", 0x100CC0, 0x100D40-0x100CC0

	.GLOBAL gUnknown_08100D40
gUnknown_08100D40:
	.INCBIN "baserom.gba", 0x100D40, 0x100F80-0x100D40

	.GLOBAL gUnknown_08100F80
gUnknown_08100F80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08100F88
gUnknown_08100F88:
	.INCBIN "baserom.gba", 0x100F88, 0x101788-0x100F88

	.GLOBAL gUnknown_08101788
gUnknown_08101788:
	.INCBIN "baserom.gba", 0x101788, 0x1018A8-0x101788

	.GLOBAL gUnknown_081018A8
gUnknown_081018A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_081018B0
gUnknown_081018B0:
	.INCBIN "baserom.gba", 0x1018B0, 0x101930-0x1018B0

	.GLOBAL gUnknown_08101930
gUnknown_08101930:
	.INCBIN "baserom.gba", 0x101930, 0x101A50-0x101930

	.GLOBAL gUnknown_08101A50
gUnknown_08101A50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08101A58
gUnknown_08101A58:
	.INCBIN "baserom.gba", 0x101A58, 0x101AD8-0x101A58

	.GLOBAL gUnknown_08101AD8
gUnknown_08101AD8:
	.INCBIN "baserom.gba", 0x101AD8, 0x101CD0-0x101AD8

	.GLOBAL gUnknown_08101CD0
gUnknown_08101CD0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08101CD8
gUnknown_08101CD8:
	.INCBIN "baserom.gba", 0x101CD8, 0x102358-0x101CD8

	.GLOBAL gUnknown_08102358
gUnknown_08102358:
	.INCBIN "baserom.gba", 0x102358, 0x102430-0x102358

	.GLOBAL gUnknown_08102430
gUnknown_08102430:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08102438
gUnknown_08102438:
	.INCBIN "baserom.gba", 0x102438, 0x102738-0x102438

	.GLOBAL gUnknown_08102738
gUnknown_08102738:
	.INCBIN "baserom.gba", 0x102738, 0x102858-0x102738

	.GLOBAL gUnknown_08102858
gUnknown_08102858:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=3, affineParam=0

	.GLOBAL gUnknown_08102860
gUnknown_08102860:
	.INCBIN "baserom.gba", 0x102860, 0x103860-0x102860

	.GLOBAL gUnknown_08103860
gUnknown_08103860:
	.INCBIN "baserom.gba", 0x103860, 0x103C98-0x103860

	.GLOBAL gUnknown_08103C98
gUnknown_08103C98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08103CA0
gUnknown_08103CA0:
	.INCBIN "baserom.gba", 0x103CA0, 0x1054A0-0x103CA0

	.GLOBAL gUnknown_081054A0
gUnknown_081054A0:
	.INCBIN "baserom.gba", 0x1054A0, 0x1054C4-0x1054A0

	.GLOBAL gUnknown_081054C4
gUnknown_081054C4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_081054CC
gUnknown_081054CC:
	.INCBIN "baserom.gba", 0x1054CC, 0x10554C-0x1054CC

	.GLOBAL gUnknown_0810554C
gUnknown_0810554C:
	.INCBIN "baserom.gba", 0x10554C, 0x10566C-0x10554C

	.GLOBAL gUnknown_0810566C
gUnknown_0810566C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08105674
gUnknown_08105674:
	.INCBIN "baserom.gba", 0x105674, 0x105A74-0x105674

	.GLOBAL gUnknown_08105A74
gUnknown_08105A74:
	.INCBIN "baserom.gba", 0x105A74, 0x105B04-0x105A74

	.GLOBAL gUnknown_08105B04
gUnknown_08105B04:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08105B0C
gUnknown_08105B0C:
	.INCBIN "baserom.gba", 0x105B0C, 0x105D0C-0x105B0C

	.GLOBAL gUnknown_08105D0C
gUnknown_08105D0C:
	.INCBIN "baserom.gba", 0x105D0C, 0x105E2C-0x105D0C

	.GLOBAL gUnknown_08105E2C
gUnknown_08105E2C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08105E34
gUnknown_08105E34:
	.INCBIN "baserom.gba", 0x105E34, 0x106234-0x105E34

	.GLOBAL gUnknown_08106234
gUnknown_08106234:
	.INCBIN "baserom.gba", 0x106234, 0x106450-0x106234

	.GLOBAL gUnknown_08106450
gUnknown_08106450:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08106458
gUnknown_08106458:
	.INCBIN "baserom.gba", 0x106458, 0x106BD8-0x106458

	.GLOBAL gUnknown_08106BD8
gUnknown_08106BD8:
	.INCBIN "baserom.gba", 0x106BD8, 0x106BFC-0x106BD8

	.GLOBAL gUnknown_08106BFC
gUnknown_08106BFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08106C04
gUnknown_08106C04:
	.INCBIN "baserom.gba", 0x106C04, 0x106D04-0x106C04

	.GLOBAL gUnknown_08106D04
gUnknown_08106D04:
	.INCBIN "baserom.gba", 0x106D04, 0x106E24-0x106D04

	.GLOBAL gUnknown_08106E24
gUnknown_08106E24:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08106E2C
gUnknown_08106E2C:
	.INCBIN "baserom.gba", 0x106E2C, 0x10722C-0x106E2C

	.GLOBAL gUnknown_0810722C
gUnknown_0810722C:
	.INCBIN "baserom.gba", 0x10722C, 0x10746C-0x10722C

	.GLOBAL gUnknown_0810746C
gUnknown_0810746C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08107474
gUnknown_08107474:
	.INCBIN "baserom.gba", 0x107474, 0x108474-0x107474

	.GLOBAL gUnknown_08108474
gUnknown_08108474:
	.INCBIN "baserom.gba", 0x108474, 0x108498-0x108474

	.GLOBAL gUnknown_08108498
gUnknown_08108498:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081084A0
gUnknown_081084A0:
	.INCBIN "baserom.gba", 0x1084A0, 0x1086A0-0x1084A0

	.GLOBAL gUnknown_081086A0
gUnknown_081086A0:
	.INCBIN "baserom.gba", 0x1086A0, 0x1088E0-0x1086A0

	.GLOBAL gUnknown_081088E0
gUnknown_081088E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081088E8
gUnknown_081088E8:
	.INCBIN "baserom.gba", 0x1088E8, 0x10C8E8-0x1088E8

	.GLOBAL gUnknown_0810C8E8
gUnknown_0810C8E8:
	.INCBIN "baserom.gba", 0x10C8E8, 0x10CAE0-0x10C8E8

	.GLOBAL gUnknown_0810CAE0
gUnknown_0810CAE0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0810CAE8
gUnknown_0810CAE8:
	.INCBIN "baserom.gba", 0x10CAE8, 0x10E6E8-0x10CAE8

	.GLOBAL gUnknown_0810E6E8
gUnknown_0810E6E8:
	.INCBIN "baserom.gba", 0x10E6E8, 0x10E70C-0x10E6E8

	.GLOBAL gUnknown_0810E70C
gUnknown_0810E70C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0810E714
gUnknown_0810E714:
	.INCBIN "baserom.gba", 0x10E714, 0x10E914-0x10E714

	.GLOBAL gUnknown_0810E914
gUnknown_0810E914:
	.INCBIN "baserom.gba", 0x10E914, 0x10EA34-0x10E914

	.GLOBAL gUnknown_0810EA34
gUnknown_0810EA34:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0810EA3C
gUnknown_0810EA3C:
	.INCBIN "baserom.gba", 0x10EA3C, 0x10F23C-0x10EA3C

	.GLOBAL gUnknown_0810F23C
gUnknown_0810F23C:
	.INCBIN "baserom.gba", 0x10F23C, 0x10F35C-0x10F23C

	.GLOBAL gUnknown_0810F35C
gUnknown_0810F35C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0810F364
gUnknown_0810F364:
	.INCBIN "baserom.gba", 0x10F364, 0x10F764-0x10F364

	.GLOBAL gUnknown_0810F764
gUnknown_0810F764:
	.INCBIN "baserom.gba", 0x10F764, 0x10F788-0x10F764

	.GLOBAL gUnknown_0810F788
gUnknown_0810F788:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0810F790
gUnknown_0810F790:
	.INCBIN "baserom.gba", 0x10F790, 0x10F890-0x10F790

	.GLOBAL gUnknown_0810F890
gUnknown_0810F890:
	.INCBIN "baserom.gba", 0x10F890, 0x10F968-0x10F890

	.GLOBAL gUnknown_0810F968
gUnknown_0810F968:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0810F970
gUnknown_0810F970:
	.INCBIN "baserom.gba", 0x10F970, 0x10FC70-0x10F970

	.GLOBAL gUnknown_0810FC70
gUnknown_0810FC70:
	.INCBIN "baserom.gba", 0x10FC70, 0x10FD48-0x10FC70

	.GLOBAL gUnknown_0810FD48
gUnknown_0810FD48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0810FD50
gUnknown_0810FD50:
	.INCBIN "baserom.gba", 0x10FD50, 0x110050-0x10FD50

	.GLOBAL gUnknown_08110050
gUnknown_08110050:
	.INCBIN "baserom.gba", 0x110050, 0x1100E0-0x110050

	.GLOBAL gUnknown_081100E0
gUnknown_081100E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_081100E8
gUnknown_081100E8:
	.INCBIN "baserom.gba", 0x1100E8, 0x1102E8-0x1100E8

	.GLOBAL gUnknown_081102E8
gUnknown_081102E8:
	.INCBIN "baserom.gba", 0x1102E8, 0x1104E0-0x1102E8

	.GLOBAL gUnknown_081104E0
gUnknown_081104E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_081104E8
gUnknown_081104E8:
	.INCBIN "baserom.gba", 0x1104E8, 0x110BE8-0x1104E8

	.GLOBAL gUnknown_08110BE8
gUnknown_08110BE8:
	.INCBIN "baserom.gba", 0x110BE8, 0x110CE4-0x110BE8

	.GLOBAL gUnknown_08110CE4
gUnknown_08110CE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08110CEC
gUnknown_08110CEC:
	.INCBIN "baserom.gba", 0x110CEC, 0x11106C-0x110CEC

	.GLOBAL gUnknown_0811106C
gUnknown_0811106C:
	.INCBIN "baserom.gba", 0x11106C, 0x11121C-0x11106C

	.GLOBAL gUnknown_0811121C
gUnknown_0811121C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08111224
gUnknown_08111224:
	.INCBIN "baserom.gba", 0x111224, 0x112A24-0x111224

	.GLOBAL gUnknown_08112A24
gUnknown_08112A24:
	.INCBIN "baserom.gba", 0x112A24, 0x112B44-0x112A24

	.GLOBAL gUnknown_08112B44
gUnknown_08112B44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08112B4C
gUnknown_08112B4C:
	.INCBIN "baserom.gba", 0x112B4C, 0x112C4C-0x112B4C

	.GLOBAL gUnknown_08112C4C
gUnknown_08112C4C:
	.INCBIN "baserom.gba", 0x112C4C, 0x112D24-0x112C4C

	.GLOBAL gUnknown_08112D24
gUnknown_08112D24:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08112D2C
gUnknown_08112D2C:
	.INCBIN "baserom.gba", 0x112D2C, 0x11392C-0x112D2C

	.GLOBAL gUnknown_0811392C
gUnknown_0811392C:
	.INCBIN "baserom.gba", 0x11392C, 0x113ADC-0x11392C

	.GLOBAL gUnknown_08113ADC
gUnknown_08113ADC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08113AE4
gUnknown_08113AE4:
	.INCBIN "baserom.gba", 0x113AE4, 0x1152E4-0x113AE4

	.GLOBAL gUnknown_081152E4
gUnknown_081152E4:
	.INCBIN "baserom.gba", 0x1152E4, 0x115404-0x1152E4

	.GLOBAL gUnknown_08115404
gUnknown_08115404:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0811540C
gUnknown_0811540C:
	.INCBIN "baserom.gba", 0x11540C, 0x11640C-0x11540C

	.GLOBAL gUnknown_0811640C
gUnknown_0811640C:
	.INCBIN "baserom.gba", 0x11640C, 0x11649C-0x11640C

	.GLOBAL gUnknown_0811649C
gUnknown_0811649C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_081164A4
gUnknown_081164A4:
	.INCBIN "baserom.gba", 0x1164A4, 0x116CA4-0x1164A4

	.GLOBAL gUnknown_08116CA4
gUnknown_08116CA4:
	.INCBIN "baserom.gba", 0x116CA4, 0x116E54-0x116CA4

	.GLOBAL gUnknown_08116E54
gUnknown_08116E54:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08116E5C
gUnknown_08116E5C:
	.INCBIN "baserom.gba", 0x116E5C, 0x11865C-0x116E5C

	.GLOBAL gUnknown_0811865C
gUnknown_0811865C:
	.INCBIN "baserom.gba", 0x11865C, 0x118680-0x11865C

	.GLOBAL gUnknown_08118680
gUnknown_08118680:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08118688
gUnknown_08118688:
	.INCBIN "baserom.gba", 0x118688, 0x118708-0x118688

	.GLOBAL gUnknown_08118708
gUnknown_08118708:
	.INCBIN "baserom.gba", 0x118708, 0x118948-0x118708

	.GLOBAL gUnknown_08118948
gUnknown_08118948:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08118950
gUnknown_08118950:
	.INCBIN "baserom.gba", 0x118950, 0x118D50-0x118950

	.GLOBAL gUnknown_08118D50
gUnknown_08118D50:
	.INCBIN "baserom.gba", 0x118D50, 0x118D74-0x118D50

	.GLOBAL gUnknown_08118D74
gUnknown_08118D74:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08118D7C
gUnknown_08118D7C:
	.INCBIN "baserom.gba", 0x118D7C, 0x118DFC-0x118D7C

	.GLOBAL gUnknown_08118DFC
gUnknown_08118DFC:
	.INCBIN "baserom.gba", 0x118DFC, 0x118EB0-0x118DFC

	.GLOBAL gUnknown_08118EB0
gUnknown_08118EB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08118EB8
gUnknown_08118EB8:
	.INCBIN "baserom.gba", 0x118EB8, 0x119138-0x118EB8

	.GLOBAL gUnknown_08119138
gUnknown_08119138:
	.INCBIN "baserom.gba", 0x119138, 0x119450-0x119138

	.GLOBAL gUnknown_08119450
gUnknown_08119450:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08119458
gUnknown_08119458:
	.INCBIN "baserom.gba", 0x119458, 0x119658-0x119458

	.GLOBAL gUnknown_08119658
gUnknown_08119658:
	.INCBIN "baserom.gba", 0x119658, 0x1196E8-0x119658

	.GLOBAL gUnknown_081196E8
gUnknown_081196E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_081196F0
gUnknown_081196F0:
	.INCBIN "baserom.gba", 0x1196F0, 0x1198F0-0x1196F0

	.GLOBAL gUnknown_081198F0
gUnknown_081198F0:
	.INCBIN "baserom.gba", 0x1198F0, 0x119938-0x1198F0

	.GLOBAL gUnknown_08119938
gUnknown_08119938:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08119940
gUnknown_08119940:
	.INCBIN "baserom.gba", 0x119940, 0x119A40-0x119940

	.GLOBAL gUnknown_08119A40
gUnknown_08119A40:
	.INCBIN "baserom.gba", 0x119A40, 0x119A88-0x119A40

	.GLOBAL gUnknown_08119A88
gUnknown_08119A88:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08119A90
gUnknown_08119A90:
	.INCBIN "baserom.gba", 0x119A90, 0x119B90-0x119A90

	.GLOBAL gUnknown_08119B90
gUnknown_08119B90:
	.INCBIN "baserom.gba", 0x119B90, 0x119CB0-0x119B90

	.GLOBAL gUnknown_08119CB0
gUnknown_08119CB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08119CB8
gUnknown_08119CB8:
	.INCBIN "baserom.gba", 0x119CB8, 0x11A038-0x119CB8

	.GLOBAL gUnknown_0811A038
gUnknown_0811A038:
	.INCBIN "baserom.gba", 0x11A038, 0x11A1E8-0x11A038

	.GLOBAL gUnknown_0811A1E8
gUnknown_0811A1E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811A1F0
gUnknown_0811A1F0:
	.INCBIN "baserom.gba", 0x11A1F0, 0x11A570-0x11A1F0

	.GLOBAL gUnknown_0811A570
gUnknown_0811A570:
	.INCBIN "baserom.gba", 0x11A570, 0x11A600-0x11A570

	.GLOBAL gUnknown_0811A600
gUnknown_0811A600:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811A608
gUnknown_0811A608:
	.INCBIN "baserom.gba", 0x11A608, 0x11A688-0x11A608

	.GLOBAL gUnknown_0811A688
gUnknown_0811A688:
	.INCBIN "baserom.gba", 0x11A688, 0x11A718-0x11A688

	.GLOBAL gUnknown_0811A718
gUnknown_0811A718:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811A720
gUnknown_0811A720:
	.INCBIN "baserom.gba", 0x11A720, 0x11A7A0-0x11A720

	.GLOBAL gUnknown_0811A7A0
gUnknown_0811A7A0:
	.INCBIN "baserom.gba", 0x11A7A0, 0x11A830-0x11A7A0

	.GLOBAL gUnknown_0811A830
gUnknown_0811A830:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0811A838
gUnknown_0811A838:
	.INCBIN "baserom.gba", 0x11A838, 0x11A8B8-0x11A838

	.GLOBAL gUnknown_0811A8B8
gUnknown_0811A8B8:
	.INCBIN "baserom.gba", 0x11A8B8, 0x11AA20-0x11A8B8

	.GLOBAL gUnknown_0811AA20
gUnknown_0811AA20:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811AA28
gUnknown_0811AA28:
	.INCBIN "baserom.gba", 0x11AA28, 0x11AD28-0x11AA28

	.GLOBAL gUnknown_0811AD28
gUnknown_0811AD28:
	.INCBIN "baserom.gba", 0x11AD28, 0x11AE90-0x11AD28

	.GLOBAL gUnknown_0811AE90
gUnknown_0811AE90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811AE98
gUnknown_0811AE98:
	.INCBIN "baserom.gba", 0x11AE98, 0x11B198-0x11AE98

	.GLOBAL gUnknown_0811B198
gUnknown_0811B198:
	.INCBIN "baserom.gba", 0x11B198, 0x11B3D8-0x11B198

	.GLOBAL gUnknown_0811B3D8
gUnknown_0811B3D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811B3E0
gUnknown_0811B3E0:
	.INCBIN "baserom.gba", 0x11B3E0, 0x11BBE0-0x11B3E0

	.GLOBAL gUnknown_0811BBE0
gUnknown_0811BBE0:
	.INCBIN "baserom.gba", 0x11BBE0, 0x11BC04-0x11BBE0

	.GLOBAL gUnknown_0811BC04
gUnknown_0811BC04:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0811BC0C
gUnknown_0811BC0C:
	.INCBIN "baserom.gba", 0x11BC0C, 0x11BC8C-0x11BC0C

	.GLOBAL gUnknown_0811BC8C
gUnknown_0811BC8C:
	.INCBIN "baserom.gba", 0x11BC8C, 0x11BCB0-0x11BC8C

	.GLOBAL gUnknown_0811BCB0
gUnknown_0811BCB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0811BCB8
gUnknown_0811BCB8:
	.INCBIN "baserom.gba", 0x11BCB8, 0x11BD38-0x11BCB8

	.GLOBAL gUnknown_0811BD38
gUnknown_0811BD38:
	.INCBIN "baserom.gba", 0x11BD38, 0x11BD5C-0x11BD38

	.GLOBAL gUnknown_0811BD5C
gUnknown_0811BD5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0811BD64
gUnknown_0811BD64:
	.INCBIN "baserom.gba", 0x11BD64, 0x11BDE4-0x11BD64

	.GLOBAL gUnknown_0811BDE4
gUnknown_0811BDE4:
	.INCBIN "baserom.gba", 0x11BDE4, 0x11BE08-0x11BDE4

	.GLOBAL gUnknown_0811BE08
gUnknown_0811BE08:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811BE10
gUnknown_0811BE10:
	.INCBIN "baserom.gba", 0x11BE10, 0x11C010-0x11BE10

	.GLOBAL gUnknown_0811C010
gUnknown_0811C010:
	.INCBIN "baserom.gba", 0x11C010, 0x11C1C0-0x11C010

	.GLOBAL gUnknown_0811C1C0
gUnknown_0811C1C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0811C1C8
gUnknown_0811C1C8:
	.INCBIN "baserom.gba", 0x11C1C8, 0x11F1C8-0x11C1C8

	.GLOBAL gUnknown_0811F1C8
gUnknown_0811F1C8:
	.INCBIN "baserom.gba", 0x11F1C8, 0x11F1EC-0x11F1C8

	.GLOBAL gUnknown_0811F1EC
gUnknown_0811F1EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0811F1F4
gUnknown_0811F1F4:
	.INCBIN "baserom.gba", 0x11F1F4, 0x11F5F4-0x11F1F4

	.GLOBAL gUnknown_0811F5F4
gUnknown_0811F5F4:
	.INCBIN "baserom.gba", 0x11F5F4, 0x11F7A4-0x11F5F4

	.GLOBAL gUnknown_0811F7A4
gUnknown_0811F7A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0811F7AC
gUnknown_0811F7AC:
	.INCBIN "baserom.gba", 0x11F7AC, 0x1257AC-0x11F7AC

	.GLOBAL gUnknown_081257AC
gUnknown_081257AC:
	.INCBIN "baserom.gba", 0x1257AC, 0x1257D0-0x1257AC

	.GLOBAL gUnknown_081257D0
gUnknown_081257D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_081257D8
gUnknown_081257D8:
	.INCBIN "baserom.gba", 0x1257D8, 0x125858-0x1257D8

	.GLOBAL gUnknown_08125858
gUnknown_08125858:
	.INCBIN "baserom.gba", 0x125858, 0x12587C-0x125858

	.GLOBAL gUnknown_0812587C
gUnknown_0812587C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_08125884
gUnknown_08125884:
	.INCBIN "baserom.gba", 0x125884, 0x125904-0x125884

	.GLOBAL gUnknown_08125904
gUnknown_08125904:
	.INCBIN "baserom.gba", 0x125904, 0x125928-0x125904

	.GLOBAL gUnknown_08125928
gUnknown_08125928:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_08125930
gUnknown_08125930:
	.INCBIN "baserom.gba", 0x125930, 0x1259B0-0x125930

	.GLOBAL gUnknown_081259B0
gUnknown_081259B0:
	.INCBIN "baserom.gba", 0x1259B0, 0x125A40-0x1259B0

	.GLOBAL gUnknown_08125A40
gUnknown_08125A40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08125A48
gUnknown_08125A48:
	.INCBIN "baserom.gba", 0x125A48, 0x125C48-0x125A48

	.GLOBAL gUnknown_08125C48
gUnknown_08125C48:
	.INCBIN "baserom.gba", 0x125C48, 0x125DF8-0x125C48

	.GLOBAL gUnknown_08125DF8
gUnknown_08125DF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08125E00
gUnknown_08125E00:
	.INCBIN "baserom.gba", 0x125E00, 0x126400-0x125E00

	.GLOBAL gUnknown_08126400
gUnknown_08126400:
	.INCBIN "baserom.gba", 0x126400, 0x126AC0-0x126400

	.GLOBAL gUnknown_08126AC0
gUnknown_08126AC0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08126AC8
gUnknown_08126AC8:
	.INCBIN "baserom.gba", 0x126AC8, 0x128AC8-0x126AC8

	.GLOBAL gUnknown_08128AC8
gUnknown_08128AC8:
	.INCBIN "baserom.gba", 0x128AC8, 0x128BE8-0x128AC8

	.GLOBAL gUnknown_08128BE8
gUnknown_08128BE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08128BF0
gUnknown_08128BF0:
	.INCBIN "baserom.gba", 0x128BF0, 0x128FF0-0x128BF0

	.GLOBAL gUnknown_08128FF0
gUnknown_08128FF0:
	.INCBIN "baserom.gba", 0x128FF0, 0x129110-0x128FF0

	.GLOBAL gUnknown_08129110
gUnknown_08129110:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08129118
gUnknown_08129118:
	.INCBIN "baserom.gba", 0x129118, 0x129518-0x129118

	.GLOBAL gUnknown_08129518
gUnknown_08129518:
	.INCBIN "baserom.gba", 0x129518, 0x12953C-0x129518

	.GLOBAL gUnknown_0812953C
gUnknown_0812953C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_08129544
gUnknown_08129544:
	.INCBIN "baserom.gba", 0x129544, 0x1295C4-0x129544

	.GLOBAL gUnknown_081295C4
gUnknown_081295C4:
	.INCBIN "baserom.gba", 0x1295C4, 0x129804-0x1295C4

	.GLOBAL gUnknown_08129804
gUnknown_08129804:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0812980C
gUnknown_0812980C:
	.INCBIN "baserom.gba", 0x12980C, 0x12A80C-0x12980C

	.GLOBAL gUnknown_0812A80C
gUnknown_0812A80C:
	.INCBIN "baserom.gba", 0x12A80C, 0x12A950-0x12A80C

	.GLOBAL gUnknown_0812A950
gUnknown_0812A950:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0812A958
gUnknown_0812A958:
	.INCBIN "baserom.gba", 0x12A958, 0x12B558-0x12A958

	.GLOBAL gUnknown_0812B558
gUnknown_0812B558:
	.INCBIN "baserom.gba", 0x12B558, 0x12BA68-0x12B558

	.GLOBAL gUnknown_0812BA68
gUnknown_0812BA68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0812BA70
gUnknown_0812BA70:
	.INCBIN "baserom.gba", 0x12BA70, 0x12CA70-0x12BA70

	.GLOBAL gUnknown_0812CA70
gUnknown_0812CA70:
	.INCBIN "baserom.gba", 0x12CA70, 0x12CA94-0x12CA70

	.GLOBAL gUnknown_0812CA94
gUnknown_0812CA94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812CA9C
gUnknown_0812CA9C:
	.INCBIN "baserom.gba", 0x12CA9C, 0x12CB1C-0x12CA9C

	.GLOBAL gUnknown_0812CB1C
gUnknown_0812CB1C:
	.INCBIN "baserom.gba", 0x12CB1C, 0x12CB40-0x12CB1C

	.GLOBAL gUnknown_0812CB40
gUnknown_0812CB40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812CB48
gUnknown_0812CB48:
	.INCBIN "baserom.gba", 0x12CB48, 0x12CBC8-0x12CB48

	.GLOBAL gUnknown_0812CBC8
gUnknown_0812CBC8:
	.INCBIN "baserom.gba", 0x12CBC8, 0x12CBEC-0x12CBC8

	.GLOBAL gUnknown_0812CBEC
gUnknown_0812CBEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812CBF4
gUnknown_0812CBF4:
	.INCBIN "baserom.gba", 0x12CBF4, 0x12CC74-0x12CBF4

	.GLOBAL gUnknown_0812CC74
gUnknown_0812CC74:
	.INCBIN "baserom.gba", 0x12CC74, 0x12CC98-0x12CC74

	.GLOBAL gUnknown_0812CC98
gUnknown_0812CC98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812CCA0
gUnknown_0812CCA0:
	.INCBIN "baserom.gba", 0x12CCA0, 0x12CCE0-0x12CCA0

	.GLOBAL gUnknown_0812CCE0
gUnknown_0812CCE0:
	.INCBIN "baserom.gba", 0x12CCE0, 0x12CD04-0x12CCE0

	.GLOBAL gUnknown_0812CD04
gUnknown_0812CD04:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812CD0C
gUnknown_0812CD0C:
	.INCBIN "baserom.gba", 0x12CD0C, 0x12CD2C-0x12CD0C

	.GLOBAL gUnknown_0812CD2C
gUnknown_0812CD2C:
	.INCBIN "baserom.gba", 0x12CD2C, 0x12CD50-0x12CD2C

	.GLOBAL gUnknown_0812CD50
gUnknown_0812CD50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812CD58
gUnknown_0812CD58:
	.INCBIN "baserom.gba", 0x12CD58, 0x12CDD8-0x12CD58

	.GLOBAL gUnknown_0812CDD8
gUnknown_0812CDD8:
	.INCBIN "baserom.gba", 0x12CDD8, 0x12CDFC-0x12CDD8

	.GLOBAL gUnknown_0812CDFC
gUnknown_0812CDFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812CE04
gUnknown_0812CE04:
	.INCBIN "baserom.gba", 0x12CE04, 0x12D004-0x12CE04

	.GLOBAL gUnknown_0812D004
gUnknown_0812D004:
	.INCBIN "baserom.gba", 0x12D004, 0x12D028-0x12D004

	.GLOBAL gUnknown_0812D028
gUnknown_0812D028:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812D030
gUnknown_0812D030:
	.INCBIN "baserom.gba", 0x12D030, 0x12D130-0x12D030

	.GLOBAL gUnknown_0812D130
gUnknown_0812D130:
	.INCBIN "baserom.gba", 0x12D130, 0x12D154-0x12D130

	.GLOBAL gUnknown_0812D154
gUnknown_0812D154:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812D15C
gUnknown_0812D15C:
	.INCBIN "baserom.gba", 0x12D15C, 0x12D1DC-0x12D15C

	.GLOBAL gUnknown_0812D1DC
gUnknown_0812D1DC:
	.INCBIN "baserom.gba", 0x12D1DC, 0x12D200-0x12D1DC

	.GLOBAL gUnknown_0812D200
gUnknown_0812D200:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D208
gUnknown_0812D208:
	.INCBIN "baserom.gba", 0x12D208, 0x12D288-0x12D208

	.GLOBAL gUnknown_0812D288
gUnknown_0812D288:
	.INCBIN "baserom.gba", 0x12D288, 0x12D2AC-0x12D288

	.GLOBAL gUnknown_0812D2AC
gUnknown_0812D2AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D2B4
gUnknown_0812D2B4:
	.INCBIN "baserom.gba", 0x12D2B4, 0x12D334-0x12D2B4

	.GLOBAL gUnknown_0812D334
gUnknown_0812D334:
	.INCBIN "baserom.gba", 0x12D334, 0x12D358-0x12D334

	.GLOBAL gUnknown_0812D358
gUnknown_0812D358:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D360
gUnknown_0812D360:
	.INCBIN "baserom.gba", 0x12D360, 0x12D3E0-0x12D360

	.GLOBAL gUnknown_0812D3E0
gUnknown_0812D3E0:
	.INCBIN "baserom.gba", 0x12D3E0, 0x12D404-0x12D3E0

	.GLOBAL gUnknown_0812D404
gUnknown_0812D404:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D40C
gUnknown_0812D40C:
	.INCBIN "baserom.gba", 0x12D40C, 0x12D48C-0x12D40C

	.GLOBAL gUnknown_0812D48C
gUnknown_0812D48C:
	.INCBIN "baserom.gba", 0x12D48C, 0x12D4B0-0x12D48C

	.GLOBAL gUnknown_0812D4B0
gUnknown_0812D4B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D4B8
gUnknown_0812D4B8:
	.INCBIN "baserom.gba", 0x12D4B8, 0x12D538-0x12D4B8

	.GLOBAL gUnknown_0812D538
gUnknown_0812D538:
	.INCBIN "baserom.gba", 0x12D538, 0x12D55C-0x12D538

	.GLOBAL gUnknown_0812D55C
gUnknown_0812D55C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_0812D564
gUnknown_0812D564:
	.INCBIN "baserom.gba", 0x12D564, 0x12D5E4-0x12D564

	.GLOBAL gUnknown_0812D5E4
gUnknown_0812D5E4:
	.INCBIN "baserom.gba", 0x12D5E4, 0x12D608-0x12D5E4

	.GLOBAL gUnknown_0812D608
gUnknown_0812D608:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D610
gUnknown_0812D610:
	.INCBIN "baserom.gba", 0x12D610, 0x12D690-0x12D610

	.GLOBAL gUnknown_0812D690
gUnknown_0812D690:
	.INCBIN "baserom.gba", 0x12D690, 0x12D6B4-0x12D690

	.GLOBAL gUnknown_0812D6B4
gUnknown_0812D6B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D6BC
gUnknown_0812D6BC:
	.INCBIN "baserom.gba", 0x12D6BC, 0x12D73C-0x12D6BC

	.GLOBAL gUnknown_0812D73C
gUnknown_0812D73C:
	.INCBIN "baserom.gba", 0x12D73C, 0x12D760-0x12D73C

	.GLOBAL gUnknown_0812D760
gUnknown_0812D760:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812D768
gUnknown_0812D768:
	.INCBIN "baserom.gba", 0x12D768, 0x12D7E8-0x12D768

	.GLOBAL gUnknown_0812D7E8
gUnknown_0812D7E8:
	.INCBIN "baserom.gba", 0x12D7E8, 0x12D80C-0x12D7E8

	.GLOBAL gUnknown_0812D80C
gUnknown_0812D80C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_0812D814
gUnknown_0812D814:
	.INCBIN "baserom.gba", 0x12D814, 0x12D894-0x12D814

	.GLOBAL gUnknown_0812D894
gUnknown_0812D894:
	.INCBIN "baserom.gba", 0x12D894, 0x12D8B8-0x12D894

	.GLOBAL gUnknown_0812D8B8
gUnknown_0812D8B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_0812D8C0
gUnknown_0812D8C0:
	.INCBIN "baserom.gba", 0x12D8C0, 0x12D940-0x12D8C0

	.GLOBAL gUnknown_0812D940
gUnknown_0812D940:
	.INCBIN "baserom.gba", 0x12D940, 0x12D964-0x12D940

	.GLOBAL gUnknown_0812D964
gUnknown_0812D964:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_0812D96C
gUnknown_0812D96C:
	.INCBIN "baserom.gba", 0x12D96C, 0x12D9EC-0x12D96C

	.GLOBAL gUnknown_0812D9EC
gUnknown_0812D9EC:
	.INCBIN "baserom.gba", 0x12D9EC, 0x12DA10-0x12D9EC

	.GLOBAL gUnknown_0812DA10
gUnknown_0812DA10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_0812DA18
gUnknown_0812DA18:
	.INCBIN "baserom.gba", 0x12DA18, 0x12DA98-0x12DA18

	.GLOBAL gUnknown_0812DA98
gUnknown_0812DA98:
	.INCBIN "baserom.gba", 0x12DA98, 0x12DABC-0x12DA98

	.GLOBAL gUnknown_0812DABC
gUnknown_0812DABC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812DAC4
gUnknown_0812DAC4:
	.INCBIN "baserom.gba", 0x12DAC4, 0x12DB44-0x12DAC4

	.GLOBAL gUnknown_0812DB44
gUnknown_0812DB44:
	.INCBIN "baserom.gba", 0x12DB44, 0x12DB68-0x12DB44

	.GLOBAL gUnknown_0812DB68
gUnknown_0812DB68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0812DB70
gUnknown_0812DB70:
	.INCBIN "baserom.gba", 0x12DB70, 0x12DBF0-0x12DB70

	.GLOBAL gUnknown_0812DBF0
gUnknown_0812DBF0:
	.INCBIN "baserom.gba", 0x12DBF0, 0x12DC14-0x12DBF0

	.GLOBAL gUnknown_0812DC14
gUnknown_0812DC14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_0812DC1C
gUnknown_0812DC1C:
	.INCBIN "baserom.gba", 0x12DC1C, 0x12DC9C-0x12DC1C

	.GLOBAL gUnknown_0812DC9C
gUnknown_0812DC9C:
	.INCBIN "baserom.gba", 0x12DC9C, 0x12DCC0-0x12DC9C

	.GLOBAL gUnknown_0812DCC0
gUnknown_0812DCC0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0812DCC8
gUnknown_0812DCC8:
	.INCBIN "baserom.gba", 0x12DCC8, 0x12DD48-0x12DCC8

	.GLOBAL gUnknown_0812DD48
gUnknown_0812DD48:
	.INCBIN "baserom.gba", 0x12DD48, 0x12DE20-0x12DD48

	.GLOBAL gUnknown_0812DE20
gUnknown_0812DE20:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0812DE28
gUnknown_0812DE28:
	.INCBIN "baserom.gba", 0x12DE28, 0x12E128-0x12DE28

	.GLOBAL gUnknown_0812E128
gUnknown_0812E128:
	.INCBIN "baserom.gba", 0x12E128, 0x12E170-0x12E128

	.GLOBAL gUnknown_0812E170
gUnknown_0812E170:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_0812E178
gUnknown_0812E178:
	.INCBIN "baserom.gba", 0x12E178, 0x12E378-0x12E178

	.GLOBAL gUnknown_0812E378
gUnknown_0812E378:
	.INCBIN "baserom.gba", 0x12E378, 0x12E39C-0x12E378

	.GLOBAL gUnknown_0812E39C
gUnknown_0812E39C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0812E3A4
gUnknown_0812E3A4:
	.INCBIN "baserom.gba", 0x12E3A4, 0x12E5A4-0x12E3A4

	.GLOBAL gUnknown_0812E5A4
gUnknown_0812E5A4:
	.INCBIN "baserom.gba", 0x12E5A4, 0x12E5C8-0x12E5A4

	.GLOBAL gUnknown_0812E5C8
gUnknown_0812E5C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0812E5D0
gUnknown_0812E5D0:
	.INCBIN "baserom.gba", 0x12E5D0, 0x12E7D0-0x12E5D0

	.GLOBAL gUnknown_0812E7D0
gUnknown_0812E7D0:
	.INCBIN "baserom.gba", 0x12E7D0, 0x12EA10-0x12E7D0

	.GLOBAL gUnknown_0812EA10
gUnknown_0812EA10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0812EA18
gUnknown_0812EA18:
	.INCBIN "baserom.gba", 0x12EA18, 0x12FA18-0x12EA18

	.GLOBAL gUnknown_0812FA18
gUnknown_0812FA18:
	.INCBIN "baserom.gba", 0x12FA18, 0x12FA84-0x12FA18

	.GLOBAL gUnknown_0812FA84
gUnknown_0812FA84:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0812FA8C
gUnknown_0812FA8C:
	.INCBIN "baserom.gba", 0x12FA8C, 0x12FB8C-0x12FA8C

	.GLOBAL gUnknown_0812FB8C
gUnknown_0812FB8C:
	.INCBIN "baserom.gba", 0x12FB8C, 0x12FBF8-0x12FB8C

	.GLOBAL gUnknown_0812FBF8
gUnknown_0812FBF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0812FC00
gUnknown_0812FC00:
	.INCBIN "baserom.gba", 0x12FC00, 0x12FD00-0x12FC00

	.GLOBAL gUnknown_0812FD00
gUnknown_0812FD00:
	.INCBIN "baserom.gba", 0x12FD00, 0x12FD6C-0x12FD00

	.GLOBAL gUnknown_0812FD6C
gUnknown_0812FD6C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0812FD74
gUnknown_0812FD74:
	.INCBIN "baserom.gba", 0x12FD74, 0x12FE74-0x12FD74

	.GLOBAL gUnknown_0812FE74
gUnknown_0812FE74:
	.INCBIN "baserom.gba", 0x12FE74, 0x12FEBC-0x12FE74

	.GLOBAL gUnknown_0812FEBC
gUnknown_0812FEBC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0812FEC4
gUnknown_0812FEC4:
	.INCBIN "baserom.gba", 0x12FEC4, 0x130EC4-0x12FEC4

	.GLOBAL gUnknown_08130EC4
gUnknown_08130EC4:
	.INCBIN "baserom.gba", 0x130EC4, 0x130FC0-0x130EC4

	.GLOBAL gUnknown_08130FC0
gUnknown_08130FC0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08130FC8
gUnknown_08130FC8:
	.INCBIN "baserom.gba", 0x130FC8, 0x1311C8-0x130FC8

	.GLOBAL gUnknown_081311C8
gUnknown_081311C8:
	.INCBIN "baserom.gba", 0x1311C8, 0x1312A0-0x1311C8

	.GLOBAL gUnknown_081312A0
gUnknown_081312A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_081312A8
gUnknown_081312A8:
	.INCBIN "baserom.gba", 0x1312A8, 0x131EA8-0x1312A8

	.GLOBAL gUnknown_08131EA8
gUnknown_08131EA8:
	.INCBIN "baserom.gba", 0x131EA8, 0x131F38-0x131EA8

	.GLOBAL gUnknown_08131F38
gUnknown_08131F38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08131F40
gUnknown_08131F40:
	.INCBIN "baserom.gba", 0x131F40, 0x132740-0x131F40

	.GLOBAL gUnknown_08132740
gUnknown_08132740:
	.INCBIN "baserom.gba", 0x132740, 0x132860-0x132740

	.GLOBAL gUnknown_08132860
gUnknown_08132860:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08132868
gUnknown_08132868:
	.INCBIN "baserom.gba", 0x132868, 0x133868-0x132868

	.GLOBAL gUnknown_08133868
gUnknown_08133868:
	.INCBIN "baserom.gba", 0x133868, 0x133A60-0x133868

	.GLOBAL gUnknown_08133A60
gUnknown_08133A60:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_08133A68
gUnknown_08133A68:
	.INCBIN "baserom.gba", 0x133A68, 0x135668-0x133A68

	.GLOBAL gUnknown_08135668
gUnknown_08135668:
	.INCBIN "baserom.gba", 0x135668, 0x135788-0x135668

	.GLOBAL gUnknown_08135788
gUnknown_08135788:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08135790
gUnknown_08135790:
	.INCBIN "baserom.gba", 0x135790, 0x135B90-0x135790

	.GLOBAL gUnknown_08135B90
gUnknown_08135B90:
	.INCBIN "baserom.gba", 0x135B90, 0x135C20-0x135B90

	.GLOBAL gUnknown_08135C20
gUnknown_08135C20:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08135C28
gUnknown_08135C28:
	.INCBIN "baserom.gba", 0x135C28, 0x135E28-0x135C28

	.GLOBAL gUnknown_08135E28
gUnknown_08135E28:
	.INCBIN "baserom.gba", 0x135E28, 0x135F48-0x135E28

	.GLOBAL gUnknown_08135F48
gUnknown_08135F48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08135F50
gUnknown_08135F50:
	.INCBIN "baserom.gba", 0x135F50, 0x136350-0x135F50

	.GLOBAL gUnknown_08136350
gUnknown_08136350:
	.INCBIN "baserom.gba", 0x136350, 0x136500-0x136350

	.GLOBAL gUnknown_08136500
gUnknown_08136500:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08136508
gUnknown_08136508:
	.INCBIN "baserom.gba", 0x136508, 0x136B08-0x136508

	.GLOBAL gUnknown_08136B08
gUnknown_08136B08:
	.INCBIN "baserom.gba", 0x136B08, 0x136C28-0x136B08

	.GLOBAL gUnknown_08136C28
gUnknown_08136C28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08136C30
gUnknown_08136C30:
	.INCBIN "baserom.gba", 0x136C30, 0x137030-0x136C30

	.GLOBAL gUnknown_08137030
gUnknown_08137030:
	.INCBIN "baserom.gba", 0x137030, 0x137150-0x137030

	.GLOBAL gUnknown_08137150
gUnknown_08137150:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08137158
gUnknown_08137158:
	.INCBIN "baserom.gba", 0x137158, 0x137558-0x137158

	.GLOBAL gUnknown_08137558
gUnknown_08137558:
	.INCBIN "baserom.gba", 0x137558, 0x1375E8-0x137558

	.GLOBAL gUnknown_081375E8
gUnknown_081375E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_081375F0
gUnknown_081375F0:
	.INCBIN "baserom.gba", 0x1375F0, 0x1377F0-0x1375F0

	.GLOBAL gUnknown_081377F0
gUnknown_081377F0:
	.INCBIN "baserom.gba", 0x1377F0, 0x1379A0-0x1377F0

	.GLOBAL gUnknown_081379A0
gUnknown_081379A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_081379A8
gUnknown_081379A8:
	.INCBIN "baserom.gba", 0x1379A8, 0x137FA8-0x1379A8

	.GLOBAL gUnknown_08137FA8
gUnknown_08137FA8:
	.INCBIN "baserom.gba", 0x137FA8, 0x1381E8-0x137FA8

	.GLOBAL gUnknown_081381E8
gUnknown_081381E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_081381F0
gUnknown_081381F0:
	.INCBIN "baserom.gba", 0x1381F0, 0x1389F0-0x1381F0

	.GLOBAL gUnknown_081389F0
gUnknown_081389F0:
	.INCBIN "baserom.gba", 0x1389F0, 0x138B10-0x1389F0

	.GLOBAL gUnknown_08138B10
gUnknown_08138B10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08138B18
gUnknown_08138B18:
	.INCBIN "baserom.gba", 0x138B18, 0x138F18-0x138B18

	.GLOBAL gUnknown_08138F18
gUnknown_08138F18:
	.INCBIN "baserom.gba", 0x138F18, 0x139038-0x138F18

	.GLOBAL gUnknown_08139038
gUnknown_08139038:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08139040
gUnknown_08139040:
	.INCBIN "baserom.gba", 0x139040, 0x139440-0x139040

	.GLOBAL gUnknown_08139440
gUnknown_08139440:
	.INCBIN "baserom.gba", 0x139440, 0x1394D0-0x139440

	.GLOBAL gUnknown_081394D0
gUnknown_081394D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_081394D8
gUnknown_081394D8:
	.INCBIN "baserom.gba", 0x1394D8, 0x1396D8-0x1394D8

	.GLOBAL gUnknown_081396D8
gUnknown_081396D8:
	.INCBIN "baserom.gba", 0x1396D8, 0x139918-0x1396D8

	.GLOBAL gUnknown_08139918
gUnknown_08139918:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08139920
gUnknown_08139920:
	.INCBIN "baserom.gba", 0x139920, 0x13A120-0x139920

	.GLOBAL gUnknown_0813A120
gUnknown_0813A120:
	.INCBIN "baserom.gba", 0x13A120, 0x13A168-0x13A120

	.GLOBAL gUnknown_0813A168
gUnknown_0813A168:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0813A170
gUnknown_0813A170:
	.INCBIN "baserom.gba", 0x13A170, 0x13B170-0x13A170

	.GLOBAL gUnknown_0813B170
gUnknown_0813B170:
	.INCBIN "baserom.gba", 0x13B170, 0x13B3B0-0x13B170

	.GLOBAL gUnknown_0813B3B0
gUnknown_0813B3B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0813B3B8
gUnknown_0813B3B8:
	.INCBIN "baserom.gba", 0x13B3B8, 0x13EBB8-0x13B3B8

	.GLOBAL gUnknown_0813EBB8
gUnknown_0813EBB8:
	.INCBIN "baserom.gba", 0x13EBB8, 0x13EC00-0x13EBB8

	.GLOBAL gUnknown_0813EC00
gUnknown_0813EC00:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0813EC08
gUnknown_0813EC08:
	.INCBIN "baserom.gba", 0x13EC08, 0x13FC08-0x13EC08

	.GLOBAL gUnknown_0813FC08
gUnknown_0813FC08:
	.INCBIN "baserom.gba", 0x13FC08, 0x13FE6C-0x13FC08

	.GLOBAL gUnknown_0813FE6C
gUnknown_0813FE6C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0813FE74
gUnknown_0813FE74:
	.INCBIN "baserom.gba", 0x13FE74, 0x145E74-0x13FE74

	.GLOBAL gUnknown_08145E74
gUnknown_08145E74:
	.INCBIN "baserom.gba", 0x145E74, 0x145F28-0x145E74

	.GLOBAL gUnknown_08145F28
gUnknown_08145F28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_08145F30
gUnknown_08145F30:
	.INCBIN "baserom.gba", 0x145F30, 0x1460B0-0x145F30

	.GLOBAL gUnknown_081460B0
gUnknown_081460B0:
	.INCBIN "baserom.gba", 0x1460B0, 0x1461D0-0x1460B0

	.GLOBAL gUnknown_081461D0
gUnknown_081461D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081461D8
gUnknown_081461D8:
	.INCBIN "baserom.gba", 0x1461D8, 0x14E1D8-0x1461D8

	.GLOBAL gUnknown_0814E1D8
gUnknown_0814E1D8:
	.INCBIN "baserom.gba", 0x14E1D8, 0x14E340-0x14E1D8

	.GLOBAL gUnknown_0814E340
gUnknown_0814E340:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0814E348
gUnknown_0814E348:
	.INCBIN "baserom.gba", 0x14E348, 0x150B48-0x14E348

	.GLOBAL gUnknown_08150B48
gUnknown_08150B48:
	.INCBIN "baserom.gba", 0x150B48, 0x150BD8-0x150B48

	.GLOBAL gUnknown_08150BD8
gUnknown_08150BD8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08150BE0
gUnknown_08150BE0:
	.INCBIN "baserom.gba", 0x150BE0, 0x152BE0-0x150BE0

	.GLOBAL gUnknown_08152BE0
gUnknown_08152BE0:
	.INCBIN "baserom.gba", 0x152BE0, 0x153180-0x152BE0

	.GLOBAL gfxDKHurtOAM
gfxDKHurtOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gfxDKHurt8bpp
gfxDKHurt8bpp:
	.INCBIN "assets/sprites/DKHurt.8bpp"

	.GLOBAL gUnknown_08159188
gUnknown_08159188:
	.INCBIN "baserom.gba", 0x159188, 0x15962C-0x159188

	.GLOBAL gUnknown_0815962C
gUnknown_0815962C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08159634
gUnknown_08159634:
	.INCBIN "baserom.gba", 0x159634, 0x15FE34-0x159634

	.GLOBAL gUnknown_0815FE34
gUnknown_0815FE34:
	.INCBIN "baserom.gba", 0x15FE34, 0x15FFE4-0x15FE34

	.GLOBAL gUnknown_0815FFE4
gUnknown_0815FFE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0815FFEC
gUnknown_0815FFEC:
	.INCBIN "baserom.gba", 0x15FFEC, 0x162FEC-0x15FFEC

	.GLOBAL gUnknown_08162FEC
gUnknown_08162FEC:
	.INCBIN "baserom.gba", 0x162FEC, 0x163130-0x162FEC

	.GLOBAL gUnknown_08163130
gUnknown_08163130:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08163138
gUnknown_08163138:
	.INCBIN "baserom.gba", 0x163138, 0x167938-0x163138

	.GLOBAL gUnknown_08167938
gUnknown_08167938:
	.INCBIN "baserom.gba", 0x167938, 0x16795C-0x167938

	.GLOBAL gUnknown_0816795C
gUnknown_0816795C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08167964
gUnknown_08167964:
	.INCBIN "baserom.gba", 0x167964, 0x168164-0x167964

	.GLOBAL gUnknown_08168164
gUnknown_08168164:
	.INCBIN "baserom.gba", 0x168164, 0x168554-0x168164

	.GLOBAL gUnknown_08168554
gUnknown_08168554:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0816855C
gUnknown_0816855C:
	.INCBIN "baserom.gba", 0x16855C, 0x17555C-0x16855C

	.GLOBAL gUnknown_0817555C
gUnknown_0817555C:
	.INCBIN "baserom.gba", 0x17555C, 0x17570C-0x17555C

	.GLOBAL gUnknown_0817570C
gUnknown_0817570C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08175714
gUnknown_08175714:
	.INCBIN "baserom.gba", 0x175714, 0x181714-0x175714

	.GLOBAL gUnknown_08181714
gUnknown_08181714:
	.INCBIN "baserom.gba", 0x181714, 0x1817EC-0x181714

	.GLOBAL gUnknown_081817EC
gUnknown_081817EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081817F4
gUnknown_081817F4:
	.INCBIN "baserom.gba", 0x1817F4, 0x1877F4-0x1817F4

	.GLOBAL gUnknown_081877F4
gUnknown_081877F4:
	.INCBIN "baserom.gba", 0x1877F4, 0x187AC4-0x1877F4

	.GLOBAL gUnknown_08187AC4
gUnknown_08187AC4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08187ACC
gUnknown_08187ACC:
	.INCBIN "baserom.gba", 0x187ACC, 0x18AACC-0x187ACC

	.GLOBAL gUnknown_0818AACC
gUnknown_0818AACC:
	.INCBIN "baserom.gba", 0x18AACC, 0x18ADC0-0x18AACC

	.GLOBAL gUnknown_0818ADC0
gUnknown_0818ADC0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0818ADC8
gUnknown_0818ADC8:
	.INCBIN "baserom.gba", 0x18ADC8, 0x19EDC8-0x18ADC8

	.GLOBAL gUnknown_0819EDC8
gUnknown_0819EDC8:
	.INCBIN "baserom.gba", 0x19EDC8, 0x19EE58-0x19EDC8

	.GLOBAL gUnknown_0819EE58
gUnknown_0819EE58:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0819EE60
gUnknown_0819EE60:
	.INCBIN "baserom.gba", 0x19EE60, 0x1A1E60-0x19EE60

	.GLOBAL gUnknown_081A1E60
gUnknown_081A1E60:
	.INCBIN "baserom.gba", 0x1A1E60, 0x1A2178-0x1A1E60

	.GLOBAL gUnknown_081A2178
gUnknown_081A2178:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081A2180
gUnknown_081A2180:
	.INCBIN "baserom.gba", 0x1A2180, 0x1B6180-0x1A2180

	.GLOBAL gUnknown_081B6180
gUnknown_081B6180:
	.INCBIN "baserom.gba", 0x1B6180, 0x1B6378-0x1B6180

	.GLOBAL gUnknown_081B6378
gUnknown_081B6378:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081B6380
gUnknown_081B6380:
	.INCBIN "baserom.gba", 0x1B6380, 0x1B8F80-0x1B6380

	.GLOBAL gUnknown_081B8F80
gUnknown_081B8F80:
	.INCBIN "baserom.gba", 0x1B8F80, 0x1B90A0-0x1B8F80

	.GLOBAL gUnknown_081B90A0
gUnknown_081B90A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081B90A8
gUnknown_081B90A8:
	.INCBIN "baserom.gba", 0x1B90A8, 0x1BD0A8-0x1B90A8

	.GLOBAL gUnknown_081BD0A8
gUnknown_081BD0A8:
	.INCBIN "baserom.gba", 0x1BD0A8, 0x1BD1EC-0x1BD0A8

	.GLOBAL gUnknown_081BD1EC
gUnknown_081BD1EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081BD1F4
gUnknown_081BD1F4:
	.INCBIN "baserom.gba", 0x1BD1F4, 0x1C19F4-0x1BD1F4

	.GLOBAL gUnknown_081C19F4
gUnknown_081C19F4:
	.INCBIN "baserom.gba", 0x1C19F4, 0x1C1A18-0x1C19F4

	.GLOBAL gUnknown_081C1A18
gUnknown_081C1A18:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081C1A20
gUnknown_081C1A20:
	.INCBIN "baserom.gba", 0x1C1A20, 0x1C1C20-0x1C1A20

	.GLOBAL gUnknown_081C1C20
gUnknown_081C1C20:
	.INCBIN "baserom.gba", 0x1C1C20, 0x1C1C68-0x1C1C20

	.GLOBAL gUnknown_081C1C68
gUnknown_081C1C68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081C1C70
gUnknown_081C1C70:
	.INCBIN "baserom.gba", 0x1C1C70, 0x1C2070-0x1C1C70

	.GLOBAL gUnknown_081C2070
gUnknown_081C2070:
	.INCBIN "baserom.gba", 0x1C2070, 0x1C2094-0x1C2070

	.GLOBAL gUnknown_081C2094
gUnknown_081C2094:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081C209C
gUnknown_081C209C:
	.INCBIN "baserom.gba", 0x1C209C, 0x1C211C-0x1C209C

	.GLOBAL gUnknown_081C211C
gUnknown_081C211C:
	.INCBIN "baserom.gba", 0x1C211C, 0x1C2164-0x1C211C

	.GLOBAL gUnknown_081C2164
gUnknown_081C2164:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081C216C
gUnknown_081C216C:
	.INCBIN "baserom.gba", 0x1C216C, 0x1C226C-0x1C216C

	.GLOBAL gUnknown_081C226C
gUnknown_081C226C:
	.INCBIN "baserom.gba", 0x1C226C, 0x1C22B4-0x1C226C

	.GLOBAL gUnknown_081C22B4
gUnknown_081C22B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081C22BC
gUnknown_081C22BC:
	.INCBIN "baserom.gba", 0x1C22BC, 0x1C32BC-0x1C22BC

	.GLOBAL gUnknown_081C32BC
gUnknown_081C32BC:
	.INCBIN "baserom.gba", 0x1C32BC, 0x1C3304-0x1C32BC

	.GLOBAL gUnknown_081C3304
gUnknown_081C3304:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081C330C
gUnknown_081C330C:
	.INCBIN "baserom.gba", 0x1C330C, 0x1C430C-0x1C330C

	.GLOBAL gUnknown_081C430C
gUnknown_081C430C:
	.INCBIN "baserom.gba", 0x1C430C, 0x1C4378-0x1C430C

	.GLOBAL gUnknown_081C4378
gUnknown_081C4378:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081C4380
gUnknown_081C4380:
	.INCBIN "baserom.gba", 0x1C4380, 0x1C7380-0x1C4380

	.GLOBAL gUnknown_081C7380
gUnknown_081C7380:
	.INCBIN "baserom.gba", 0x1C7380, 0x1C7410-0x1C7380

	.GLOBAL gUnknown_081C7410
gUnknown_081C7410:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081C7418
gUnknown_081C7418:
	.INCBIN "baserom.gba", 0x1C7418, 0x1CB418-0x1C7418

	.GLOBAL gUnknown_081CB418
gUnknown_081CB418:
	.INCBIN "baserom.gba", 0x1CB418, 0x1CB538-0x1CB418

	.GLOBAL gUnknown_081CB538
gUnknown_081CB538:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081CB540
gUnknown_081CB540:
	.INCBIN "baserom.gba", 0x1CB540, 0x1CD540-0x1CB540

	.GLOBAL gUnknown_081CD540
gUnknown_081CD540:
	.INCBIN "baserom.gba", 0x1CD540, 0x1CD564-0x1CD540

	.GLOBAL gUnknown_081CD564
gUnknown_081CD564:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081CD56C
gUnknown_081CD56C:
	.INCBIN "baserom.gba", 0x1CD56C, 0x1CD96C-0x1CD56C

	.GLOBAL gUnknown_081CD96C
gUnknown_081CD96C:
	.INCBIN "baserom.gba", 0x1CD96C, 0x1CDA8C-0x1CD96C

	.GLOBAL gUnknown_081CDA8C
gUnknown_081CDA8C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081CDA94
gUnknown_081CDA94:
	.INCBIN "baserom.gba", 0x1CDA94, 0x1CFA94-0x1CDA94

	.GLOBAL gUnknown_081CFA94
gUnknown_081CFA94:
	.INCBIN "baserom.gba", 0x1CFA94, 0x1CFAB8-0x1CFA94

	.GLOBAL gUnknown_081CFAB8
gUnknown_081CFAB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081CFAC0
gUnknown_081CFAC0:
	.INCBIN "baserom.gba", 0x1CFAC0, 0x1CFEC0-0x1CFAC0

	.GLOBAL gUnknown_081CFEC0
gUnknown_081CFEC0:
	.INCBIN "baserom.gba", 0x1CFEC0, 0x1CFFE0-0x1CFEC0

	.GLOBAL gUnknown_081CFFE0
gUnknown_081CFFE0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081CFFE8
gUnknown_081CFFE8:
	.INCBIN "baserom.gba", 0x1CFFE8, 0x1D1FE8-0x1CFFE8

	.GLOBAL gUnknown_081D1FE8
gUnknown_081D1FE8:
	.INCBIN "baserom.gba", 0x1D1FE8, 0x1D2204-0x1D1FE8

	.GLOBAL gUnknown_081D2204
gUnknown_081D2204:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D220C
gUnknown_081D220C:
	.INCBIN "baserom.gba", 0x1D220C, 0x1D360C-0x1D220C

	.GLOBAL gUnknown_081D360C
gUnknown_081D360C:
	.INCBIN "baserom.gba", 0x1D360C, 0x1D384C-0x1D360C

	.GLOBAL gUnknown_081D384C
gUnknown_081D384C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D3854
gUnknown_081D3854:
	.INCBIN "baserom.gba", 0x1D3854, 0x1D4854-0x1D3854

	.GLOBAL gUnknown_081D4854
gUnknown_081D4854:
	.INCBIN "baserom.gba", 0x1D4854, 0x1D4A94-0x1D4854

	.GLOBAL gUnknown_081D4A94
gUnknown_081D4A94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D4A9C
gUnknown_081D4A9C:
	.INCBIN "baserom.gba", 0x1D4A9C, 0x1D5A9C-0x1D4A9C

	.GLOBAL gUnknown_081D5A9C
gUnknown_081D5A9C:
	.INCBIN "baserom.gba", 0x1D5A9C, 0x1D5CB8-0x1D5A9C

	.GLOBAL gUnknown_081D5CB8
gUnknown_081D5CB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D5CC0
gUnknown_081D5CC0:
	.INCBIN "baserom.gba", 0x1D5CC0, 0x1D70C0-0x1D5CC0

	.GLOBAL gUnknown_081D70C0
gUnknown_081D70C0:
	.INCBIN "baserom.gba", 0x1D70C0, 0x1D71E0-0x1D70C0

	.GLOBAL gUnknown_081D71E0
gUnknown_081D71E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D71E8
gUnknown_081D71E8:
	.INCBIN "baserom.gba", 0x1D71E8, 0x1D91E8-0x1D71E8

	.GLOBAL gUnknown_081D91E8
gUnknown_081D91E8:
	.INCBIN "baserom.gba", 0x1D91E8, 0x1D920C-0x1D91E8

	.GLOBAL gUnknown_081D920C
gUnknown_081D920C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D9214
gUnknown_081D9214:
	.INCBIN "baserom.gba", 0x1D9214, 0x1D9614-0x1D9214

	.GLOBAL gUnknown_081D9614
gUnknown_081D9614:
	.INCBIN "baserom.gba", 0x1D9614, 0x1D96EC-0x1D9614

	.GLOBAL gUnknown_081D96EC
gUnknown_081D96EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081D96F4
gUnknown_081D96F4:
	.INCBIN "baserom.gba", 0x1D96F4, 0x1DF6F4-0x1D96F4

	.GLOBAL gUnknown_081DF6F4
gUnknown_081DF6F4:
	.INCBIN "baserom.gba", 0x1DF6F4, 0x1DF718-0x1DF6F4

	.GLOBAL gUnknown_081DF718
gUnknown_081DF718:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081DF720
gUnknown_081DF720:
	.INCBIN "baserom.gba", 0x1DF720, 0x1DFF20-0x1DF720

	.GLOBAL gUnknown_081DFF20
gUnknown_081DFF20:
	.INCBIN "baserom.gba", 0x1DFF20, 0x1DFF68-0x1DFF20

	.GLOBAL gUnknown_081DFF68
gUnknown_081DFF68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081DFF70
gUnknown_081DFF70:
	.INCBIN "baserom.gba", 0x1DFF70, 0x1E0070-0x1DFF70

	.GLOBAL gUnknown_081E0070
gUnknown_081E0070:
	.INCBIN "baserom.gba", 0x1E0070, 0x1E0094-0x1E0070

	.GLOBAL gUnknown_081E0094
gUnknown_081E0094:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081E009C
gUnknown_081E009C:
	.INCBIN "baserom.gba", 0x1E009C, 0x1E019C-0x1E009C

	.GLOBAL gUnknown_081E019C
gUnknown_081E019C:
	.INCBIN "baserom.gba", 0x1E019C, 0x1E0274-0x1E019C

	.GLOBAL gUnknown_081E0274
gUnknown_081E0274:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081E027C
gUnknown_081E027C:
	.INCBIN "baserom.gba", 0x1E027C, 0x1E327C-0x1E027C

	.GLOBAL gUnknown_081E327C
gUnknown_081E327C:
	.INCBIN "baserom.gba", 0x1E327C, 0x1E3378-0x1E327C

	.GLOBAL gUnknown_081E3378
gUnknown_081E3378:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_081E3380
gUnknown_081E3380:
	.INCBIN "baserom.gba", 0x1E3380, 0x1E6B80-0x1E3380

	.GLOBAL gUnknown_081E6B80
gUnknown_081E6B80:
	.INCBIN "baserom.gba", 0x1E6B80, 0x1E6DC0-0x1E6B80

	.GLOBAL gUnknown_081E6DC0
gUnknown_081E6DC0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081E6DC8
gUnknown_081E6DC8:
	.INCBIN "baserom.gba", 0x1E6DC8, 0x1EADC8-0x1E6DC8

	.GLOBAL gUnknown_081EADC8
gUnknown_081EADC8:
	.INCBIN "baserom.gba", 0x1EADC8, 0x1EAEE8-0x1EADC8

	.GLOBAL gUnknown_081EAEE8
gUnknown_081EAEE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081EAEF0
gUnknown_081EAEF0:
	.INCBIN "baserom.gba", 0x1EAEF0, 0x1F2EF0-0x1EAEF0

	.GLOBAL gUnknown_081F2EF0
gUnknown_081F2EF0:
	.INCBIN "baserom.gba", 0x1F2EF0, 0x1F31E4-0x1F2EF0

	.GLOBAL gUnknown_081F31E4
gUnknown_081F31E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_081F31EC
gUnknown_081F31EC:
	.INCBIN "baserom.gba", 0x1F31EC, 0x2031EC-0x1F31EC

	.GLOBAL gUnknown_082031EC
gUnknown_082031EC:
	.INCBIN "baserom.gba", 0x2031EC, 0x2034E0-0x2031EC

	.GLOBAL gUnknown_082034E0
gUnknown_082034E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082034E8
gUnknown_082034E8:
	.INCBIN "baserom.gba", 0x2034E8, 0x2084E8-0x2034E8

	.GLOBAL gUnknown_082084E8
gUnknown_082084E8:
	.INCBIN "baserom.gba", 0x2084E8, 0x20850C-0x2084E8

	.GLOBAL gUnknown_0820850C
gUnknown_0820850C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08208514
gUnknown_08208514:
	.INCBIN "baserom.gba", 0x208514, 0x208914-0x208514

	.GLOBAL gUnknown_08208914
gUnknown_08208914:
	.INCBIN "baserom.gba", 0x208914, 0x208A34-0x208914

	.GLOBAL gUnknown_08208A34
gUnknown_08208A34:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08208A3C
gUnknown_08208A3C:
	.INCBIN "baserom.gba", 0x208A3C, 0x210A3C-0x208A3C

	.GLOBAL gUnknown_08210A3C
gUnknown_08210A3C:
	.INCBIN "baserom.gba", 0x210A3C, 0x210ACC-0x210A3C

	.GLOBAL gUnknown_08210ACC
gUnknown_08210ACC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08210AD4
gUnknown_08210AD4:
	.INCBIN "baserom.gba", 0x210AD4, 0x213AD4-0x210AD4

	.GLOBAL gUnknown_08213AD4
gUnknown_08213AD4:
	.INCBIN "baserom.gba", 0x213AD4, 0x213D14-0x213AD4

	.GLOBAL gUnknown_08213D14
gUnknown_08213D14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08213D1C
gUnknown_08213D1C:
	.INCBIN "baserom.gba", 0x213D1C, 0x223D1C-0x213D1C

	.GLOBAL gUnknown_08223D1C
gUnknown_08223D1C:
	.INCBIN "baserom.gba", 0x223D1C, 0x223D40-0x223D1C

	.GLOBAL gUnknown_08223D40
gUnknown_08223D40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08223D48
gUnknown_08223D48:
	.INCBIN "baserom.gba", 0x223D48, 0x223D68-0x223D48

	.GLOBAL gUnknown_08223D68
gUnknown_08223D68:
	.INCBIN "baserom.gba", 0x223D68, 0x223D8C-0x223D68

	.GLOBAL gUnknown_08223D8C
gUnknown_08223D8C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08223D94
gUnknown_08223D94:
	.INCBIN "baserom.gba", 0x223D94, 0x223E14-0x223D94

	.GLOBAL gUnknown_08223E14
gUnknown_08223E14:
	.INCBIN "baserom.gba", 0x223E14, 0x223E38-0x223E14

	.GLOBAL gUnknown_08223E38
gUnknown_08223E38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08223E40
gUnknown_08223E40:
	.INCBIN "baserom.gba", 0x223E40, 0x223EC0-0x223E40

	.GLOBAL gUnknown_08223EC0
gUnknown_08223EC0:
	.INCBIN "baserom.gba", 0x223EC0, 0x223EE4-0x223EC0

	.GLOBAL gUnknown_08223EE4
gUnknown_08223EE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08223EEC
gUnknown_08223EEC:
	.INCBIN "baserom.gba", 0x223EEC, 0x223F6C-0x223EEC

	.GLOBAL gUnknown_08223F6C
gUnknown_08223F6C:
	.INCBIN "baserom.gba", 0x223F6C, 0x223F90-0x223F6C

	.GLOBAL gUnknown_08223F90
gUnknown_08223F90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08223F98
gUnknown_08223F98:
	.INCBIN "baserom.gba", 0x223F98, 0x224018-0x223F98

	.GLOBAL gUnknown_08224018
gUnknown_08224018:
	.INCBIN "baserom.gba", 0x224018, 0x22403C-0x224018

	.GLOBAL gUnknown_0822403C
gUnknown_0822403C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08224044
gUnknown_08224044:
	.INCBIN "baserom.gba", 0x224044, 0x224064-0x224044

	.GLOBAL gUnknown_08224064
gUnknown_08224064:
	.INCBIN "baserom.gba", 0x224064, 0x224088-0x224064

	.GLOBAL gUnknown_08224088
gUnknown_08224088:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08224090
gUnknown_08224090:
	.INCBIN "baserom.gba", 0x224090, 0x224190-0x224090

	.GLOBAL gUnknown_08224190
gUnknown_08224190:
	.INCBIN "baserom.gba", 0x224190, 0x224514-0x224190

	.GLOBAL gUnknown_08224514
gUnknown_08224514:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0822451C
gUnknown_0822451C:
	.INCBIN "baserom.gba", 0x22451C, 0x227D1C-0x22451C

	.GLOBAL gUnknown_08227D1C
gUnknown_08227D1C:
	.INCBIN "baserom.gba", 0x227D1C, 0x227D40-0x227D1C

	.GLOBAL gUnknown_08227D40
gUnknown_08227D40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08227D48
gUnknown_08227D48:
	.INCBIN "baserom.gba", 0x227D48, 0x228D48-0x227D48

	.GLOBAL gUnknown_08228D48
gUnknown_08228D48:
	.INCBIN "baserom.gba", 0x228D48, 0x228ED4-0x228D48

	.GLOBAL gUnknown_08228ED4
gUnknown_08228ED4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08228EDC
gUnknown_08228EDC:
	.INCBIN "baserom.gba", 0x228EDC, 0x230EDC-0x228EDC

	.GLOBAL gUnknown_08230EDC
gUnknown_08230EDC:
	.INCBIN "baserom.gba", 0x230EDC, 0x2310D4-0x230EDC

	.GLOBAL gUnknown_082310D4
gUnknown_082310D4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082310DC
gUnknown_082310DC:
	.INCBIN "baserom.gba", 0x2310DC, 0x2380DC-0x2310DC

	.GLOBAL gUnknown_082380DC
gUnknown_082380DC:
	.INCBIN "baserom.gba", 0x2380DC, 0x2382D4-0x2380DC

	.GLOBAL gUnknown_082382D4
gUnknown_082382D4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082382DC
gUnknown_082382DC:
	.INCBIN "baserom.gba", 0x2382DC, 0x23F2DC-0x2382DC

	.GLOBAL gUnknown_0823F2DC
gUnknown_0823F2DC:
	.INCBIN "baserom.gba", 0x23F2DC, 0x23F3FC-0x23F2DC

	.GLOBAL gUnknown_0823F3FC
gUnknown_0823F3FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0823F404
gUnknown_0823F404:
	.INCBIN "baserom.gba", 0x23F404, 0x243404-0x23F404

	.GLOBAL gUnknown_08243404
gUnknown_08243404:
	.INCBIN "baserom.gba", 0x243404, 0x24356C-0x243404

	.GLOBAL gUnknown_0824356C
gUnknown_0824356C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08243574
gUnknown_08243574:
	.INCBIN "baserom.gba", 0x243574, 0x24D574-0x243574

	.GLOBAL gUnknown_0824D574
gUnknown_0824D574:
	.INCBIN "baserom.gba", 0x24D574, 0x24D6B8-0x24D574

	.GLOBAL gUnknown_0824D6B8
gUnknown_0824D6B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0824D6C0
gUnknown_0824D6C0:
	.INCBIN "baserom.gba", 0x24D6C0, 0x251EC0-0x24D6C0

	.GLOBAL gUnknown_08251EC0
gUnknown_08251EC0:
	.INCBIN "baserom.gba", 0x251EC0, 0x251FE0-0x251EC0

	.GLOBAL gUnknown_08251FE0
gUnknown_08251FE0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08251FE8
gUnknown_08251FE8:
	.INCBIN "baserom.gba", 0x251FE8, 0x259FE8-0x251FE8

	.GLOBAL gUnknown_08259FE8
gUnknown_08259FE8:
	.INCBIN "baserom.gba", 0x259FE8, 0x25A00C-0x259FE8

	.GLOBAL gUnknown_0825A00C
gUnknown_0825A00C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0825A014
gUnknown_0825A014:
	.INCBIN "baserom.gba", 0x25A014, 0x25A814-0x25A014

	.GLOBAL gUnknown_0825A814
gUnknown_0825A814:
	.INCBIN "baserom.gba", 0x25A814, 0x25AA78-0x25A814

	.GLOBAL gUnknown_0825AA78
gUnknown_0825AA78:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0825AA80
gUnknown_0825AA80:
	.INCBIN "baserom.gba", 0x25AA80, 0x26BA80-0x25AA80

	.GLOBAL gUnknown_0826BA80
gUnknown_0826BA80:
	.INCBIN "baserom.gba", 0x26BA80, 0x26BAA4-0x26BA80

	.GLOBAL gUnknown_0826BAA4
gUnknown_0826BAA4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0826BAAC
gUnknown_0826BAAC:
	.INCBIN "baserom.gba", 0x26BAAC, 0x26C2AC-0x26BAAC

	.GLOBAL gUnknown_0826C2AC
gUnknown_0826C2AC:
	.INCBIN "baserom.gba", 0x26C2AC, 0x26C33C-0x26C2AC

	.GLOBAL gUnknown_0826C33C
gUnknown_0826C33C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0826C344
gUnknown_0826C344:
	.INCBIN "baserom.gba", 0x26C344, 0x270344-0x26C344

	.GLOBAL gUnknown_08270344
gUnknown_08270344:
	.INCBIN "baserom.gba", 0x270344, 0x2705F0-0x270344

	.GLOBAL gUnknown_082705F0
gUnknown_082705F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082705F8
gUnknown_082705F8:
	.INCBIN "baserom.gba", 0x2705F8, 0x275DF8-0x2705F8

	.GLOBAL gUnknown_08275DF8
gUnknown_08275DF8:
	.INCBIN "baserom.gba", 0x275DF8, 0x275E88-0x275DF8

	.GLOBAL gUnknown_08275E88
gUnknown_08275E88:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08275E90
gUnknown_08275E90:
	.INCBIN "baserom.gba", 0x275E90, 0x277E90-0x275E90

	.GLOBAL gUnknown_08277E90
gUnknown_08277E90:
	.INCBIN "baserom.gba", 0x277E90, 0x277F44-0x277E90

	.GLOBAL gUnknown_08277F44
gUnknown_08277F44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08277F4C
gUnknown_08277F4C:
	.INCBIN "baserom.gba", 0x277F4C, 0x27CF4C-0x277F4C

	.GLOBAL gUnknown_0827CF4C
gUnknown_0827CF4C:
	.INCBIN "baserom.gba", 0x27CF4C, 0x27CF70-0x27CF4C

	.GLOBAL gUnknown_0827CF70
gUnknown_0827CF70:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0827CF78
gUnknown_0827CF78:
	.INCBIN "baserom.gba", 0x27CF78, 0x27D778-0x27CF78

	.GLOBAL gUnknown_0827D778
gUnknown_0827D778:
	.INCBIN "baserom.gba", 0x27D778, 0x27D898-0x27D778

	.GLOBAL gUnknown_0827D898
gUnknown_0827D898:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0827D8A0
gUnknown_0827D8A0:
	.INCBIN "baserom.gba", 0x27D8A0, 0x27E8A0-0x27D8A0

	.GLOBAL gUnknown_0827E8A0
gUnknown_0827E8A0:
	.INCBIN "baserom.gba", 0x27E8A0, 0x27E9E4-0x27E8A0

	.GLOBAL gUnknown_0827E9E4
gUnknown_0827E9E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0827E9EC
gUnknown_0827E9EC:
	.INCBIN "baserom.gba", 0x27E9EC, 0x27FBEC-0x27E9EC

	.GLOBAL gUnknown_0827FBEC
gUnknown_0827FBEC:
	.INCBIN "baserom.gba", 0x27FBEC, 0x27FDE4-0x27FBEC

	.GLOBAL gUnknown_0827FDE4
gUnknown_0827FDE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0827FDEC
gUnknown_0827FDEC:
	.INCBIN "baserom.gba", 0x27FDEC, 0x280BEC-0x27FDEC

	.GLOBAL gUnknown_08280BEC
gUnknown_08280BEC:
	.INCBIN "baserom.gba", 0x280BEC, 0x280DE4-0x280BEC

	.GLOBAL gUnknown_08280DE4
gUnknown_08280DE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08280DEC
gUnknown_08280DEC:
	.INCBIN "baserom.gba", 0x280DEC, 0x281BEC-0x280DEC

	.GLOBAL gUnknown_08281BEC
gUnknown_08281BEC:
	.INCBIN "baserom.gba", 0x281BEC, 0x281D54-0x281BEC

	.GLOBAL gUnknown_08281D54
gUnknown_08281D54:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08281D5C
gUnknown_08281D5C:
	.INCBIN "baserom.gba", 0x281D5C, 0x28315C-0x281D5C

	.GLOBAL gUnknown_0828315C
gUnknown_0828315C:
	.INCBIN "baserom.gba", 0x28315C, 0x28339C-0x28315C

	.GLOBAL gUnknown_0828339C
gUnknown_0828339C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_082833A4
gUnknown_082833A4:
	.INCBIN "baserom.gba", 0x2833A4, 0x2853A4-0x2833A4

	.GLOBAL gUnknown_082853A4
gUnknown_082853A4:
	.INCBIN "baserom.gba", 0x2853A4, 0x285554-0x2853A4

	.GLOBAL gUnknown_08285554
gUnknown_08285554:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0828555C
gUnknown_0828555C:
	.INCBIN "baserom.gba", 0x28555C, 0x28855C-0x28555C

	.GLOBAL gUnknown_0828855C
gUnknown_0828855C:
	.INCBIN "baserom.gba", 0x28855C, 0x288634-0x28855C

	.GLOBAL gUnknown_08288634
gUnknown_08288634:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0828863C
gUnknown_0828863C:
	.INCBIN "baserom.gba", 0x28863C, 0x28B63C-0x28863C

	.GLOBAL gUnknown_0828B63C
gUnknown_0828B63C:
	.INCBIN "baserom.gba", 0x28B63C, 0x28B75C-0x28B63C

	.GLOBAL gUnknown_0828B75C
gUnknown_0828B75C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0828B764
gUnknown_0828B764:
	.INCBIN "baserom.gba", 0x28B764, 0x28C764-0x28B764

	.GLOBAL gUnknown_0828C764
gUnknown_0828C764:
	.INCBIN "baserom.gba", 0x28C764, 0x28C83C-0x28C764

	.GLOBAL gUnknown_0828C83C
gUnknown_0828C83C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0828C844
gUnknown_0828C844:
	.INCBIN "baserom.gba", 0x28C844, 0x28CE44-0x28C844

	.GLOBAL gUnknown_0828CE44
gUnknown_0828CE44:
	.INCBIN "baserom.gba", 0x28CE44, 0x28D084-0x28CE44

	.GLOBAL gUnknown_0828D084
gUnknown_0828D084:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0828D08C
gUnknown_0828D08C:
	.INCBIN "baserom.gba", 0x28D08C, 0x28D28C-0x28D08C

	.GLOBAL gUnknown_0828D28C
gUnknown_0828D28C:
	.INCBIN "baserom.gba", 0x28D28C, 0x28D31C-0x28D28C

	.GLOBAL gUnknown_0828D31C
gUnknown_0828D31C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0828D324
gUnknown_0828D324:
	.INCBIN "baserom.gba", 0x28D324, 0x28DB24-0x28D324

	.GLOBAL gUnknown_0828DB24
gUnknown_0828DB24:
	.INCBIN "baserom.gba", 0x28DB24, 0x28DD64-0x28DB24

	.GLOBAL gUnknown_0828DD64
gUnknown_0828DD64:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0828DD6C
gUnknown_0828DD6C:
	.INCBIN "baserom.gba", 0x28DD6C, 0x28E46C-0x28DD6C

	.GLOBAL gUnknown_0828E46C
gUnknown_0828E46C:
	.INCBIN "baserom.gba", 0x28E46C, 0x28E6AC-0x28E46C

	.GLOBAL gUnknown_0828E6AC
gUnknown_0828E6AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0828E6B4
gUnknown_0828E6B4:
	.INCBIN "baserom.gba", 0x28E6B4, 0x28EDB4-0x28E6B4

	.GLOBAL gUnknown_0828EDB4
gUnknown_0828EDB4:
	.INCBIN "baserom.gba", 0x28EDB4, 0x28F114-0x28EDB4

	.GLOBAL gUnknown_0828F114
gUnknown_0828F114:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0828F11C
gUnknown_0828F11C:
	.INCBIN "baserom.gba", 0x28F11C, 0x28FD1C-0x28F11C

	.GLOBAL gUnknown_0828FD1C
gUnknown_0828FD1C:
	.INCBIN "baserom.gba", 0x28FD1C, 0x28FF5C-0x28FD1C

	.GLOBAL gUnknown_0828FF5C
gUnknown_0828FF5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0828FF64
gUnknown_0828FF64:
	.INCBIN "baserom.gba", 0x28FF64, 0x28FFE4-0x28FF64

	.GLOBAL gUnknown_0828FFE4
gUnknown_0828FFE4:
	.INCBIN "baserom.gba", 0x28FFE4, 0x290224-0x28FFE4

	.GLOBAL gUnknown_08290224
gUnknown_08290224:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0829022C
gUnknown_0829022C:
	.INCBIN "baserom.gba", 0x29022C, 0x2902AC-0x29022C

	.GLOBAL gUnknown_082902AC
gUnknown_082902AC:
	.INCBIN "baserom.gba", 0x2902AC, 0x2904EC-0x2902AC

	.GLOBAL gUnknown_082904EC
gUnknown_082904EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082904F4
gUnknown_082904F4:
	.INCBIN "baserom.gba", 0x2904F4, 0x290574-0x2904F4

	.GLOBAL gUnknown_08290574
gUnknown_08290574:
	.INCBIN "baserom.gba", 0x290574, 0x2907B4-0x290574

	.GLOBAL gUnknown_082907B4
gUnknown_082907B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082907BC
gUnknown_082907BC:
	.INCBIN "baserom.gba", 0x2907BC, 0x29083C-0x2907BC

	.GLOBAL gUnknown_0829083C
gUnknown_0829083C:
	.INCBIN "baserom.gba", 0x29083C, 0x290B9C-0x29083C

	.GLOBAL gUnknown_08290B9C
gUnknown_08290B9C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08290BA4
gUnknown_08290BA4:
	.INCBIN "baserom.gba", 0x290BA4, 0x2923A4-0x290BA4

	.GLOBAL gUnknown_082923A4
gUnknown_082923A4:
	.INCBIN "baserom.gba", 0x2923A4, 0x2925E4-0x2923A4

	.GLOBAL gUnknown_082925E4
gUnknown_082925E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082925EC
gUnknown_082925EC:
	.INCBIN "baserom.gba", 0x2925EC, 0x2935EC-0x2925EC

	.GLOBAL gUnknown_082935EC
gUnknown_082935EC:
	.INCBIN "baserom.gba", 0x2935EC, 0x29382C-0x2935EC

	.GLOBAL gUnknown_0829382C
gUnknown_0829382C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08293834
gUnknown_08293834:
	.INCBIN "baserom.gba", 0x293834, 0x293C34-0x293834

	.GLOBAL gUnknown_08293C34
gUnknown_08293C34:
	.INCBIN "baserom.gba", 0x293C34, 0x293F94-0x293C34

	.GLOBAL gUnknown_08293F94
gUnknown_08293F94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08293F9C
gUnknown_08293F9C:
	.INCBIN "baserom.gba", 0x293F9C, 0x29429C-0x293F9C

	.GLOBAL gUnknown_0829429C
gUnknown_0829429C:
	.INCBIN "baserom.gba", 0x29429C, 0x2944DC-0x29429C

	.GLOBAL gUnknown_082944DC
gUnknown_082944DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082944E4
gUnknown_082944E4:
	.INCBIN "baserom.gba", 0x2944E4, 0x2954E4-0x2944E4

	.GLOBAL gUnknown_082954E4
gUnknown_082954E4:
	.INCBIN "baserom.gba", 0x2954E4, 0x295508-0x2954E4

	.GLOBAL gUnknown_08295508
gUnknown_08295508:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_08295510
gUnknown_08295510:
	.INCBIN "baserom.gba", 0x295510, 0x295530-0x295510

	.GLOBAL gUnknown_08295530
gUnknown_08295530:
	.INCBIN "baserom.gba", 0x295530, 0x295554-0x295530

	.GLOBAL gUnknown_08295554
gUnknown_08295554:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_0829555C
gUnknown_0829555C:
	.INCBIN "baserom.gba", 0x29555C, 0x29557C-0x29555C

	.GLOBAL gUnknown_0829557C
gUnknown_0829557C:
	.INCBIN "baserom.gba", 0x29557C, 0x2955A0-0x29557C

	.GLOBAL gUnknown_082955A0
gUnknown_082955A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_082955A8
gUnknown_082955A8:
	.INCBIN "baserom.gba", 0x2955A8, 0x2955C8-0x2955A8

	.GLOBAL gUnknown_082955C8
gUnknown_082955C8:
	.INCBIN "baserom.gba", 0x2955C8, 0x2955EC-0x2955C8

	.GLOBAL gUnknown_082955EC
gUnknown_082955EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_082955F4
gUnknown_082955F4:
	.INCBIN "baserom.gba", 0x2955F4, 0x295614-0x2955F4

	.GLOBAL gUnknown_08295614
gUnknown_08295614:
	.INCBIN "baserom.gba", 0x295614, 0x295638-0x295614

	.GLOBAL gUnknown_08295638
gUnknown_08295638:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_08295640
gUnknown_08295640:
	.INCBIN "baserom.gba", 0x295640, 0x295660-0x295640

	.GLOBAL gUnknown_08295660
gUnknown_08295660:
	.INCBIN "baserom.gba", 0x295660, 0x295684-0x295660

	.GLOBAL gUnknown_08295684
gUnknown_08295684:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0829568C
gUnknown_0829568C:
	.INCBIN "baserom.gba", 0x29568C, 0x29578C-0x29568C

	.GLOBAL gUnknown_0829578C
gUnknown_0829578C:
	.INCBIN "baserom.gba", 0x29578C, 0x2957B0-0x29578C

	.GLOBAL gUnknown_082957B0
gUnknown_082957B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082957B8
gUnknown_082957B8:
	.INCBIN "baserom.gba", 0x2957B8, 0x295FB8-0x2957B8

	.GLOBAL gUnknown_08295FB8
gUnknown_08295FB8:
	.INCBIN "baserom.gba", 0x295FB8, 0x295FDC-0x295FB8

	.GLOBAL gUnknown_08295FDC
gUnknown_08295FDC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08295FE4
gUnknown_08295FE4:
	.INCBIN "baserom.gba", 0x295FE4, 0x2967E4-0x295FE4

	.GLOBAL gUnknown_082967E4
gUnknown_082967E4:
	.INCBIN "baserom.gba", 0x2967E4, 0x296808-0x2967E4

	.GLOBAL gUnknown_08296808
gUnknown_08296808:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08296810
gUnknown_08296810:
	.INCBIN "baserom.gba", 0x296810, 0x297010-0x296810

	.GLOBAL gUnknown_08297010
gUnknown_08297010:
	.INCBIN "baserom.gba", 0x297010, 0x297034-0x297010

	.GLOBAL gUnknown_08297034
gUnknown_08297034:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0829703C
gUnknown_0829703C:
	.INCBIN "baserom.gba", 0x29703C, 0x29713C-0x29703C

	.GLOBAL gUnknown_0829713C
gUnknown_0829713C:
	.INCBIN "baserom.gba", 0x29713C, 0x297160-0x29713C

	.GLOBAL gUnknown_08297160
gUnknown_08297160:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08297168
gUnknown_08297168:
	.INCBIN "baserom.gba", 0x297168, 0x297268-0x297168

	.GLOBAL gUnknown_08297268
gUnknown_08297268:
	.INCBIN "baserom.gba", 0x297268, 0x29728C-0x297268

	.GLOBAL gUnknown_0829728C
gUnknown_0829728C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08297294
gUnknown_08297294:
	.INCBIN "baserom.gba", 0x297294, 0x297394-0x297294

	.GLOBAL gUnknown_08297394
gUnknown_08297394:
	.INCBIN "baserom.gba", 0x297394, 0x2973B8-0x297394

	.GLOBAL gUnknown_082973B8
gUnknown_082973B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082973C0
gUnknown_082973C0:
	.INCBIN "baserom.gba", 0x2973C0, 0x2974C0-0x2973C0

	.GLOBAL gUnknown_082974C0
gUnknown_082974C0:
	.INCBIN "baserom.gba", 0x2974C0, 0x2974E4-0x2974C0

	.GLOBAL gUnknown_082974E4
gUnknown_082974E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_082974EC
gUnknown_082974EC:
	.INCBIN "baserom.gba", 0x2974EC, 0x2975EC-0x2974EC

	.GLOBAL gUnknown_082975EC
gUnknown_082975EC:
	.INCBIN "baserom.gba", 0x2975EC, 0x297610-0x2975EC

	.GLOBAL gUnknown_08297610
gUnknown_08297610:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08297618
gUnknown_08297618:
	.INCBIN "baserom.gba", 0x297618, 0x297718-0x297618

	.GLOBAL gUnknown_08297718
gUnknown_08297718:
	.INCBIN "baserom.gba", 0x297718, 0x29773C-0x297718

	.GLOBAL gUnknown_0829773C
gUnknown_0829773C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08297744
gUnknown_08297744:
	.INCBIN "baserom.gba", 0x297744, 0x297844-0x297744

	.GLOBAL gUnknown_08297844
gUnknown_08297844:
	.INCBIN "baserom.gba", 0x297844, 0x297868-0x297844

	.GLOBAL gUnknown_08297868
gUnknown_08297868:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08297870
gUnknown_08297870:
	.INCBIN "baserom.gba", 0x297870, 0x297970-0x297870

	.GLOBAL gUnknown_08297970
gUnknown_08297970:
	.INCBIN "baserom.gba", 0x297970, 0x297994-0x297970

	.GLOBAL gUnknown_08297994
gUnknown_08297994:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0829799C
gUnknown_0829799C:
	.INCBIN "baserom.gba", 0x29799C, 0x297A9C-0x29799C

	.GLOBAL gUnknown_08297A9C
gUnknown_08297A9C:
	.INCBIN "baserom.gba", 0x297A9C, 0x297AC0-0x297A9C

	.GLOBAL gUnknown_08297AC0
gUnknown_08297AC0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08297AC8
gUnknown_08297AC8:
	.INCBIN "baserom.gba", 0x297AC8, 0x297BC8-0x297AC8

	.GLOBAL gUnknown_08297BC8
gUnknown_08297BC8:
	.INCBIN "baserom.gba", 0x297BC8, 0x297BEC-0x297BC8

	.GLOBAL gUnknown_08297BEC
gUnknown_08297BEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08297BF4
gUnknown_08297BF4:
	.INCBIN "baserom.gba", 0x297BF4, 0x297CF4-0x297BF4

	.GLOBAL gUnknown_08297CF4
gUnknown_08297CF4:
	.INCBIN "baserom.gba", 0x297CF4, 0x297D18-0x297CF4

	.GLOBAL gUnknown_08297D18
gUnknown_08297D18:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08297D20
gUnknown_08297D20:
	.INCBIN "baserom.gba", 0x297D20, 0x297E20-0x297D20

	.GLOBAL gUnknown_08297E20
gUnknown_08297E20:
	.INCBIN "baserom.gba", 0x297E20, 0x297E44-0x297E20

	.GLOBAL gUnknown_08297E44
gUnknown_08297E44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08297E4C
gUnknown_08297E4C:
	.INCBIN "baserom.gba", 0x297E4C, 0x297F4C-0x297E4C

	.GLOBAL gUnknown_08297F4C
gUnknown_08297F4C:
	.INCBIN "baserom.gba", 0x297F4C, 0x297F70-0x297F4C

	.GLOBAL gUnknown_08297F70
gUnknown_08297F70:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08297F78
gUnknown_08297F78:
	.INCBIN "baserom.gba", 0x297F78, 0x298078-0x297F78

	.GLOBAL gUnknown_08298078
gUnknown_08298078:
	.INCBIN "baserom.gba", 0x298078, 0x29809C-0x298078

	.GLOBAL gUnknown_0829809C
gUnknown_0829809C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082980A4
gUnknown_082980A4:
	.INCBIN "baserom.gba", 0x2980A4, 0x2981A4-0x2980A4

	.GLOBAL gUnknown_082981A4
gUnknown_082981A4:
	.INCBIN "baserom.gba", 0x2981A4, 0x2981C8-0x2981A4

	.GLOBAL gUnknown_082981C8
gUnknown_082981C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082981D0
gUnknown_082981D0:
	.INCBIN "baserom.gba", 0x2981D0, 0x2982D0-0x2981D0

	.GLOBAL gUnknown_082982D0
gUnknown_082982D0:
	.INCBIN "baserom.gba", 0x2982D0, 0x2982F4-0x2982D0

	.GLOBAL gUnknown_082982F4
gUnknown_082982F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_082982FC
gUnknown_082982FC:
	.INCBIN "baserom.gba", 0x2982FC, 0x2983FC-0x2982FC

	.GLOBAL gUnknown_082983FC
gUnknown_082983FC:
	.INCBIN "baserom.gba", 0x2983FC, 0x298420-0x2983FC

	.GLOBAL gUnknown_08298420
gUnknown_08298420:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08298428
gUnknown_08298428:
	.INCBIN "baserom.gba", 0x298428, 0x298528-0x298428

	.GLOBAL gUnknown_08298528
gUnknown_08298528:
	.INCBIN "baserom.gba", 0x298528, 0x29854C-0x298528

	.GLOBAL gUnknown_0829854C
gUnknown_0829854C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08298554
gUnknown_08298554:
	.INCBIN "baserom.gba", 0x298554, 0x298654-0x298554

	.GLOBAL gUnknown_08298654
gUnknown_08298654:
	.INCBIN "baserom.gba", 0x298654, 0x298678-0x298654

	.GLOBAL gUnknown_08298678
gUnknown_08298678:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08298680
gUnknown_08298680:
	.INCBIN "baserom.gba", 0x298680, 0x298780-0x298680

	.GLOBAL gUnknown_08298780
gUnknown_08298780:
	.INCBIN "baserom.gba", 0x298780, 0x2987A4-0x298780

	.GLOBAL gUnknown_082987A4
gUnknown_082987A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082987AC
gUnknown_082987AC:
	.INCBIN "baserom.gba", 0x2987AC, 0x2988AC-0x2987AC

	.GLOBAL gUnknown_082988AC
gUnknown_082988AC:
	.INCBIN "baserom.gba", 0x2988AC, 0x2988D0-0x2988AC

	.GLOBAL gUnknown_082988D0
gUnknown_082988D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082988D8
gUnknown_082988D8:
	.INCBIN "baserom.gba", 0x2988D8, 0x2989D8-0x2988D8

	.GLOBAL gUnknown_082989D8
gUnknown_082989D8:
	.INCBIN "baserom.gba", 0x2989D8, 0x2989FC-0x2989D8

	.GLOBAL gUnknown_082989FC
gUnknown_082989FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08298A04
gUnknown_08298A04:
	.INCBIN "baserom.gba", 0x298A04, 0x298B04-0x298A04

	.GLOBAL gUnknown_08298B04
gUnknown_08298B04:
	.INCBIN "baserom.gba", 0x298B04, 0x298B28-0x298B04

	.GLOBAL gUnknown_08298B28
gUnknown_08298B28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08298B30
gUnknown_08298B30:
	.INCBIN "baserom.gba", 0x298B30, 0x298C30-0x298B30

	.GLOBAL gUnknown_08298C30
gUnknown_08298C30:
	.INCBIN "baserom.gba", 0x298C30, 0x298C54-0x298C30

	.GLOBAL gUnknown_08298C54
gUnknown_08298C54:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08298C5C
gUnknown_08298C5C:
	.INCBIN "baserom.gba", 0x298C5C, 0x298D5C-0x298C5C

	.GLOBAL gUnknown_08298D5C
gUnknown_08298D5C:
	.INCBIN "baserom.gba", 0x298D5C, 0x298D80-0x298D5C

	.GLOBAL gUnknown_08298D80
gUnknown_08298D80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08298D88
gUnknown_08298D88:
	.INCBIN "baserom.gba", 0x298D88, 0x298E88-0x298D88

	.GLOBAL gUnknown_08298E88
gUnknown_08298E88:
	.INCBIN "baserom.gba", 0x298E88, 0x298EAC-0x298E88

	.GLOBAL gUnknown_08298EAC
gUnknown_08298EAC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08298EB4
gUnknown_08298EB4:
	.INCBIN "baserom.gba", 0x298EB4, 0x298FB4-0x298EB4

	.GLOBAL gUnknown_08298FB4
gUnknown_08298FB4:
	.INCBIN "baserom.gba", 0x298FB4, 0x298FD8-0x298FB4

	.GLOBAL gUnknown_08298FD8
gUnknown_08298FD8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08298FE0
gUnknown_08298FE0:
	.INCBIN "baserom.gba", 0x298FE0, 0x2990E0-0x298FE0

	.GLOBAL gUnknown_082990E0
gUnknown_082990E0:
	.INCBIN "baserom.gba", 0x2990E0, 0x299104-0x2990E0

	.GLOBAL gUnknown_08299104
gUnknown_08299104:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_0829910C
gUnknown_0829910C:
	.INCBIN "baserom.gba", 0x29910C, 0x29920C-0x29910C

	.GLOBAL gUnknown_0829920C
gUnknown_0829920C:
	.INCBIN "baserom.gba", 0x29920C, 0x299230-0x29920C

	.GLOBAL gUnknown_08299230
gUnknown_08299230:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08299238
gUnknown_08299238:
	.INCBIN "baserom.gba", 0x299238, 0x299338-0x299238

	.GLOBAL gUnknown_08299338
gUnknown_08299338:
	.INCBIN "baserom.gba", 0x299338, 0x29935C-0x299338

	.GLOBAL gUnknown_0829935C
gUnknown_0829935C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08299364
gUnknown_08299364:
	.INCBIN "baserom.gba", 0x299364, 0x299464-0x299364

	.GLOBAL gUnknown_08299464
gUnknown_08299464:
	.INCBIN "baserom.gba", 0x299464, 0x299488-0x299464

	.GLOBAL gUnknown_08299488
gUnknown_08299488:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08299490
gUnknown_08299490:
	.INCBIN "baserom.gba", 0x299490, 0x299590-0x299490

	.GLOBAL gUnknown_08299590
gUnknown_08299590:
	.INCBIN "baserom.gba", 0x299590, 0x2995B4-0x299590

	.GLOBAL gUnknown_082995B4
gUnknown_082995B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082995BC
gUnknown_082995BC:
	.INCBIN "baserom.gba", 0x2995BC, 0x2996BC-0x2995BC

	.GLOBAL gUnknown_082996BC
gUnknown_082996BC:
	.INCBIN "baserom.gba", 0x2996BC, 0x2996E0-0x2996BC

	.GLOBAL gUnknown_082996E0
gUnknown_082996E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082996E8
gUnknown_082996E8:
	.INCBIN "baserom.gba", 0x2996E8, 0x2997E8-0x2996E8

	.GLOBAL gUnknown_082997E8
gUnknown_082997E8:
	.INCBIN "baserom.gba", 0x2997E8, 0x29980C-0x2997E8

	.GLOBAL gUnknown_0829980C
gUnknown_0829980C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_08299814
gUnknown_08299814:
	.INCBIN "baserom.gba", 0x299814, 0x299914-0x299814

	.GLOBAL gUnknown_08299914
gUnknown_08299914:
	.INCBIN "baserom.gba", 0x299914, 0x299938-0x299914

	.GLOBAL gUnknown_08299938
gUnknown_08299938:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08299940
gUnknown_08299940:
	.INCBIN "baserom.gba", 0x299940, 0x299A40-0x299940

	.GLOBAL gUnknown_08299A40
gUnknown_08299A40:
	.INCBIN "baserom.gba", 0x299A40, 0x299BF0-0x299A40

	.GLOBAL gUnknown_08299BF0
gUnknown_08299BF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_08299BF8
gUnknown_08299BF8:
	.INCBIN "baserom.gba", 0x299BF8, 0x29A7F8-0x299BF8

	.GLOBAL gUnknown_0829A7F8
gUnknown_0829A7F8:
	.INCBIN "baserom.gba", 0x29A7F8, 0x29A81C-0x29A7F8

	.GLOBAL gUnknown_0829A81C
gUnknown_0829A81C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0829A824
gUnknown_0829A824:
	.INCBIN "baserom.gba", 0x29A824, 0x29B824-0x29A824

	.GLOBAL gUnknown_0829B824
gUnknown_0829B824:
	.INCBIN "baserom.gba", 0x29B824, 0x29BA64-0x29B824

	.GLOBAL gUnknown_0829BA64
gUnknown_0829BA64:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0829BA6C
gUnknown_0829BA6C:
	.INCBIN "baserom.gba", 0x29BA6C, 0x29C26C-0x29BA6C

	.GLOBAL gUnknown_0829C26C
gUnknown_0829C26C:
	.INCBIN "baserom.gba", 0x29C26C, 0x29C4AC-0x29C26C

	.GLOBAL gUnknown_0829C4AC
gUnknown_0829C4AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0829C4B4
gUnknown_0829C4B4:
	.INCBIN "baserom.gba", 0x29C4B4, 0x29CCB4-0x29C4B4

	.GLOBAL gUnknown_0829CCB4
gUnknown_0829CCB4:
	.INCBIN "baserom.gba", 0x29CCB4, 0x29CEF4-0x29CCB4

	.GLOBAL gUnknown_0829CEF4
gUnknown_0829CEF4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0829CEFC
gUnknown_0829CEFC:
	.INCBIN "baserom.gba", 0x29CEFC, 0x29CF7C-0x29CEFC

	.GLOBAL gUnknown_0829CF7C
gUnknown_0829CF7C:
	.INCBIN "baserom.gba", 0x29CF7C, 0x29D1BC-0x29CF7C

	.GLOBAL gUnknown_0829D1BC
gUnknown_0829D1BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0829D1C4
gUnknown_0829D1C4:
	.INCBIN "baserom.gba", 0x29D1C4, 0x29D9C4-0x29D1C4

	.GLOBAL gUnknown_0829D9C4
gUnknown_0829D9C4:
	.INCBIN "baserom.gba", 0x29D9C4, 0x29D9E8-0x29D9C4

	.GLOBAL gUnknown_0829D9E8
gUnknown_0829D9E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0829D9F0
gUnknown_0829D9F0:
	.INCBIN "baserom.gba", 0x29D9F0, 0x29DA70-0x29D9F0

	.GLOBAL gUnknown_0829DA70
gUnknown_0829DA70:
	.INCBIN "baserom.gba", 0x29DA70, 0x29DCB0-0x29DA70

	.GLOBAL gUnknown_0829DCB0
gUnknown_0829DCB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0829DCB8
gUnknown_0829DCB8:
	.INCBIN "baserom.gba", 0x29DCB8, 0x29ECB8-0x29DCB8

	.GLOBAL gUnknown_0829ECB8
gUnknown_0829ECB8:
	.INCBIN "baserom.gba", 0x29ECB8, 0x29EDB4-0x29ECB8

	.GLOBAL gUnknown_0829EDB4
gUnknown_0829EDB4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0829EDBC
gUnknown_0829EDBC:
	.INCBIN "baserom.gba", 0x29EDBC, 0x29F4BC-0x29EDBC

	.GLOBAL gUnknown_0829F4BC
gUnknown_0829F4BC:
	.INCBIN "baserom.gba", 0x29F4BC, 0x29F66C-0x29F4BC

	.GLOBAL gUnknown_0829F66C
gUnknown_0829F66C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0829F674
gUnknown_0829F674:
	.INCBIN "baserom.gba", 0x29F674, 0x2A0E74-0x29F674

	.GLOBAL gUnknown_082A0E74
gUnknown_082A0E74:
	.INCBIN "baserom.gba", 0x2A0E74, 0x2A0F94-0x2A0E74

	.GLOBAL gUnknown_082A0F94
gUnknown_082A0F94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082A0F9C
gUnknown_082A0F9C:
	.INCBIN "baserom.gba", 0x2A0F9C, 0x2A139C-0x2A0F9C

	.GLOBAL gUnknown_082A139C
gUnknown_082A139C:
	.INCBIN "baserom.gba", 0x2A139C, 0x2A1474-0x2A139C

	.GLOBAL gUnknown_082A1474
gUnknown_082A1474:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082A147C
gUnknown_082A147C:
	.INCBIN "baserom.gba", 0x2A147C, 0x2A207C-0x2A147C

	.GLOBAL gUnknown_082A207C
gUnknown_082A207C:
	.INCBIN "baserom.gba", 0x2A207C, 0x2A22BC-0x2A207C

	.GLOBAL gUnknown_082A22BC
gUnknown_082A22BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082A22C4
gUnknown_082A22C4:
	.INCBIN "baserom.gba", 0x2A22C4, 0x2A42C4-0x2A22C4

	.GLOBAL gUnknown_082A42C4
gUnknown_082A42C4:
	.INCBIN "baserom.gba", 0x2A42C4, 0x2A4354-0x2A42C4

	.GLOBAL gUnknown_082A4354
gUnknown_082A4354:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082A435C
gUnknown_082A435C:
	.INCBIN "baserom.gba", 0x2A435C, 0x2A4B5C-0x2A435C

	.GLOBAL gUnknown_082A4B5C
gUnknown_082A4B5C:
	.INCBIN "baserom.gba", 0x2A4B5C, 0x2A4C7C-0x2A4B5C

	.GLOBAL gUnknown_082A4C7C
gUnknown_082A4C7C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082A4C84
gUnknown_082A4C84:
	.INCBIN "baserom.gba", 0x2A4C84, 0x2A5C84-0x2A4C84

	.GLOBAL gUnknown_082A5C84
gUnknown_082A5C84:
	.INCBIN "baserom.gba", 0x2A5C84, 0x2A5D5C-0x2A5C84

	.GLOBAL gUnknown_082A5D5C
gUnknown_082A5D5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A5D64
gUnknown_082A5D64:
	.INCBIN "baserom.gba", 0x2A5D64, 0x2A6064-0x2A5D64

	.GLOBAL gUnknown_082A6064
gUnknown_082A6064:
	.INCBIN "baserom.gba", 0x2A6064, 0x2A6184-0x2A6064

	.GLOBAL gUnknown_082A6184
gUnknown_082A6184:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A618C
gUnknown_082A618C:
	.INCBIN "baserom.gba", 0x2A618C, 0x2A658C-0x2A618C

	.GLOBAL gUnknown_082A658C
gUnknown_082A658C:
	.INCBIN "baserom.gba", 0x2A658C, 0x2A6910-0x2A658C

	.GLOBAL gUnknown_082A6910
gUnknown_082A6910:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A6918
gUnknown_082A6918:
	.INCBIN "baserom.gba", 0x2A6918, 0x2A6C18-0x2A6918

	.GLOBAL gUnknown_082A6C18
gUnknown_082A6C18:
	.INCBIN "baserom.gba", 0x2A6C18, 0x2A6CF0-0x2A6C18

	.GLOBAL gUnknown_082A6CF0
gUnknown_082A6CF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A6CF8
gUnknown_082A6CF8:
	.INCBIN "baserom.gba", 0x2A6CF8, 0x2A6FF8-0x2A6CF8

	.GLOBAL gUnknown_082A6FF8
gUnknown_082A6FF8:
	.INCBIN "baserom.gba", 0x2A6FF8, 0x2A70AC-0x2A6FF8

	.GLOBAL gUnknown_082A70AC
gUnknown_082A70AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A70B4
gUnknown_082A70B4:
	.INCBIN "baserom.gba", 0x2A70B4, 0x2A7334-0x2A70B4

	.GLOBAL gUnknown_082A7334
gUnknown_082A7334:
	.INCBIN "baserom.gba", 0x2A7334, 0x2A7454-0x2A7334

	.GLOBAL gUnknown_082A7454
gUnknown_082A7454:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A745C
gUnknown_082A745C:
	.INCBIN "baserom.gba", 0x2A745C, 0x2A785C-0x2A745C

	.GLOBAL gUnknown_082A785C
gUnknown_082A785C:
	.INCBIN "baserom.gba", 0x2A785C, 0x2A7934-0x2A785C

	.GLOBAL gUnknown_082A7934
gUnknown_082A7934:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082A793C
gUnknown_082A793C:
	.INCBIN "baserom.gba", 0x2A793C, 0x2A7C3C-0x2A793C

	.GLOBAL gUnknown_082A7C3C
gUnknown_082A7C3C:
	.INCBIN "baserom.gba", 0x2A7C3C, 0x2A7DEC-0x2A7C3C

	.GLOBAL gUnknown_082A7DEC
gUnknown_082A7DEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_082A7DF4
gUnknown_082A7DF4:
	.INCBIN "baserom.gba", 0x2A7DF4, 0x2A95F4-0x2A7DF4

	.GLOBAL gUnknown_082A95F4
gUnknown_082A95F4:
	.INCBIN "baserom.gba", 0x2A95F4, 0x2A9834-0x2A95F4

	.GLOBAL gUnknown_082A9834
gUnknown_082A9834:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082A983C
gUnknown_082A983C:
	.INCBIN "baserom.gba", 0x2A983C, 0x2AB83C-0x2A983C

	.GLOBAL gUnknown_082AB83C
gUnknown_082AB83C:
	.INCBIN "baserom.gba", 0x2AB83C, 0x2AB8CC-0x2AB83C

	.GLOBAL gUnknown_082AB8CC
gUnknown_082AB8CC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_082AB8D4
gUnknown_082AB8D4:
	.INCBIN "baserom.gba", 0x2AB8D4, 0x2AC0D4-0x2AB8D4

	.GLOBAL gUnknown_082AC0D4
gUnknown_082AC0D4:
	.INCBIN "baserom.gba", 0x2AC0D4, 0x2AC2A8-0x2AC0D4

	.GLOBAL gUnknown_082AC2A8
gUnknown_082AC2A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_082AC2B0
gUnknown_082AC2B0:
	.INCBIN "baserom.gba", 0x2AC2B0, 0x2ADAB0-0x2AC2B0

	.GLOBAL gUnknown_082ADAB0
gUnknown_082ADAB0:
	.INCBIN "baserom.gba", 0x2ADAB0, 0x2ADAD4-0x2ADAB0

	.GLOBAL gUnknown_082ADAD4
gUnknown_082ADAD4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_082ADADC
gUnknown_082ADADC:
	.INCBIN "baserom.gba", 0x2ADADC, 0x2ADBDC-0x2ADADC

	.GLOBAL gUnknown_082ADBDC
gUnknown_082ADBDC:
	.INCBIN "baserom.gba", 0x2ADBDC, 0x2ADE1C-0x2ADBDC

	.GLOBAL gUnknown_082ADE1C
gUnknown_082ADE1C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082ADE24
gUnknown_082ADE24:
	.INCBIN "baserom.gba", 0x2ADE24, 0x2AEE24-0x2ADE24

	.GLOBAL gUnknown_082AEE24
gUnknown_082AEE24:
	.INCBIN "baserom.gba", 0x2AEE24, 0x2AEE48-0x2AEE24

	.GLOBAL gUnknown_082AEE48
gUnknown_082AEE48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_082AEE50
gUnknown_082AEE50:
	.INCBIN "baserom.gba", 0x2AEE50, 0x2AEF50-0x2AEE50

	.GLOBAL gUnknown_082AEF50
gUnknown_082AEF50:
	.INCBIN "baserom.gba", 0x2AEF50, 0x2AEF74-0x2AEF50

	.GLOBAL gUnknown_082AEF74
gUnknown_082AEF74:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082AEF7C
gUnknown_082AEF7C:
	.INCBIN "baserom.gba", 0x2AEF7C, 0x2AF77C-0x2AEF7C

	.GLOBAL gUnknown_082AF77C
gUnknown_082AF77C:
	.INCBIN "baserom.gba", 0x2AF77C, 0x2AF7A0-0x2AF77C

	.GLOBAL gUnknown_082AF7A0
gUnknown_082AF7A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082AF7A8
gUnknown_082AF7A8:
	.INCBIN "baserom.gba", 0x2AF7A8, 0x2AFFA8-0x2AF7A8

	.GLOBAL gUnknown_082AFFA8
gUnknown_082AFFA8:
	.INCBIN "baserom.gba", 0x2AFFA8, 0x2B0080-0x2AFFA8

	.GLOBAL gUnknown_082B0080
gUnknown_082B0080:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082B0088
gUnknown_082B0088:
	.INCBIN "baserom.gba", 0x2B0088, 0x2B3088-0x2B0088

	.GLOBAL gUnknown_082B3088
gUnknown_082B3088:
	.INCBIN "baserom.gba", 0x2B3088, 0x2B30AC-0x2B3088

	.GLOBAL gUnknown_082B30AC
gUnknown_082B30AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082B30B4
gUnknown_082B30B4:
	.INCBIN "baserom.gba", 0x2B30B4, 0x2B34B4-0x2B30B4

	.GLOBAL gUnknown_082B34B4
gUnknown_082B34B4:
	.INCBIN "baserom.gba", 0x2B34B4, 0x2B3544-0x2B34B4

	.GLOBAL gUnknown_082B3544
gUnknown_082B3544:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082B354C
gUnknown_082B354C:
	.INCBIN "baserom.gba", 0x2B354C, 0x2B454C-0x2B354C

	.GLOBAL gUnknown_082B454C
gUnknown_082B454C:
	.INCBIN "baserom.gba", 0x2B454C, 0x2B45DC-0x2B454C

	.GLOBAL gUnknown_082B45DC
gUnknown_082B45DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082B45E4
gUnknown_082B45E4:
	.INCBIN "baserom.gba", 0x2B45E4, 0x2B55E4-0x2B45E4

	.GLOBAL gUnknown_082B55E4
gUnknown_082B55E4:
	.INCBIN "baserom.gba", 0x2B55E4, 0x2B5674-0x2B55E4

	.GLOBAL gUnknown_082B5674
gUnknown_082B5674:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082B567C
gUnknown_082B567C:
	.INCBIN "baserom.gba", 0x2B567C, 0x2B667C-0x2B567C

	.GLOBAL gUnknown_082B667C
gUnknown_082B667C:
	.INCBIN "baserom.gba", 0x2B667C, 0x2B670C-0x2B667C

	.GLOBAL gUnknown_082B670C
gUnknown_082B670C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082B6714
gUnknown_082B6714:
	.INCBIN "baserom.gba", 0x2B6714, 0x2B7714-0x2B6714

	.GLOBAL gUnknown_082B7714
gUnknown_082B7714:
	.INCBIN "baserom.gba", 0x2B7714, 0x2B787C-0x2B7714

	.GLOBAL gUnknown_082B787C
gUnknown_082B787C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_082B7884
gUnknown_082B7884:
	.INCBIN "baserom.gba", 0x2B7884, 0x2B8C84-0x2B7884

	.GLOBAL gUnknown_082B8C84
gUnknown_082B8C84:
	.INCBIN "baserom.gba", 0x2B8C84, 0x2B8F54-0x2B8C84

	.GLOBAL gUnknown_082B8F54
gUnknown_082B8F54:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_082B8F5C
gUnknown_082B8F5C:
	.INCBIN "baserom.gba", 0x2B8F5C, 0x2C2F5C-0x2B8F5C

	.GLOBAL gUnknown_082C2F5C
gUnknown_082C2F5C:
	.INCBIN "baserom.gba", 0x2C2F5C, 0x2C32BC-0x2C2F5C

	.GLOBAL gUnknown_082C32BC
gUnknown_082C32BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082C32C4
gUnknown_082C32C4:
	.INCBIN "baserom.gba", 0x2C32C4, 0x2C36C4-0x2C32C4

	.GLOBAL gUnknown_082C36C4
gUnknown_082C36C4:
	.INCBIN "baserom.gba", 0x2C36C4, 0x2C37C0-0x2C36C4

	.GLOBAL gUnknown_082C37C0
gUnknown_082C37C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082C37C8
gUnknown_082C37C8:
	.INCBIN "baserom.gba", 0x2C37C8, 0x2C45C8-0x2C37C8

	.GLOBAL gUnknown_082C45C8
gUnknown_082C45C8:
	.INCBIN "baserom.gba", 0x2C45C8, 0x2C470C-0x2C45C8

	.GLOBAL gUnknown_082C470C
gUnknown_082C470C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082C4714
gUnknown_082C4714:
	.INCBIN "baserom.gba", 0x2C4714, 0x2C6B14-0x2C4714

	.GLOBAL gUnknown_082C6B14
gUnknown_082C6B14:
	.INCBIN "baserom.gba", 0x2C6B14, 0x2C6B38-0x2C6B14

	.GLOBAL gUnknown_082C6B38
gUnknown_082C6B38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C6B40
gUnknown_082C6B40:
	.INCBIN "baserom.gba", 0x2C6B40, 0x2C6C40-0x2C6B40

	.GLOBAL gUnknown_082C6C40
gUnknown_082C6C40:
	.INCBIN "baserom.gba", 0x2C6C40, 0x2C6C64-0x2C6C40

	.GLOBAL gUnknown_082C6C64
gUnknown_082C6C64:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C6C6C
gUnknown_082C6C6C:
	.INCBIN "baserom.gba", 0x2C6C6C, 0x2C6D6C-0x2C6C6C

	.GLOBAL gUnknown_082C6D6C
gUnknown_082C6D6C:
	.INCBIN "baserom.gba", 0x2C6D6C, 0x2C6D90-0x2C6D6C

	.GLOBAL gUnknown_082C6D90
gUnknown_082C6D90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C6D98
gUnknown_082C6D98:
	.INCBIN "baserom.gba", 0x2C6D98, 0x2C6E98-0x2C6D98

	.GLOBAL gUnknown_082C6E98
gUnknown_082C6E98:
	.INCBIN "baserom.gba", 0x2C6E98, 0x2C6EBC-0x2C6E98

	.GLOBAL gUnknown_082C6EBC
gUnknown_082C6EBC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C6EC4
gUnknown_082C6EC4:
	.INCBIN "baserom.gba", 0x2C6EC4, 0x2C72C4-0x2C6EC4

	.GLOBAL gUnknown_082C72C4
gUnknown_082C72C4:
	.INCBIN "baserom.gba", 0x2C72C4, 0x2C72E8-0x2C72C4

	.GLOBAL gUnknown_082C72E8
gUnknown_082C72E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C72F0
gUnknown_082C72F0:
	.INCBIN "baserom.gba", 0x2C72F0, 0x2C7330-0x2C72F0

	.GLOBAL gUnknown_082C7330
gUnknown_082C7330:
	.INCBIN "baserom.gba", 0x2C7330, 0x2C7354-0x2C7330

	.GLOBAL gUnknown_082C7354
gUnknown_082C7354:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C735C
gUnknown_082C735C:
	.INCBIN "baserom.gba", 0x2C735C, 0x2C775C-0x2C735C

	.GLOBAL gUnknown_082C775C
gUnknown_082C775C:
	.INCBIN "baserom.gba", 0x2C775C, 0x2C7780-0x2C775C

	.GLOBAL gUnknown_082C7780
gUnknown_082C7780:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C7788
gUnknown_082C7788:
	.INCBIN "baserom.gba", 0x2C7788, 0x2C7B88-0x2C7788

	.GLOBAL gUnknown_082C7B88
gUnknown_082C7B88:
	.INCBIN "baserom.gba", 0x2C7B88, 0x2C7BAC-0x2C7B88

	.GLOBAL gUnknown_082C7BAC
gUnknown_082C7BAC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C7BB4
gUnknown_082C7BB4:
	.INCBIN "baserom.gba", 0x2C7BB4, 0x2C7FB4-0x2C7BB4

	.GLOBAL gUnknown_082C7FB4
gUnknown_082C7FB4:
	.INCBIN "baserom.gba", 0x2C7FB4, 0x2C7FD8-0x2C7FB4

	.GLOBAL gUnknown_082C7FD8
gUnknown_082C7FD8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C7FE0
gUnknown_082C7FE0:
	.INCBIN "baserom.gba", 0x2C7FE0, 0x2C80E0-0x2C7FE0

	.GLOBAL gUnknown_082C80E0
gUnknown_082C80E0:
	.INCBIN "baserom.gba", 0x2C80E0, 0x2C8104-0x2C80E0

	.GLOBAL gUnknown_082C8104
gUnknown_082C8104:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C810C
gUnknown_082C810C:
	.INCBIN "baserom.gba", 0x2C810C, 0x2C820C-0x2C810C

	.GLOBAL gUnknown_082C820C
gUnknown_082C820C:
	.INCBIN "baserom.gba", 0x2C820C, 0x2C8230-0x2C820C

	.GLOBAL gUnknown_082C8230
gUnknown_082C8230:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C8238
gUnknown_082C8238:
	.INCBIN "baserom.gba", 0x2C8238, 0x2C82B8-0x2C8238

	.GLOBAL gUnknown_082C82B8
gUnknown_082C82B8:
	.INCBIN "baserom.gba", 0x2C82B8, 0x2C82DC-0x2C82B8

	.GLOBAL gUnknown_082C82DC
gUnknown_082C82DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082C82E4
gUnknown_082C82E4:
	.INCBIN "baserom.gba", 0x2C82E4, 0x2C84E4-0x2C82E4

	.GLOBAL gUnknown_082C84E4
gUnknown_082C84E4:
	.INCBIN "baserom.gba", 0x2C84E4, 0x2C8508-0x2C84E4

	.GLOBAL gUnknown_082C8508
gUnknown_082C8508:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082C8510
gUnknown_082C8510:
	.INCBIN "baserom.gba", 0x2C8510, 0x2C8710-0x2C8510

	.GLOBAL gUnknown_082C8710
gUnknown_082C8710:
	.INCBIN "baserom.gba", 0x2C8710, 0x2C8734-0x2C8710

	.GLOBAL gUnknown_082C8734
gUnknown_082C8734:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082C873C
gUnknown_082C873C:
	.INCBIN "baserom.gba", 0x2C873C, 0x2C973C-0x2C873C

	.GLOBAL gUnknown_082C973C
gUnknown_082C973C:
	.INCBIN "baserom.gba", 0x2C973C, 0x2C9760-0x2C973C

	.GLOBAL gUnknown_082C9760
gUnknown_082C9760:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082C9768
gUnknown_082C9768:
	.INCBIN "baserom.gba", 0x2C9768, 0x2CA768-0x2C9768

	.GLOBAL gUnknown_082CA768
gUnknown_082CA768:
	.INCBIN "baserom.gba", 0x2CA768, 0x2CA78C-0x2CA768

	.GLOBAL gUnknown_082CA78C
gUnknown_082CA78C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CA794
gUnknown_082CA794:
	.INCBIN "baserom.gba", 0x2CA794, 0x2CA994-0x2CA794

	.GLOBAL gUnknown_082CA994
gUnknown_082CA994:
	.INCBIN "baserom.gba", 0x2CA994, 0x2CA9B8-0x2CA994

	.GLOBAL gUnknown_082CA9B8
gUnknown_082CA9B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CA9C0
gUnknown_082CA9C0:
	.INCBIN "baserom.gba", 0x2CA9C0, 0x2CABC0-0x2CA9C0

	.GLOBAL gUnknown_082CABC0
gUnknown_082CABC0:
	.INCBIN "baserom.gba", 0x2CABC0, 0x2CABE4-0x2CABC0

	.GLOBAL gUnknown_082CABE4
gUnknown_082CABE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CABEC
gUnknown_082CABEC:
	.INCBIN "baserom.gba", 0x2CABEC, 0x2CACEC-0x2CABEC

	.GLOBAL gUnknown_082CACEC
gUnknown_082CACEC:
	.INCBIN "baserom.gba", 0x2CACEC, 0x2CAD10-0x2CACEC

	.GLOBAL gUnknown_082CAD10
gUnknown_082CAD10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CAD18
gUnknown_082CAD18:
	.INCBIN "baserom.gba", 0x2CAD18, 0x2CB118-0x2CAD18

	.GLOBAL gUnknown_082CB118
gUnknown_082CB118:
	.INCBIN "baserom.gba", 0x2CB118, 0x2CB13C-0x2CB118

	.GLOBAL gUnknown_082CB13C
gUnknown_082CB13C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CB144
gUnknown_082CB144:
	.INCBIN "baserom.gba", 0x2CB144, 0x2CB544-0x2CB144

	.GLOBAL gUnknown_082CB544
gUnknown_082CB544:
	.INCBIN "baserom.gba", 0x2CB544, 0x2CB568-0x2CB544

	.GLOBAL gUnknown_082CB568
gUnknown_082CB568:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CB570
gUnknown_082CB570:
	.INCBIN "baserom.gba", 0x2CB570, 0x2CB5B0-0x2CB570

	.GLOBAL gUnknown_082CB5B0
gUnknown_082CB5B0:
	.INCBIN "baserom.gba", 0x2CB5B0, 0x2CB5D4-0x2CB5B0

	.GLOBAL gUnknown_082CB5D4
gUnknown_082CB5D4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CB5DC
gUnknown_082CB5DC:
	.INCBIN "baserom.gba", 0x2CB5DC, 0x2CB6DC-0x2CB5DC

	.GLOBAL gUnknown_082CB6DC
gUnknown_082CB6DC:
	.INCBIN "baserom.gba", 0x2CB6DC, 0x2CB700-0x2CB6DC

	.GLOBAL gUnknown_082CB700
gUnknown_082CB700:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CB708
gUnknown_082CB708:
	.INCBIN "baserom.gba", 0x2CB708, 0x2CB808-0x2CB708

	.GLOBAL gUnknown_082CB808
gUnknown_082CB808:
	.INCBIN "baserom.gba", 0x2CB808, 0x2CB82C-0x2CB808

	.GLOBAL gUnknown_082CB82C
gUnknown_082CB82C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CB834
gUnknown_082CB834:
	.INCBIN "baserom.gba", 0x2CB834, 0x2CB934-0x2CB834

	.GLOBAL gUnknown_082CB934
gUnknown_082CB934:
	.INCBIN "baserom.gba", 0x2CB934, 0x2CB958-0x2CB934

	.GLOBAL gUnknown_082CB958
gUnknown_082CB958:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CB960
gUnknown_082CB960:
	.INCBIN "baserom.gba", 0x2CB960, 0x2CBB60-0x2CB960

	.GLOBAL gUnknown_082CBB60
gUnknown_082CBB60:
	.INCBIN "baserom.gba", 0x2CBB60, 0x2CBB84-0x2CBB60

	.GLOBAL gUnknown_082CBB84
gUnknown_082CBB84:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CBB8C
gUnknown_082CBB8C:
	.INCBIN "baserom.gba", 0x2CBB8C, 0x2CBD8C-0x2CBB8C

	.GLOBAL gUnknown_082CBD8C
gUnknown_082CBD8C:
	.INCBIN "baserom.gba", 0x2CBD8C, 0x2CBDB0-0x2CBD8C

	.GLOBAL gUnknown_082CBDB0
gUnknown_082CBDB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CBDB8
gUnknown_082CBDB8:
	.INCBIN "baserom.gba", 0x2CBDB8, 0x2CBFB8-0x2CBDB8

	.GLOBAL gUnknown_082CBFB8
gUnknown_082CBFB8:
	.INCBIN "baserom.gba", 0x2CBFB8, 0x2CBFDC-0x2CBFB8

	.GLOBAL gUnknown_082CBFDC
gUnknown_082CBFDC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CBFE4
gUnknown_082CBFE4:
	.INCBIN "baserom.gba", 0x2CBFE4, 0x2CC064-0x2CBFE4

	.GLOBAL gUnknown_082CC064
gUnknown_082CC064:
	.INCBIN "baserom.gba", 0x2CC064, 0x2CC088-0x2CC064

	.GLOBAL gUnknown_082CC088
gUnknown_082CC088:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CC090
gUnknown_082CC090:
	.INCBIN "baserom.gba", 0x2CC090, 0x2CC490-0x2CC090

	.GLOBAL gUnknown_082CC490
gUnknown_082CC490:
	.INCBIN "baserom.gba", 0x2CC490, 0x2CC4B4-0x2CC490

	.GLOBAL gUnknown_082CC4B4
gUnknown_082CC4B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CC4BC
gUnknown_082CC4BC:
	.INCBIN "baserom.gba", 0x2CC4BC, 0x2CC8BC-0x2CC4BC

	.GLOBAL gUnknown_082CC8BC
gUnknown_082CC8BC:
	.INCBIN "baserom.gba", 0x2CC8BC, 0x2CC8E0-0x2CC8BC

	.GLOBAL gUnknown_082CC8E0
gUnknown_082CC8E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CC8E8
gUnknown_082CC8E8:
	.INCBIN "baserom.gba", 0x2CC8E8, 0x2CD8E8-0x2CC8E8

	.GLOBAL gUnknown_082CD8E8
gUnknown_082CD8E8:
	.INCBIN "baserom.gba", 0x2CD8E8, 0x2CD90C-0x2CD8E8

	.GLOBAL gUnknown_082CD90C
gUnknown_082CD90C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CD914
gUnknown_082CD914:
	.INCBIN "baserom.gba", 0x2CD914, 0x2CDA14-0x2CD914

	.GLOBAL gUnknown_082CDA14
gUnknown_082CDA14:
	.INCBIN "baserom.gba", 0x2CDA14, 0x2CDA38-0x2CDA14

	.GLOBAL gUnknown_082CDA38
gUnknown_082CDA38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CDA40
gUnknown_082CDA40:
	.INCBIN "baserom.gba", 0x2CDA40, 0x2CDB40-0x2CDA40

	.GLOBAL gUnknown_082CDB40
gUnknown_082CDB40:
	.INCBIN "baserom.gba", 0x2CDB40, 0x2CDB64-0x2CDB40

	.GLOBAL gUnknown_082CDB64
gUnknown_082CDB64:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CDB6C
gUnknown_082CDB6C:
	.INCBIN "baserom.gba", 0x2CDB6C, 0x2CDC6C-0x2CDB6C

	.GLOBAL gUnknown_082CDC6C
gUnknown_082CDC6C:
	.INCBIN "baserom.gba", 0x2CDC6C, 0x2CDC90-0x2CDC6C

	.GLOBAL gUnknown_082CDC90
gUnknown_082CDC90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CDC98
gUnknown_082CDC98:
	.INCBIN "baserom.gba", 0x2CDC98, 0x2CDD98-0x2CDC98

	.GLOBAL gUnknown_082CDD98
gUnknown_082CDD98:
	.INCBIN "baserom.gba", 0x2CDD98, 0x2CDDBC-0x2CDD98

	.GLOBAL gUnknown_082CDDBC
gUnknown_082CDDBC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CDDC4
gUnknown_082CDDC4:
	.INCBIN "baserom.gba", 0x2CDDC4, 0x2CDEC4-0x2CDDC4

	.GLOBAL gUnknown_082CDEC4
gUnknown_082CDEC4:
	.INCBIN "baserom.gba", 0x2CDEC4, 0x2CDEE8-0x2CDEC4

	.GLOBAL gUnknown_082CDEE8
gUnknown_082CDEE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CDEF0
gUnknown_082CDEF0:
	.INCBIN "baserom.gba", 0x2CDEF0, 0x2CE2F0-0x2CDEF0

	.GLOBAL gUnknown_082CE2F0
gUnknown_082CE2F0:
	.INCBIN "baserom.gba", 0x2CE2F0, 0x2CE314-0x2CE2F0

	.GLOBAL gUnknown_082CE314
gUnknown_082CE314:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CE31C
gUnknown_082CE31C:
	.INCBIN "baserom.gba", 0x2CE31C, 0x2CE71C-0x2CE31C

	.GLOBAL gUnknown_082CE71C
gUnknown_082CE71C:
	.INCBIN "baserom.gba", 0x2CE71C, 0x2CE740-0x2CE71C

	.GLOBAL gUnknown_082CE740
gUnknown_082CE740:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CE748
gUnknown_082CE748:
	.INCBIN "baserom.gba", 0x2CE748, 0x2CE7C8-0x2CE748

	.GLOBAL gUnknown_082CE7C8
gUnknown_082CE7C8:
	.INCBIN "baserom.gba", 0x2CE7C8, 0x2CE7EC-0x2CE7C8

	.GLOBAL gUnknown_082CE7EC
gUnknown_082CE7EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082CE7F4
gUnknown_082CE7F4:
	.INCBIN "baserom.gba", 0x2CE7F4, 0x2CE8F4-0x2CE7F4

	.GLOBAL gUnknown_082CE8F4
gUnknown_082CE8F4:
	.INCBIN "baserom.gba", 0x2CE8F4, 0x2CE918-0x2CE8F4

	.GLOBAL gUnknown_082CE918
gUnknown_082CE918:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CE920
gUnknown_082CE920:
	.INCBIN "baserom.gba", 0x2CE920, 0x2CE9A0-0x2CE920

	.GLOBAL gUnknown_082CE9A0
gUnknown_082CE9A0:
	.INCBIN "baserom.gba", 0x2CE9A0, 0x2CE9C4-0x2CE9A0

	.GLOBAL gUnknown_082CE9C4
gUnknown_082CE9C4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CE9CC
gUnknown_082CE9CC:
	.INCBIN "baserom.gba", 0x2CE9CC, 0x2CEDCC-0x2CE9CC

	.GLOBAL gUnknown_082CEDCC
gUnknown_082CEDCC:
	.INCBIN "baserom.gba", 0x2CEDCC, 0x2CEDF0-0x2CEDCC

	.GLOBAL gUnknown_082CEDF0
gUnknown_082CEDF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CEDF8
gUnknown_082CEDF8:
	.INCBIN "baserom.gba", 0x2CEDF8, 0x2CF1F8-0x2CEDF8

	.GLOBAL gUnknown_082CF1F8
gUnknown_082CF1F8:
	.INCBIN "baserom.gba", 0x2CF1F8, 0x2CF21C-0x2CF1F8

	.GLOBAL gUnknown_082CF21C
gUnknown_082CF21C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CF224
gUnknown_082CF224:
	.INCBIN "baserom.gba", 0x2CF224, 0x2CFA24-0x2CF224

	.GLOBAL gUnknown_082CFA24
gUnknown_082CFA24:
	.INCBIN "baserom.gba", 0x2CFA24, 0x2CFA48-0x2CFA24

	.GLOBAL gUnknown_082CFA48
gUnknown_082CFA48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082CFA50
gUnknown_082CFA50:
	.INCBIN "baserom.gba", 0x2CFA50, 0x2D0A50-0x2CFA50

	.GLOBAL gUnknown_082D0A50
gUnknown_082D0A50:
	.INCBIN "baserom.gba", 0x2D0A50, 0x2D0A74-0x2D0A50

	.GLOBAL gUnknown_082D0A74
gUnknown_082D0A74:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D0A7C
gUnknown_082D0A7C:
	.INCBIN "baserom.gba", 0x2D0A7C, 0x2D0B7C-0x2D0A7C

	.GLOBAL gUnknown_082D0B7C
gUnknown_082D0B7C:
	.INCBIN "baserom.gba", 0x2D0B7C, 0x2D0BA0-0x2D0B7C

	.GLOBAL gUnknown_082D0BA0
gUnknown_082D0BA0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D0BA8
gUnknown_082D0BA8:
	.INCBIN "baserom.gba", 0x2D0BA8, 0x2D0CA8-0x2D0BA8

	.GLOBAL gUnknown_082D0CA8
gUnknown_082D0CA8:
	.INCBIN "baserom.gba", 0x2D0CA8, 0x2D0CCC-0x2D0CA8

	.GLOBAL gUnknown_082D0CCC
gUnknown_082D0CCC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D0CD4
gUnknown_082D0CD4:
	.INCBIN "baserom.gba", 0x2D0CD4, 0x2D0DD4-0x2D0CD4

	.GLOBAL gUnknown_082D0DD4
gUnknown_082D0DD4:
	.INCBIN "baserom.gba", 0x2D0DD4, 0x2D0DF8-0x2D0DD4

	.GLOBAL gUnknown_082D0DF8
gUnknown_082D0DF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D0E00
gUnknown_082D0E00:
	.INCBIN "baserom.gba", 0x2D0E00, 0x2D1200-0x2D0E00

	.GLOBAL gUnknown_082D1200
gUnknown_082D1200:
	.INCBIN "baserom.gba", 0x2D1200, 0x2D1224-0x2D1200

	.GLOBAL gUnknown_082D1224
gUnknown_082D1224:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D122C
gUnknown_082D122C:
	.INCBIN "baserom.gba", 0x2D122C, 0x2D132C-0x2D122C

	.GLOBAL gUnknown_082D132C
gUnknown_082D132C:
	.INCBIN "baserom.gba", 0x2D132C, 0x2D1350-0x2D132C

	.GLOBAL gUnknown_082D1350
gUnknown_082D1350:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D1358
gUnknown_082D1358:
	.INCBIN "baserom.gba", 0x2D1358, 0x2D13D8-0x2D1358

	.GLOBAL gUnknown_082D13D8
gUnknown_082D13D8:
	.INCBIN "baserom.gba", 0x2D13D8, 0x2D13FC-0x2D13D8

	.GLOBAL gUnknown_082D13FC
gUnknown_082D13FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D1404
gUnknown_082D1404:
	.INCBIN "baserom.gba", 0x2D1404, 0x2D2404-0x2D1404

	.GLOBAL gUnknown_082D2404
gUnknown_082D2404:
	.INCBIN "baserom.gba", 0x2D2404, 0x2D2428-0x2D2404

	.GLOBAL gUnknown_082D2428
gUnknown_082D2428:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D2430
gUnknown_082D2430:
	.INCBIN "baserom.gba", 0x2D2430, 0x2D3430-0x2D2430

	.GLOBAL gUnknown_082D3430
gUnknown_082D3430:
	.INCBIN "baserom.gba", 0x2D3430, 0x2D3454-0x2D3430

	.GLOBAL gUnknown_082D3454
gUnknown_082D3454:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D345C
gUnknown_082D345C:
	.INCBIN "baserom.gba", 0x2D345C, 0x2D355C-0x2D345C

	.GLOBAL gUnknown_082D355C
gUnknown_082D355C:
	.INCBIN "baserom.gba", 0x2D355C, 0x2D3580-0x2D355C

	.GLOBAL gUnknown_082D3580
gUnknown_082D3580:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D3588
gUnknown_082D3588:
	.INCBIN "baserom.gba", 0x2D3588, 0x2D3688-0x2D3588

	.GLOBAL gUnknown_082D3688
gUnknown_082D3688:
	.INCBIN "baserom.gba", 0x2D3688, 0x2D36AC-0x2D3688

	.GLOBAL gUnknown_082D36AC
gUnknown_082D36AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D36B4
gUnknown_082D36B4:
	.INCBIN "baserom.gba", 0x2D36B4, 0x2D37B4-0x2D36B4

	.GLOBAL gUnknown_082D37B4
gUnknown_082D37B4:
	.INCBIN "baserom.gba", 0x2D37B4, 0x2D37D8-0x2D37B4

	.GLOBAL gUnknown_082D37D8
gUnknown_082D37D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D37E0
gUnknown_082D37E0:
	.INCBIN "baserom.gba", 0x2D37E0, 0x2D38E0-0x2D37E0

	.GLOBAL gUnknown_082D38E0
gUnknown_082D38E0:
	.INCBIN "baserom.gba", 0x2D38E0, 0x2D3904-0x2D38E0

	.GLOBAL gUnknown_082D3904
gUnknown_082D3904:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D390C
gUnknown_082D390C:
	.INCBIN "baserom.gba", 0x2D390C, 0x2D3D0C-0x2D390C

	.GLOBAL gUnknown_082D3D0C
gUnknown_082D3D0C:
	.INCBIN "baserom.gba", 0x2D3D0C, 0x2D3D30-0x2D3D0C

	.GLOBAL gUnknown_082D3D30
gUnknown_082D3D30:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D3D38
gUnknown_082D3D38:
	.INCBIN "baserom.gba", 0x2D3D38, 0x2D4D38-0x2D3D38

	.GLOBAL gUnknown_082D4D38
gUnknown_082D4D38:
	.INCBIN "baserom.gba", 0x2D4D38, 0x2D4D5C-0x2D4D38

	.GLOBAL gUnknown_082D4D5C
gUnknown_082D4D5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D4D64
gUnknown_082D4D64:
	.INCBIN "baserom.gba", 0x2D4D64, 0x2D5D64-0x2D4D64

	.GLOBAL gUnknown_082D5D64
gUnknown_082D5D64:
	.INCBIN "baserom.gba", 0x2D5D64, 0x2D5D88-0x2D5D64

	.GLOBAL gUnknown_082D5D88
gUnknown_082D5D88:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D5D90
gUnknown_082D5D90:
	.INCBIN "baserom.gba", 0x2D5D90, 0x2D6D90-0x2D5D90

	.GLOBAL gUnknown_082D6D90
gUnknown_082D6D90:
	.INCBIN "baserom.gba", 0x2D6D90, 0x2D6DB4-0x2D6D90

	.GLOBAL gUnknown_082D6DB4
gUnknown_082D6DB4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D6DBC
gUnknown_082D6DBC:
	.INCBIN "baserom.gba", 0x2D6DBC, 0x2D6EBC-0x2D6DBC

	.GLOBAL gUnknown_082D6EBC
gUnknown_082D6EBC:
	.INCBIN "baserom.gba", 0x2D6EBC, 0x2D6EE0-0x2D6EBC

	.GLOBAL gUnknown_082D6EE0
gUnknown_082D6EE0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D6EE8
gUnknown_082D6EE8:
	.INCBIN "baserom.gba", 0x2D6EE8, 0x2D6FE8-0x2D6EE8

	.GLOBAL gUnknown_082D6FE8
gUnknown_082D6FE8:
	.INCBIN "baserom.gba", 0x2D6FE8, 0x2D700C-0x2D6FE8

	.GLOBAL gUnknown_082D700C
gUnknown_082D700C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D7014
gUnknown_082D7014:
	.INCBIN "baserom.gba", 0x2D7014, 0x2D7114-0x2D7014

	.GLOBAL gUnknown_082D7114
gUnknown_082D7114:
	.INCBIN "baserom.gba", 0x2D7114, 0x2D7138-0x2D7114

	.GLOBAL gUnknown_082D7138
gUnknown_082D7138:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D7140
gUnknown_082D7140:
	.INCBIN "baserom.gba", 0x2D7140, 0x2D7240-0x2D7140

	.GLOBAL gUnknown_082D7240
gUnknown_082D7240:
	.INCBIN "baserom.gba", 0x2D7240, 0x2D7264-0x2D7240

	.GLOBAL gUnknown_082D7264
gUnknown_082D7264:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D726C
gUnknown_082D726C:
	.INCBIN "baserom.gba", 0x2D726C, 0x2D766C-0x2D726C

	.GLOBAL gUnknown_082D766C
gUnknown_082D766C:
	.INCBIN "baserom.gba", 0x2D766C, 0x2D7690-0x2D766C

	.GLOBAL gUnknown_082D7690
gUnknown_082D7690:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082D7698
gUnknown_082D7698:
	.INCBIN "baserom.gba", 0x2D7698, 0x2D7898-0x2D7698

	.GLOBAL gUnknown_082D7898
gUnknown_082D7898:
	.INCBIN "baserom.gba", 0x2D7898, 0x2D78BC-0x2D7898

	.GLOBAL gUnknown_082D78BC
gUnknown_082D78BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D78C4
gUnknown_082D78C4:
	.INCBIN "baserom.gba", 0x2D78C4, 0x2D79C4-0x2D78C4

	.GLOBAL gUnknown_082D79C4
gUnknown_082D79C4:
	.INCBIN "baserom.gba", 0x2D79C4, 0x2D79E8-0x2D79C4

	.GLOBAL gUnknown_082D79E8
gUnknown_082D79E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D79F0
gUnknown_082D79F0:
	.INCBIN "baserom.gba", 0x2D79F0, 0x2D89F0-0x2D79F0

	.GLOBAL gUnknown_082D89F0
gUnknown_082D89F0:
	.INCBIN "baserom.gba", 0x2D89F0, 0x2D8A14-0x2D89F0

	.GLOBAL gUnknown_082D8A14
gUnknown_082D8A14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D8A1C
gUnknown_082D8A1C:
	.INCBIN "baserom.gba", 0x2D8A1C, 0x2D9A1C-0x2D8A1C

	.GLOBAL gUnknown_082D9A1C
gUnknown_082D9A1C:
	.INCBIN "baserom.gba", 0x2D9A1C, 0x2D9A40-0x2D9A1C

	.GLOBAL gUnknown_082D9A40
gUnknown_082D9A40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082D9A48
gUnknown_082D9A48:
	.INCBIN "baserom.gba", 0x2D9A48, 0x2DAA48-0x2D9A48

	.GLOBAL gUnknown_082DAA48
gUnknown_082DAA48:
	.INCBIN "baserom.gba", 0x2DAA48, 0x2DAA6C-0x2DAA48

	.GLOBAL gUnknown_082DAA6C
gUnknown_082DAA6C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DAA74
gUnknown_082DAA74:
	.INCBIN "baserom.gba", 0x2DAA74, 0x2DAE74-0x2DAA74

	.GLOBAL gUnknown_082DAE74
gUnknown_082DAE74:
	.INCBIN "baserom.gba", 0x2DAE74, 0x2DAE98-0x2DAE74

	.GLOBAL gUnknown_082DAE98
gUnknown_082DAE98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DAEA0
gUnknown_082DAEA0:
	.INCBIN "baserom.gba", 0x2DAEA0, 0x2DB2A0-0x2DAEA0

	.GLOBAL gUnknown_082DB2A0
gUnknown_082DB2A0:
	.INCBIN "baserom.gba", 0x2DB2A0, 0x2DB2C4-0x2DB2A0

	.GLOBAL gUnknown_082DB2C4
gUnknown_082DB2C4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DB2CC
gUnknown_082DB2CC:
	.INCBIN "baserom.gba", 0x2DB2CC, 0x2DB3CC-0x2DB2CC

	.GLOBAL gUnknown_082DB3CC
gUnknown_082DB3CC:
	.INCBIN "baserom.gba", 0x2DB3CC, 0x2DB3F0-0x2DB3CC

	.GLOBAL gUnknown_082DB3F0
gUnknown_082DB3F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DB3F8
gUnknown_082DB3F8:
	.INCBIN "baserom.gba", 0x2DB3F8, 0x2DB4F8-0x2DB3F8

	.GLOBAL gUnknown_082DB4F8
gUnknown_082DB4F8:
	.INCBIN "baserom.gba", 0x2DB4F8, 0x2DB51C-0x2DB4F8

	.GLOBAL gUnknown_082DB51C
gUnknown_082DB51C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DB524
gUnknown_082DB524:
	.INCBIN "baserom.gba", 0x2DB524, 0x2DB624-0x2DB524

	.GLOBAL gUnknown_082DB624
gUnknown_082DB624:
	.INCBIN "baserom.gba", 0x2DB624, 0x2DB648-0x2DB624

	.GLOBAL gUnknown_082DB648
gUnknown_082DB648:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DB650
gUnknown_082DB650:
	.INCBIN "baserom.gba", 0x2DB650, 0x2DB750-0x2DB650

	.GLOBAL gUnknown_082DB750
gUnknown_082DB750:
	.INCBIN "baserom.gba", 0x2DB750, 0x2DB774-0x2DB750

	.GLOBAL gUnknown_082DB774
gUnknown_082DB774:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DB77C
gUnknown_082DB77C:
	.INCBIN "baserom.gba", 0x2DB77C, 0x2DB97C-0x2DB77C

	.GLOBAL gUnknown_082DB97C
gUnknown_082DB97C:
	.INCBIN "baserom.gba", 0x2DB97C, 0x2DB9A0-0x2DB97C

	.GLOBAL gUnknown_082DB9A0
gUnknown_082DB9A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DB9A8
gUnknown_082DB9A8:
	.INCBIN "baserom.gba", 0x2DB9A8, 0x2DBBA8-0x2DB9A8

	.GLOBAL gUnknown_082DBBA8
gUnknown_082DBBA8:
	.INCBIN "baserom.gba", 0x2DBBA8, 0x2DBBCC-0x2DBBA8

	.GLOBAL gUnknown_082DBBCC
gUnknown_082DBBCC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DBBD4
gUnknown_082DBBD4:
	.INCBIN "baserom.gba", 0x2DBBD4, 0x2DBCD4-0x2DBBD4

	.GLOBAL gUnknown_082DBCD4
gUnknown_082DBCD4:
	.INCBIN "baserom.gba", 0x2DBCD4, 0x2DBCF8-0x2DBCD4

	.GLOBAL gUnknown_082DBCF8
gUnknown_082DBCF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DBD00
gUnknown_082DBD00:
	.INCBIN "baserom.gba", 0x2DBD00, 0x2DC500-0x2DBD00

	.GLOBAL gUnknown_082DC500
gUnknown_082DC500:
	.INCBIN "baserom.gba", 0x2DC500, 0x2DC524-0x2DC500

	.GLOBAL gUnknown_082DC524
gUnknown_082DC524:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DC52C
gUnknown_082DC52C:
	.INCBIN "baserom.gba", 0x2DC52C, 0x2DCD2C-0x2DC52C

	.GLOBAL gUnknown_082DCD2C
gUnknown_082DCD2C:
	.INCBIN "baserom.gba", 0x2DCD2C, 0x2DCD50-0x2DCD2C

	.GLOBAL gUnknown_082DCD50
gUnknown_082DCD50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DCD58
gUnknown_082DCD58:
	.INCBIN "baserom.gba", 0x2DCD58, 0x2DCDD8-0x2DCD58

	.GLOBAL gUnknown_082DCDD8
gUnknown_082DCDD8:
	.INCBIN "baserom.gba", 0x2DCDD8, 0x2DCDFC-0x2DCDD8

	.GLOBAL gUnknown_082DCDFC
gUnknown_082DCDFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DCE04
gUnknown_082DCE04:
	.INCBIN "baserom.gba", 0x2DCE04, 0x2DD004-0x2DCE04

	.GLOBAL gUnknown_082DD004
gUnknown_082DD004:
	.INCBIN "baserom.gba", 0x2DD004, 0x2DD028-0x2DD004

	.GLOBAL gUnknown_082DD028
gUnknown_082DD028:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DD030
gUnknown_082DD030:
	.INCBIN "baserom.gba", 0x2DD030, 0x2DD230-0x2DD030

	.GLOBAL gUnknown_082DD230
gUnknown_082DD230:
	.INCBIN "baserom.gba", 0x2DD230, 0x2DD254-0x2DD230

	.GLOBAL gUnknown_082DD254
gUnknown_082DD254:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DD25C
gUnknown_082DD25C:
	.INCBIN "baserom.gba", 0x2DD25C, 0x2DD45C-0x2DD25C

	.GLOBAL gUnknown_082DD45C
gUnknown_082DD45C:
	.INCBIN "baserom.gba", 0x2DD45C, 0x2DD480-0x2DD45C

	.GLOBAL gUnknown_082DD480
gUnknown_082DD480:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DD488
gUnknown_082DD488:
	.INCBIN "baserom.gba", 0x2DD488, 0x2DD688-0x2DD488

	.GLOBAL gUnknown_082DD688
gUnknown_082DD688:
	.INCBIN "baserom.gba", 0x2DD688, 0x2DD6AC-0x2DD688

	.GLOBAL gUnknown_082DD6AC
gUnknown_082DD6AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DD6B4
gUnknown_082DD6B4:
	.INCBIN "baserom.gba", 0x2DD6B4, 0x2DDAB4-0x2DD6B4

	.GLOBAL gUnknown_082DDAB4
gUnknown_082DDAB4:
	.INCBIN "baserom.gba", 0x2DDAB4, 0x2DDAD8-0x2DDAB4

	.GLOBAL gUnknown_082DDAD8
gUnknown_082DDAD8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DDAE0
gUnknown_082DDAE0:
	.INCBIN "baserom.gba", 0x2DDAE0, 0x2DDEE0-0x2DDAE0

	.GLOBAL gUnknown_082DDEE0
gUnknown_082DDEE0:
	.INCBIN "baserom.gba", 0x2DDEE0, 0x2DDF04-0x2DDEE0

	.GLOBAL gUnknown_082DDF04
gUnknown_082DDF04:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DDF0C
gUnknown_082DDF0C:
	.INCBIN "baserom.gba", 0x2DDF0C, 0x2DE30C-0x2DDF0C

	.GLOBAL gUnknown_082DE30C
gUnknown_082DE30C:
	.INCBIN "baserom.gba", 0x2DE30C, 0x2DE330-0x2DE30C

	.GLOBAL gUnknown_082DE330
gUnknown_082DE330:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DE338
gUnknown_082DE338:
	.INCBIN "baserom.gba", 0x2DE338, 0x2DE438-0x2DE338

	.GLOBAL gUnknown_082DE438
gUnknown_082DE438:
	.INCBIN "baserom.gba", 0x2DE438, 0x2DE45C-0x2DE438

	.GLOBAL gUnknown_082DE45C
gUnknown_082DE45C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DE464
gUnknown_082DE464:
	.INCBIN "baserom.gba", 0x2DE464, 0x2DE564-0x2DE464

	.GLOBAL gUnknown_082DE564
gUnknown_082DE564:
	.INCBIN "baserom.gba", 0x2DE564, 0x2DE588-0x2DE564

	.GLOBAL gUnknown_082DE588
gUnknown_082DE588:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DE590
gUnknown_082DE590:
	.INCBIN "baserom.gba", 0x2DE590, 0x2DE690-0x2DE590

	.GLOBAL gUnknown_082DE690
gUnknown_082DE690:
	.INCBIN "baserom.gba", 0x2DE690, 0x2DE6B4-0x2DE690

	.GLOBAL gUnknown_082DE6B4
gUnknown_082DE6B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DE6BC
gUnknown_082DE6BC:
	.INCBIN "baserom.gba", 0x2DE6BC, 0x2DE7BC-0x2DE6BC

	.GLOBAL gUnknown_082DE7BC
gUnknown_082DE7BC:
	.INCBIN "baserom.gba", 0x2DE7BC, 0x2DE7E0-0x2DE7BC

	.GLOBAL gUnknown_082DE7E0
gUnknown_082DE7E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DE7E8
gUnknown_082DE7E8:
	.INCBIN "baserom.gba", 0x2DE7E8, 0x2DEBE8-0x2DE7E8

	.GLOBAL gUnknown_082DEBE8
gUnknown_082DEBE8:
	.INCBIN "baserom.gba", 0x2DEBE8, 0x2DEC0C-0x2DEBE8

	.GLOBAL gUnknown_082DEC0C
gUnknown_082DEC0C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082DEC14
gUnknown_082DEC14:
	.INCBIN "baserom.gba", 0x2DEC14, 0x2DF014-0x2DEC14

	.GLOBAL gUnknown_082DF014
gUnknown_082DF014:
	.INCBIN "baserom.gba", 0x2DF014, 0x2DF038-0x2DF014

	.GLOBAL gUnknown_082DF038
gUnknown_082DF038:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DF040
gUnknown_082DF040:
	.INCBIN "baserom.gba", 0x2DF040, 0x2DF440-0x2DF040

	.GLOBAL gUnknown_082DF440
gUnknown_082DF440:
	.INCBIN "baserom.gba", 0x2DF440, 0x2DF464-0x2DF440

	.GLOBAL gUnknown_082DF464
gUnknown_082DF464:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082DF46C
gUnknown_082DF46C:
	.INCBIN "baserom.gba", 0x2DF46C, 0x2E046C-0x2DF46C

	.GLOBAL gUnknown_082E046C
gUnknown_082E046C:
	.INCBIN "baserom.gba", 0x2E046C, 0x2E0490-0x2E046C

	.GLOBAL gUnknown_082E0490
gUnknown_082E0490:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E0498
gUnknown_082E0498:
	.INCBIN "baserom.gba", 0x2E0498, 0x2E1498-0x2E0498

	.GLOBAL gUnknown_082E1498
gUnknown_082E1498:
	.INCBIN "baserom.gba", 0x2E1498, 0x2E14BC-0x2E1498

	.GLOBAL gUnknown_082E14BC
gUnknown_082E14BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E14C4
gUnknown_082E14C4:
	.INCBIN "baserom.gba", 0x2E14C4, 0x2E1CC4-0x2E14C4

	.GLOBAL gUnknown_082E1CC4
gUnknown_082E1CC4:
	.INCBIN "baserom.gba", 0x2E1CC4, 0x2E1CE8-0x2E1CC4

	.GLOBAL gUnknown_082E1CE8
gUnknown_082E1CE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_082E1CF0
gUnknown_082E1CF0:
	.INCBIN "baserom.gba", 0x2E1CF0, 0x2E20F0-0x2E1CF0

	.GLOBAL gUnknown_082E20F0
gUnknown_082E20F0:
	.INCBIN "baserom.gba", 0x2E20F0, 0x2E2114-0x2E20F0

	.GLOBAL gUnknown_082E2114
gUnknown_082E2114:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E211C
gUnknown_082E211C:
	.INCBIN "baserom.gba", 0x2E211C, 0x2E291C-0x2E211C

	.GLOBAL gUnknown_082E291C
gUnknown_082E291C:
	.INCBIN "baserom.gba", 0x2E291C, 0x2E2940-0x2E291C

	.GLOBAL gUnknown_082E2940
gUnknown_082E2940:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E2948
gUnknown_082E2948:
	.INCBIN "baserom.gba", 0x2E2948, 0x2E29C8-0x2E2948

	.GLOBAL gUnknown_082E29C8
gUnknown_082E29C8:
	.INCBIN "baserom.gba", 0x2E29C8, 0x2E29EC-0x2E29C8

	.GLOBAL gUnknown_082E29EC
gUnknown_082E29EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E29F4
gUnknown_082E29F4:
	.INCBIN "baserom.gba", 0x2E29F4, 0x2E2DF4-0x2E29F4

	.GLOBAL gUnknown_082E2DF4
gUnknown_082E2DF4:
	.INCBIN "baserom.gba", 0x2E2DF4, 0x2E2E18-0x2E2DF4

	.GLOBAL gUnknown_082E2E18
gUnknown_082E2E18:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E2E20
gUnknown_082E2E20:
	.INCBIN "baserom.gba", 0x2E2E20, 0x2E2F20-0x2E2E20

	.GLOBAL gUnknown_082E2F20
gUnknown_082E2F20:
	.INCBIN "baserom.gba", 0x2E2F20, 0x2E2F44-0x2E2F20

	.GLOBAL gUnknown_082E2F44
gUnknown_082E2F44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E2F4C
gUnknown_082E2F4C:
	.INCBIN "baserom.gba", 0x2E2F4C, 0x2E304C-0x2E2F4C

	.GLOBAL gUnknown_082E304C
gUnknown_082E304C:
	.INCBIN "baserom.gba", 0x2E304C, 0x2E3070-0x2E304C

	.GLOBAL gUnknown_082E3070
gUnknown_082E3070:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E3078
gUnknown_082E3078:
	.INCBIN "baserom.gba", 0x2E3078, 0x2E3278-0x2E3078

	.GLOBAL gUnknown_082E3278
gUnknown_082E3278:
	.INCBIN "baserom.gba", 0x2E3278, 0x2E329C-0x2E3278

	.GLOBAL gUnknown_082E329C
gUnknown_082E329C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E32A4
gUnknown_082E32A4:
	.INCBIN "baserom.gba", 0x2E32A4, 0x2E33A4-0x2E32A4

	.GLOBAL gUnknown_082E33A4
gUnknown_082E33A4:
	.INCBIN "baserom.gba", 0x2E33A4, 0x2E33C8-0x2E33A4

	.GLOBAL gUnknown_082E33C8
gUnknown_082E33C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E33D0
gUnknown_082E33D0:
	.INCBIN "baserom.gba", 0x2E33D0, 0x2E3410-0x2E33D0

	.GLOBAL gUnknown_082E3410
gUnknown_082E3410:
	.INCBIN "baserom.gba", 0x2E3410, 0x2E3434-0x2E3410

	.GLOBAL gUnknown_082E3434
gUnknown_082E3434:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E343C
gUnknown_082E343C:
	.INCBIN "baserom.gba", 0x2E343C, 0x2E363C-0x2E343C

	.GLOBAL gUnknown_082E363C
gUnknown_082E363C:
	.INCBIN "baserom.gba", 0x2E363C, 0x2E3660-0x2E363C

	.GLOBAL gUnknown_082E3660
gUnknown_082E3660:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E3668
gUnknown_082E3668:
	.INCBIN "baserom.gba", 0x2E3668, 0x2E3868-0x2E3668

	.GLOBAL gUnknown_082E3868
gUnknown_082E3868:
	.INCBIN "baserom.gba", 0x2E3868, 0x2E388C-0x2E3868

	.GLOBAL gUnknown_082E388C
gUnknown_082E388C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E3894
gUnknown_082E3894:
	.INCBIN "baserom.gba", 0x2E3894, 0x2E3A94-0x2E3894

	.GLOBAL gUnknown_082E3A94
gUnknown_082E3A94:
	.INCBIN "baserom.gba", 0x2E3A94, 0x2E3AB8-0x2E3A94

	.GLOBAL gUnknown_082E3AB8
gUnknown_082E3AB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E3AC0
gUnknown_082E3AC0:
	.INCBIN "baserom.gba", 0x2E3AC0, 0x2E3CC0-0x2E3AC0

	.GLOBAL gUnknown_082E3CC0
gUnknown_082E3CC0:
	.INCBIN "baserom.gba", 0x2E3CC0, 0x2E3CE4-0x2E3CC0

	.GLOBAL gUnknown_082E3CE4
gUnknown_082E3CE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E3CEC
gUnknown_082E3CEC:
	.INCBIN "baserom.gba", 0x2E3CEC, 0x2E3EEC-0x2E3CEC

	.GLOBAL gUnknown_082E3EEC
gUnknown_082E3EEC:
	.INCBIN "baserom.gba", 0x2E3EEC, 0x2E3F10-0x2E3EEC

	.GLOBAL gUnknown_082E3F10
gUnknown_082E3F10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E3F18
gUnknown_082E3F18:
	.INCBIN "baserom.gba", 0x2E3F18, 0x2E4018-0x2E3F18

	.GLOBAL gUnknown_082E4018
gUnknown_082E4018:
	.INCBIN "baserom.gba", 0x2E4018, 0x2E403C-0x2E4018

	.GLOBAL gUnknown_082E403C
gUnknown_082E403C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E4044
gUnknown_082E4044:
	.INCBIN "baserom.gba", 0x2E4044, 0x2E4244-0x2E4044

	.GLOBAL gUnknown_082E4244
gUnknown_082E4244:
	.INCBIN "baserom.gba", 0x2E4244, 0x2E4268-0x2E4244

	.GLOBAL gUnknown_082E4268
gUnknown_082E4268:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E4270
gUnknown_082E4270:
	.INCBIN "baserom.gba", 0x2E4270, 0x2E4470-0x2E4270

	.GLOBAL gUnknown_082E4470
gUnknown_082E4470:
	.INCBIN "baserom.gba", 0x2E4470, 0x2E4494-0x2E4470

	.GLOBAL gUnknown_082E4494
gUnknown_082E4494:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E449C
gUnknown_082E449C:
	.INCBIN "baserom.gba", 0x2E449C, 0x2E469C-0x2E449C

	.GLOBAL gUnknown_082E469C
gUnknown_082E469C:
	.INCBIN "baserom.gba", 0x2E469C, 0x2E46C0-0x2E469C

	.GLOBAL gUnknown_082E46C0
gUnknown_082E46C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E46C8
gUnknown_082E46C8:
	.INCBIN "baserom.gba", 0x2E46C8, 0x2E48C8-0x2E46C8

	.GLOBAL gUnknown_082E48C8
gUnknown_082E48C8:
	.INCBIN "baserom.gba", 0x2E48C8, 0x2E48EC-0x2E48C8

	.GLOBAL gUnknown_082E48EC
gUnknown_082E48EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E48F4
gUnknown_082E48F4:
	.INCBIN "baserom.gba", 0x2E48F4, 0x2E4AF4-0x2E48F4

	.GLOBAL gUnknown_082E4AF4
gUnknown_082E4AF4:
	.INCBIN "baserom.gba", 0x2E4AF4, 0x2E4B18-0x2E4AF4

	.GLOBAL gUnknown_082E4B18
gUnknown_082E4B18:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E4B20
gUnknown_082E4B20:
	.INCBIN "baserom.gba", 0x2E4B20, 0x2E4C20-0x2E4B20

	.GLOBAL gUnknown_082E4C20
gUnknown_082E4C20:
	.INCBIN "baserom.gba", 0x2E4C20, 0x2E4C44-0x2E4C20

	.GLOBAL gUnknown_082E4C44
gUnknown_082E4C44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_082E4C4C
gUnknown_082E4C4C:
	.INCBIN "baserom.gba", 0x2E4C4C, 0x2E4E4C-0x2E4C4C

	.GLOBAL gUnknown_082E4E4C
gUnknown_082E4E4C:
	.INCBIN "baserom.gba", 0x2E4E4C, 0x2E4E70-0x2E4E4C

	.GLOBAL gUnknown_082E4E70
gUnknown_082E4E70:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E4E78
gUnknown_082E4E78:
	.INCBIN "baserom.gba", 0x2E4E78, 0x2E4F78-0x2E4E78

	.GLOBAL gUnknown_082E4F78
gUnknown_082E4F78:
	.INCBIN "baserom.gba", 0x2E4F78, 0x2E4F9C-0x2E4F78

	.GLOBAL gUnknown_082E4F9C
gUnknown_082E4F9C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E4FA4
gUnknown_082E4FA4:
	.INCBIN "baserom.gba", 0x2E4FA4, 0x2E53A4-0x2E4FA4

	.GLOBAL gUnknown_082E53A4
gUnknown_082E53A4:
	.INCBIN "baserom.gba", 0x2E53A4, 0x2E53C8-0x2E53A4

	.GLOBAL gUnknown_082E53C8
gUnknown_082E53C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E53D0
gUnknown_082E53D0:
	.INCBIN "baserom.gba", 0x2E53D0, 0x2E57D0-0x2E53D0

	.GLOBAL gUnknown_082E57D0
gUnknown_082E57D0:
	.INCBIN "baserom.gba", 0x2E57D0, 0x2E57F4-0x2E57D0

	.GLOBAL gUnknown_082E57F4
gUnknown_082E57F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E57FC
gUnknown_082E57FC:
	.INCBIN "baserom.gba", 0x2E57FC, 0x2E5BFC-0x2E57FC

	.GLOBAL gUnknown_082E5BFC
gUnknown_082E5BFC:
	.INCBIN "baserom.gba", 0x2E5BFC, 0x2E5C20-0x2E5BFC

	.GLOBAL gUnknown_082E5C20
gUnknown_082E5C20:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E5C28
gUnknown_082E5C28:
	.INCBIN "baserom.gba", 0x2E5C28, 0x2E6028-0x2E5C28

	.GLOBAL gUnknown_082E6028
gUnknown_082E6028:
	.INCBIN "baserom.gba", 0x2E6028, 0x2E604C-0x2E6028

	.GLOBAL gUnknown_082E604C
gUnknown_082E604C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E6054
gUnknown_082E6054:
	.INCBIN "baserom.gba", 0x2E6054, 0x2E6454-0x2E6054

	.GLOBAL gUnknown_082E6454
gUnknown_082E6454:
	.INCBIN "baserom.gba", 0x2E6454, 0x2E6478-0x2E6454

	.GLOBAL gUnknown_082E6478
gUnknown_082E6478:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E6480
gUnknown_082E6480:
	.INCBIN "baserom.gba", 0x2E6480, 0x2E6580-0x2E6480

	.GLOBAL gUnknown_082E6580
gUnknown_082E6580:
	.INCBIN "baserom.gba", 0x2E6580, 0x2E65A4-0x2E6580

	.GLOBAL gUnknown_082E65A4
gUnknown_082E65A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E65AC
gUnknown_082E65AC:
	.INCBIN "baserom.gba", 0x2E65AC, 0x2E66AC-0x2E65AC

	.GLOBAL gUnknown_082E66AC
gUnknown_082E66AC:
	.INCBIN "baserom.gba", 0x2E66AC, 0x2E66D0-0x2E66AC

	.GLOBAL gUnknown_082E66D0
gUnknown_082E66D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E66D8
gUnknown_082E66D8:
	.INCBIN "baserom.gba", 0x2E66D8, 0x2E6718-0x2E66D8

	.GLOBAL gUnknown_082E6718
gUnknown_082E6718:
	.INCBIN "baserom.gba", 0x2E6718, 0x2E6760-0x2E6718

	.GLOBAL gUnknown_082E6760
gUnknown_082E6760:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E6768
gUnknown_082E6768:
	.INCBIN "baserom.gba", 0x2E6768, 0x2E6868-0x2E6768

	.GLOBAL gUnknown_082E6868
gUnknown_082E6868:
	.INCBIN "baserom.gba", 0x2E6868, 0x2E6940-0x2E6868

	.GLOBAL gUnknown_082E6940
gUnknown_082E6940:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E6948
gUnknown_082E6948:
	.INCBIN "baserom.gba", 0x2E6948, 0x2E8148-0x2E6948

	.GLOBAL gUnknown_082E8148
gUnknown_082E8148:
	.INCBIN "baserom.gba", 0x2E8148, 0x2E8190-0x2E8148

	.GLOBAL gUnknown_082E8190
gUnknown_082E8190:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E8198
gUnknown_082E8198:
	.INCBIN "baserom.gba", 0x2E8198, 0x2E8298-0x2E8198

	.GLOBAL gUnknown_082E8298
gUnknown_082E8298:
	.INCBIN "baserom.gba", 0x2E8298, 0x2E8304-0x2E8298

	.GLOBAL gUnknown_082E8304
gUnknown_082E8304:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082E830C
gUnknown_082E830C:
	.INCBIN "baserom.gba", 0x2E830C, 0x2E848C-0x2E830C

	.GLOBAL gUnknown_082E848C
gUnknown_082E848C:
	.INCBIN "baserom.gba", 0x2E848C, 0x2E84D4-0x2E848C

	.GLOBAL gUnknown_082E84D4
gUnknown_082E84D4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082E84DC
gUnknown_082E84DC:
	.INCBIN "baserom.gba", 0x2E84DC, 0x2E88DC-0x2E84DC

	.GLOBAL gUnknown_082E88DC
gUnknown_082E88DC:
	.INCBIN "baserom.gba", 0x2E88DC, 0x2E8900-0x2E88DC

	.GLOBAL gUnknown_082E8900
gUnknown_082E8900:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082E8908
gUnknown_082E8908:
	.INCBIN "baserom.gba", 0x2E8908, 0x2E8A08-0x2E8908

	.GLOBAL gUnknown_082E8A08
gUnknown_082E8A08:
	.INCBIN "baserom.gba", 0x2E8A08, 0x2E8A50-0x2E8A08

	.GLOBAL gUnknown_082E8A50
gUnknown_082E8A50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082E8A58
gUnknown_082E8A58:
	.INCBIN "baserom.gba", 0x2E8A58, 0x2E8E58-0x2E8A58

	.GLOBAL gUnknown_082E8E58
gUnknown_082E8E58:
	.INCBIN "baserom.gba", 0x2E8E58, 0x2E8EA0-0x2E8E58

	.GLOBAL gUnknown_082E8EA0
gUnknown_082E8EA0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E8EA8
gUnknown_082E8EA8:
	.INCBIN "baserom.gba", 0x2E8EA8, 0x2E90A8-0x2E8EA8

	.GLOBAL gUnknown_082E90A8
gUnknown_082E90A8:
	.INCBIN "baserom.gba", 0x2E90A8, 0x2E9114-0x2E90A8

	.GLOBAL gUnknown_082E9114
gUnknown_082E9114:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E911C
gUnknown_082E911C:
	.INCBIN "baserom.gba", 0x2E911C, 0x2E929C-0x2E911C

	.GLOBAL gUnknown_082E929C
gUnknown_082E929C:
	.INCBIN "baserom.gba", 0x2E929C, 0x2E92C0-0x2E929C

	.GLOBAL gUnknown_082E92C0
gUnknown_082E92C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E92C8
gUnknown_082E92C8:
	.INCBIN "baserom.gba", 0x2E92C8, 0x2E94C8-0x2E92C8

	.GLOBAL gUnknown_082E94C8
gUnknown_082E94C8:
	.INCBIN "baserom.gba", 0x2E94C8, 0x2E94EC-0x2E94C8

	.GLOBAL gUnknown_082E94EC
gUnknown_082E94EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082E94F4
gUnknown_082E94F4:
	.INCBIN "baserom.gba", 0x2E94F4, 0x2E9574-0x2E94F4

	.GLOBAL gUnknown_082E9574
gUnknown_082E9574:
	.INCBIN "baserom.gba", 0x2E9574, 0x2E964C-0x2E9574

	.GLOBAL gUnknown_082E964C
gUnknown_082E964C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082E9654
gUnknown_082E9654:
	.INCBIN "baserom.gba", 0x2E9654, 0x2EAE54-0x2E9654

	.GLOBAL gUnknown_082EAE54
gUnknown_082EAE54:
	.INCBIN "baserom.gba", 0x2EAE54, 0x2EAE78-0x2EAE54

	.GLOBAL gUnknown_082EAE78
gUnknown_082EAE78:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EAE80
gUnknown_082EAE80:
	.INCBIN "baserom.gba", 0x2EAE80, 0x2EAF00-0x2EAE80

	.GLOBAL gUnknown_082EAF00
gUnknown_082EAF00:
	.INCBIN "baserom.gba", 0x2EAF00, 0x2EAF90-0x2EAF00

	.GLOBAL gUnknown_082EAF90
gUnknown_082EAF90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_082EAF98
gUnknown_082EAF98:
	.INCBIN "baserom.gba", 0x2EAF98, 0x2EB118-0x2EAF98

	.GLOBAL gUnknown_082EB118
gUnknown_082EB118:
	.INCBIN "baserom.gba", 0x2EB118, 0x2EB198-0x2EB118

	.GLOBAL gUnknown_082EB198
gUnknown_082EB198:
	.INCBIN "baserom.gba", 0x2EB198, 0x2EB1BC-0x2EB198

	.GLOBAL gUnknown_082EB1BC
gUnknown_082EB1BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_082EB1C4
gUnknown_082EB1C4:
	.INCBIN "baserom.gba", 0x2EB1C4, 0x2EB244-0x2EB1C4

	.GLOBAL gUnknown_082EB244
gUnknown_082EB244:
	.INCBIN "baserom.gba", 0x2EB244, 0x2EB2B0-0x2EB244

	.GLOBAL gUnknown_082EB2B0
gUnknown_082EB2B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EB2B8
gUnknown_082EB2B8:
	.INCBIN "baserom.gba", 0x2EB2B8, 0x2EBAB8-0x2EB2B8

	.GLOBAL gUnknown_082EBAB8
gUnknown_082EBAB8:
	.INCBIN "baserom.gba", 0x2EBAB8, 0x2EBB00-0x2EBAB8

	.GLOBAL gUnknown_082EBB00
gUnknown_082EBB00:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EBB08
gUnknown_082EBB08:
	.INCBIN "baserom.gba", 0x2EBB08, 0x2EBC08-0x2EBB08

	.GLOBAL gUnknown_082EBC08
gUnknown_082EBC08:
	.INCBIN "baserom.gba", 0x2EBC08, 0x2EBC2C-0x2EBC08

	.GLOBAL gUnknown_082EBC2C
gUnknown_082EBC2C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082EBC34
gUnknown_082EBC34:
	.INCBIN "baserom.gba", 0x2EBC34, 0x2EBE34-0x2EBC34

	.GLOBAL gUnknown_082EBE34
gUnknown_082EBE34:
	.INCBIN "baserom.gba", 0x2EBE34, 0x2EBE58-0x2EBE34

	.GLOBAL gUnknown_082EBE58
gUnknown_082EBE58:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082EBE60
gUnknown_082EBE60:
	.INCBIN "baserom.gba", 0x2EBE60, 0x2EC060-0x2EBE60

	.GLOBAL gUnknown_082EC060
gUnknown_082EC060:
	.INCBIN "baserom.gba", 0x2EC060, 0x2EC0CC-0x2EC060

	.GLOBAL gUnknown_082EC0CC
gUnknown_082EC0CC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EC0D4
gUnknown_082EC0D4:
	.INCBIN "baserom.gba", 0x2EC0D4, 0x2EC154-0x2EC0D4

	.GLOBAL gUnknown_082EC154
gUnknown_082EC154:
	.INCBIN "baserom.gba", 0x2EC154, 0x2EC1E4-0x2EC154

	.GLOBAL gUnknown_082EC1E4
gUnknown_082EC1E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EC1EC
gUnknown_082EC1EC:
	.INCBIN "baserom.gba", 0x2EC1EC, 0x2EC26C-0x2EC1EC

	.GLOBAL gUnknown_082EC26C
gUnknown_082EC26C:
	.INCBIN "baserom.gba", 0x2EC26C, 0x2EC2D8-0x2EC26C

	.GLOBAL gUnknown_082EC2D8
gUnknown_082EC2D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082EC2E0
gUnknown_082EC2E0:
	.INCBIN "baserom.gba", 0x2EC2E0, 0x2EC5E0-0x2EC2E0

	.GLOBAL gUnknown_082EC5E0
gUnknown_082EC5E0:
	.INCBIN "baserom.gba", 0x2EC5E0, 0x2EC748-0x2EC5E0

	.GLOBAL gUnknown_082EC748
gUnknown_082EC748:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EC750
gUnknown_082EC750:
	.INCBIN "baserom.gba", 0x2EC750, 0x2EC9D0-0x2EC750

	.GLOBAL gUnknown_082EC9D0
gUnknown_082EC9D0:
	.INCBIN "baserom.gba", 0x2EC9D0, 0x2ECB38-0x2EC9D0

	.GLOBAL gUnknown_082ECB38
gUnknown_082ECB38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082ECB40
gUnknown_082ECB40:
	.INCBIN "baserom.gba", 0x2ECB40, 0x2ECDC0-0x2ECB40

	.GLOBAL gUnknown_082ECDC0
gUnknown_082ECDC0:
	.INCBIN "baserom.gba", 0x2ECDC0, 0x2ECF94-0x2ECDC0

	.GLOBAL gUnknown_082ECF94
gUnknown_082ECF94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ECF9C
gUnknown_082ECF9C:
	.INCBIN "baserom.gba", 0x2ECF9C, 0x2ED13C-0x2ECF9C

	.GLOBAL gUnknown_082ED13C
gUnknown_082ED13C:
	.INCBIN "baserom.gba", 0x2ED13C, 0x2ED280-0x2ED13C

	.GLOBAL gUnknown_082ED280
gUnknown_082ED280:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ED288
gUnknown_082ED288:
	.INCBIN "baserom.gba", 0x2ED288, 0x2ED4C8-0x2ED288

	.GLOBAL gUnknown_082ED4C8
gUnknown_082ED4C8:
	.INCBIN "baserom.gba", 0x2ED4C8, 0x2ED4EC-0x2ED4C8

	.GLOBAL gUnknown_082ED4EC
gUnknown_082ED4EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ED4F4
gUnknown_082ED4F4:
	.INCBIN "baserom.gba", 0x2ED4F4, 0x2ED574-0x2ED4F4

	.GLOBAL gUnknown_082ED574
gUnknown_082ED574:
	.INCBIN "baserom.gba", 0x2ED574, 0x2ED5BC-0x2ED574

	.GLOBAL gUnknown_082ED5BC
gUnknown_082ED5BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082ED5C4
gUnknown_082ED5C4:
	.INCBIN "baserom.gba", 0x2ED5C4, 0x2ED644-0x2ED5C4

	.GLOBAL gUnknown_082ED644
gUnknown_082ED644:
	.INCBIN "baserom.gba", 0x2ED644, 0x2ED668-0x2ED644

	.GLOBAL gUnknown_082ED668
gUnknown_082ED668:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ED670
gUnknown_082ED670:
	.INCBIN "baserom.gba", 0x2ED670, 0x2ED770-0x2ED670

	.GLOBAL gUnknown_082ED770
gUnknown_082ED770:
	.INCBIN "baserom.gba", 0x2ED770, 0x2ED794-0x2ED770

	.GLOBAL gUnknown_082ED794
gUnknown_082ED794:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ED79C
gUnknown_082ED79C:
	.INCBIN "baserom.gba", 0x2ED79C, 0x2ED89C-0x2ED79C

	.GLOBAL gUnknown_082ED89C
gUnknown_082ED89C:
	.INCBIN "baserom.gba", 0x2ED89C, 0x2ED8C0-0x2ED89C

	.GLOBAL gUnknown_082ED8C0
gUnknown_082ED8C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ED8C8
gUnknown_082ED8C8:
	.INCBIN "baserom.gba", 0x2ED8C8, 0x2ED9C8-0x2ED8C8

	.GLOBAL gUnknown_082ED9C8
gUnknown_082ED9C8:
	.INCBIN "baserom.gba", 0x2ED9C8, 0x2ED9EC-0x2ED9C8

	.GLOBAL gUnknown_082ED9EC
gUnknown_082ED9EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082ED9F4
gUnknown_082ED9F4:
	.INCBIN "baserom.gba", 0x2ED9F4, 0x2EDAF4-0x2ED9F4

	.GLOBAL gUnknown_082EDAF4
gUnknown_082EDAF4:
	.INCBIN "baserom.gba", 0x2EDAF4, 0x2EDB18-0x2EDAF4

	.GLOBAL gUnknown_082EDB18
gUnknown_082EDB18:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EDB20
gUnknown_082EDB20:
	.INCBIN "baserom.gba", 0x2EDB20, 0x2EDC20-0x2EDB20

	.GLOBAL gUnknown_082EDC20
gUnknown_082EDC20:
	.INCBIN "baserom.gba", 0x2EDC20, 0x2EDC44-0x2EDC20

	.GLOBAL gUnknown_082EDC44
gUnknown_082EDC44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EDC4C
gUnknown_082EDC4C:
	.INCBIN "baserom.gba", 0x2EDC4C, 0x2EDCCC-0x2EDC4C

	.GLOBAL gUnknown_082EDCCC
gUnknown_082EDCCC:
	.INCBIN "baserom.gba", 0x2EDCCC, 0x2EDCF0-0x2EDCCC

	.GLOBAL gUnknown_082EDCF0
gUnknown_082EDCF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EDCF8
gUnknown_082EDCF8:
	.INCBIN "baserom.gba", 0x2EDCF8, 0x2EDDF8-0x2EDCF8

	.GLOBAL gUnknown_082EDDF8
gUnknown_082EDDF8:
	.INCBIN "baserom.gba", 0x2EDDF8, 0x2EDE1C-0x2EDDF8

	.GLOBAL gUnknown_082EDE1C
gUnknown_082EDE1C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EDE24
gUnknown_082EDE24:
	.INCBIN "baserom.gba", 0x2EDE24, 0x2EDF24-0x2EDE24

	.GLOBAL gUnknown_082EDF24
gUnknown_082EDF24:
	.INCBIN "baserom.gba", 0x2EDF24, 0x2EDF48-0x2EDF24

	.GLOBAL gUnknown_082EDF48
gUnknown_082EDF48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EDF50
gUnknown_082EDF50:
	.INCBIN "baserom.gba", 0x2EDF50, 0x2EE050-0x2EDF50

	.GLOBAL gUnknown_082EE050
gUnknown_082EE050:
	.INCBIN "baserom.gba", 0x2EE050, 0x2EE074-0x2EE050

	.GLOBAL gUnknown_082EE074
gUnknown_082EE074:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE07C
gUnknown_082EE07C:
	.INCBIN "baserom.gba", 0x2EE07C, 0x2EE0FC-0x2EE07C

	.GLOBAL gUnknown_082EE0FC
gUnknown_082EE0FC:
	.INCBIN "baserom.gba", 0x2EE0FC, 0x2EE120-0x2EE0FC

	.GLOBAL gUnknown_082EE120
gUnknown_082EE120:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE128
gUnknown_082EE128:
	.INCBIN "baserom.gba", 0x2EE128, 0x2EE168-0x2EE128

	.GLOBAL gUnknown_082EE168
gUnknown_082EE168:
	.INCBIN "baserom.gba", 0x2EE168, 0x2EE18C-0x2EE168

	.GLOBAL gUnknown_082EE18C
gUnknown_082EE18C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE194
gUnknown_082EE194:
	.INCBIN "baserom.gba", 0x2EE194, 0x2EE214-0x2EE194

	.GLOBAL gUnknown_082EE214
gUnknown_082EE214:
	.INCBIN "baserom.gba", 0x2EE214, 0x2EE25C-0x2EE214

	.GLOBAL gUnknown_082EE25C
gUnknown_082EE25C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE264
gUnknown_082EE264:
	.INCBIN "baserom.gba", 0x2EE264, 0x2EE464-0x2EE264

	.GLOBAL gUnknown_082EE464
gUnknown_082EE464:
	.INCBIN "baserom.gba", 0x2EE464, 0x2EE4AC-0x2EE464

	.GLOBAL gUnknown_082EE4AC
gUnknown_082EE4AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE4B4
gUnknown_082EE4B4:
	.INCBIN "baserom.gba", 0x2EE4B4, 0x2EE6B4-0x2EE4B4

	.GLOBAL gUnknown_082EE6B4
gUnknown_082EE6B4:
	.INCBIN "baserom.gba", 0x2EE6B4, 0x2EE6FC-0x2EE6B4

	.GLOBAL gUnknown_082EE6FC
gUnknown_082EE6FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE704
gUnknown_082EE704:
	.INCBIN "baserom.gba", 0x2EE704, 0x2EE904-0x2EE704

	.GLOBAL gUnknown_082EE904
gUnknown_082EE904:
	.INCBIN "baserom.gba", 0x2EE904, 0x2EE94C-0x2EE904

	.GLOBAL gUnknown_082EE94C
gUnknown_082EE94C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EE954
gUnknown_082EE954:
	.INCBIN "baserom.gba", 0x2EE954, 0x2EEB54-0x2EE954

	.GLOBAL gUnknown_082EEB54
gUnknown_082EEB54:
	.INCBIN "baserom.gba", 0x2EEB54, 0x2EEB9C-0x2EEB54

	.GLOBAL gUnknown_082EEB9C
gUnknown_082EEB9C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EEBA4
gUnknown_082EEBA4:
	.INCBIN "baserom.gba", 0x2EEBA4, 0x2EEDA4-0x2EEBA4

	.GLOBAL gUnknown_082EEDA4
gUnknown_082EEDA4:
	.INCBIN "baserom.gba", 0x2EEDA4, 0x2EEDEC-0x2EEDA4

	.GLOBAL gUnknown_082EEDEC
gUnknown_082EEDEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EEDF4
gUnknown_082EEDF4:
	.INCBIN "baserom.gba", 0x2EEDF4, 0x2EEEF4-0x2EEDF4

	.GLOBAL gUnknown_082EEEF4
gUnknown_082EEEF4:
	.INCBIN "baserom.gba", 0x2EEEF4, 0x2EEF3C-0x2EEEF4

	.GLOBAL gUnknown_082EEF3C
gUnknown_082EEF3C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EEF44
gUnknown_082EEF44:
	.INCBIN "baserom.gba", 0x2EEF44, 0x2EF144-0x2EEF44

	.GLOBAL gUnknown_082EF144
gUnknown_082EF144:
	.INCBIN "baserom.gba", 0x2EF144, 0x2EF18C-0x2EF144

	.GLOBAL gUnknown_082EF18C
gUnknown_082EF18C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EF194
gUnknown_082EF194:
	.INCBIN "baserom.gba", 0x2EF194, 0x2EF394-0x2EF194

	.GLOBAL gUnknown_082EF394
gUnknown_082EF394:
	.INCBIN "baserom.gba", 0x2EF394, 0x2EF3DC-0x2EF394

	.GLOBAL gUnknown_082EF3DC
gUnknown_082EF3DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EF3E4
gUnknown_082EF3E4:
	.INCBIN "baserom.gba", 0x2EF3E4, 0x2EF5E4-0x2EF3E4

	.GLOBAL gUnknown_082EF5E4
gUnknown_082EF5E4:
	.INCBIN "baserom.gba", 0x2EF5E4, 0x2EF62C-0x2EF5E4

	.GLOBAL gUnknown_082EF62C
gUnknown_082EF62C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EF634
gUnknown_082EF634:
	.INCBIN "baserom.gba", 0x2EF634, 0x2EF734-0x2EF634

	.GLOBAL gUnknown_082EF734
gUnknown_082EF734:
	.INCBIN "baserom.gba", 0x2EF734, 0x2EF77C-0x2EF734

	.GLOBAL gUnknown_082EF77C
gUnknown_082EF77C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EF784
gUnknown_082EF784:
	.INCBIN "baserom.gba", 0x2EF784, 0x2EF804-0x2EF784

	.GLOBAL gUnknown_082EF804
gUnknown_082EF804:
	.INCBIN "baserom.gba", 0x2EF804, 0x2EF924-0x2EF804

	.GLOBAL gUnknown_082EF924
gUnknown_082EF924:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EF92C
gUnknown_082EF92C:
	.INCBIN "baserom.gba", 0x2EF92C, 0x2EFB2C-0x2EF92C

	.GLOBAL gUnknown_082EFB2C
gUnknown_082EFB2C:
	.INCBIN "baserom.gba", 0x2EFB2C, 0x2EFB50-0x2EFB2C

	.GLOBAL gUnknown_082EFB50
gUnknown_082EFB50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFB58
gUnknown_082EFB58:
	.INCBIN "baserom.gba", 0x2EFB58, 0x2EFBD8-0x2EFB58

	.GLOBAL gUnknown_082EFBD8
gUnknown_082EFBD8:
	.INCBIN "baserom.gba", 0x2EFBD8, 0x2EFBFC-0x2EFBD8

	.GLOBAL gUnknown_082EFBFC
gUnknown_082EFBFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFC04
gUnknown_082EFC04:
	.INCBIN "baserom.gba", 0x2EFC04, 0x2EFC44-0x2EFC04

	.GLOBAL gUnknown_082EFC44
gUnknown_082EFC44:
	.INCBIN "baserom.gba", 0x2EFC44, 0x2EFC68-0x2EFC44

	.GLOBAL gUnknown_082EFC68
gUnknown_082EFC68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFC70
gUnknown_082EFC70:
	.INCBIN "baserom.gba", 0x2EFC70, 0x2EFC90-0x2EFC70

	.GLOBAL gUnknown_082EFC90
gUnknown_082EFC90:
	.INCBIN "baserom.gba", 0x2EFC90, 0x2EFCB4-0x2EFC90

	.GLOBAL gUnknown_082EFCB4
gUnknown_082EFCB4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFCBC
gUnknown_082EFCBC:
	.INCBIN "baserom.gba", 0x2EFCBC, 0x2EFCDC-0x2EFCBC

	.GLOBAL gUnknown_082EFCDC
gUnknown_082EFCDC:
	.INCBIN "baserom.gba", 0x2EFCDC, 0x2EFD00-0x2EFCDC

	.GLOBAL gUnknown_082EFD00
gUnknown_082EFD00:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFD08
gUnknown_082EFD08:
	.INCBIN "baserom.gba", 0x2EFD08, 0x2EFD88-0x2EFD08

	.GLOBAL gUnknown_082EFD88
gUnknown_082EFD88:
	.INCBIN "baserom.gba", 0x2EFD88, 0x2EFDAC-0x2EFD88

	.GLOBAL gUnknown_082EFDAC
gUnknown_082EFDAC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFDB4
gUnknown_082EFDB4:
	.INCBIN "baserom.gba", 0x2EFDB4, 0x2EFDD4-0x2EFDB4

	.GLOBAL gUnknown_082EFDD4
gUnknown_082EFDD4:
	.INCBIN "baserom.gba", 0x2EFDD4, 0x2EFDF8-0x2EFDD4

	.GLOBAL gUnknown_082EFDF8
gUnknown_082EFDF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFE00
gUnknown_082EFE00:
	.INCBIN "baserom.gba", 0x2EFE00, 0x2EFE20-0x2EFE00

	.GLOBAL gUnknown_082EFE20
gUnknown_082EFE20:
	.INCBIN "baserom.gba", 0x2EFE20, 0x2EFE44-0x2EFE20

	.GLOBAL gUnknown_082EFE44
gUnknown_082EFE44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFE4C
gUnknown_082EFE4C:
	.INCBIN "baserom.gba", 0x2EFE4C, 0x2EFE6C-0x2EFE4C

	.GLOBAL gUnknown_082EFE6C
gUnknown_082EFE6C:
	.INCBIN "baserom.gba", 0x2EFE6C, 0x2EFE90-0x2EFE6C

	.GLOBAL gUnknown_082EFE90
gUnknown_082EFE90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFE98
gUnknown_082EFE98:
	.INCBIN "baserom.gba", 0x2EFE98, 0x2EFEB8-0x2EFE98

	.GLOBAL gUnknown_082EFEB8
gUnknown_082EFEB8:
	.INCBIN "baserom.gba", 0x2EFEB8, 0x2EFF24-0x2EFEB8

	.GLOBAL gUnknown_082EFF24
gUnknown_082EFF24:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFF2C
gUnknown_082EFF2C:
	.INCBIN "baserom.gba", 0x2EFF2C, 0x2EFF4C-0x2EFF2C

	.GLOBAL gUnknown_082EFF4C
gUnknown_082EFF4C:
	.INCBIN "baserom.gba", 0x2EFF4C, 0x2EFF6C-0x2EFF4C

	.GLOBAL gUnknown_082EFF6C
gUnknown_082EFF6C:
	.INCBIN "baserom.gba", 0x2EFF6C, 0x2EFF8C-0x2EFF6C

	.GLOBAL gUnknown_082EFF8C
gUnknown_082EFF8C:
	.INCBIN "baserom.gba", 0x2EFF8C, 0x2EFFB0-0x2EFF8C

	.GLOBAL gUnknown_082EFFB0
gUnknown_082EFFB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082EFFB8
gUnknown_082EFFB8:
	.INCBIN "baserom.gba", 0x2EFFB8, 0x2EFFD8-0x2EFFB8

	.GLOBAL gUnknown_082EFFD8
gUnknown_082EFFD8:
	.INCBIN "baserom.gba", 0x2EFFD8, 0x2EFFFC-0x2EFFD8

	.GLOBAL gUnknown_082EFFFC
gUnknown_082EFFFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0004
gUnknown_082F0004:
	.INCBIN "baserom.gba", 0x2F0004, 0x2F0024-0x2F0004

	.GLOBAL gUnknown_082F0024
gUnknown_082F0024:
	.INCBIN "baserom.gba", 0x2F0024, 0x2F01B0-0x2F0024

	.GLOBAL gUnknown_082F01B0
gUnknown_082F01B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F01B8
gUnknown_082F01B8:
	.INCBIN "baserom.gba", 0x2F01B8, 0x2F0318-0x2F01B8

	.GLOBAL gUnknown_082F0318
gUnknown_082F0318:
	.INCBIN "baserom.gba", 0x2F0318, 0x2F033C-0x2F0318

	.GLOBAL gUnknown_082F033C
gUnknown_082F033C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0344
gUnknown_082F0344:
	.INCBIN "baserom.gba", 0x2F0344, 0x2F0364-0x2F0344

	.GLOBAL gUnknown_082F0364
gUnknown_082F0364:
	.INCBIN "baserom.gba", 0x2F0364, 0x2F043C-0x2F0364

	.GLOBAL gUnknown_082F043C
gUnknown_082F043C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_082F0444
gUnknown_082F0444:
	.INCBIN "baserom.gba", 0x2F0444, 0x2F0744-0x2F0444

	.GLOBAL gUnknown_082F0744
gUnknown_082F0744:
	.INCBIN "baserom.gba", 0x2F0744, 0x2F0768-0x2F0744

	.GLOBAL gUnknown_082F0768
gUnknown_082F0768:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0770
gUnknown_082F0770:
	.INCBIN "baserom.gba", 0x2F0770, 0x2F0790-0x2F0770

	.GLOBAL gUnknown_082F0790
gUnknown_082F0790:
	.INCBIN "baserom.gba", 0x2F0790, 0x2F07B4-0x2F0790

	.GLOBAL gUnknown_082F07B4
gUnknown_082F07B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F07BC
gUnknown_082F07BC:
	.INCBIN "baserom.gba", 0x2F07BC, 0x2F07DC-0x2F07BC

	.GLOBAL gUnknown_082F07DC
gUnknown_082F07DC:
	.INCBIN "baserom.gba", 0x2F07DC, 0x2F0800-0x2F07DC

	.GLOBAL gUnknown_082F0800
gUnknown_082F0800:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0808
gUnknown_082F0808:
	.INCBIN "baserom.gba", 0x2F0808, 0x2F0828-0x2F0808

	.GLOBAL gUnknown_082F0828
gUnknown_082F0828:
	.INCBIN "baserom.gba", 0x2F0828, 0x2F084C-0x2F0828

	.GLOBAL gUnknown_082F084C
gUnknown_082F084C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0854
gUnknown_082F0854:
	.INCBIN "baserom.gba", 0x2F0854, 0x2F0874-0x2F0854

	.GLOBAL gUnknown_082F0874
gUnknown_082F0874:
	.INCBIN "baserom.gba", 0x2F0874, 0x2F0898-0x2F0874

	.GLOBAL gUnknown_082F0898
gUnknown_082F0898:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F08A0
gUnknown_082F08A0:
	.INCBIN "baserom.gba", 0x2F08A0, 0x2F0920-0x2F08A0

	.GLOBAL gUnknown_082F0920
gUnknown_082F0920:
	.INCBIN "baserom.gba", 0x2F0920, 0x2F0944-0x2F0920

	.GLOBAL gUnknown_082F0944
gUnknown_082F0944:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F094C
gUnknown_082F094C:
	.INCBIN "baserom.gba", 0x2F094C, 0x2F096C-0x2F094C

	.GLOBAL gUnknown_082F096C
gUnknown_082F096C:
	.INCBIN "baserom.gba", 0x2F096C, 0x2F0990-0x2F096C

	.GLOBAL gUnknown_082F0990
gUnknown_082F0990:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_082F0998
gUnknown_082F0998:
	.INCBIN "baserom.gba", 0x2F0998, 0x2F0A18-0x2F0998

	.GLOBAL gUnknown_082F0A18
gUnknown_082F0A18:
	.INCBIN "baserom.gba", 0x2F0A18, 0x2F0A60-0x2F0A18

	.GLOBAL gUnknown_082F0A60
gUnknown_082F0A60:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_082F0A68
gUnknown_082F0A68:
	.INCBIN "baserom.gba", 0x2F0A68, 0x2F0AE8-0x2F0A68

	.GLOBAL gUnknown_082F0AE8
gUnknown_082F0AE8:
	.INCBIN "baserom.gba", 0x2F0AE8, 0x2F0B30-0x2F0AE8

	.GLOBAL gUnknown_082F0B30
gUnknown_082F0B30:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_082F0B38
gUnknown_082F0B38:
	.INCBIN "baserom.gba", 0x2F0B38, 0x2F0BB8-0x2F0B38

	.GLOBAL gUnknown_082F0BB8
gUnknown_082F0BB8:
	.INCBIN "baserom.gba", 0x2F0BB8, 0x2F0BDC-0x2F0BB8

	.GLOBAL gUnknown_082F0BDC
gUnknown_082F0BDC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0BE4
gUnknown_082F0BE4:
	.INCBIN "baserom.gba", 0x2F0BE4, 0x2F0C64-0x2F0BE4

	.GLOBAL gUnknown_082F0C64
gUnknown_082F0C64:
	.INCBIN "baserom.gba", 0x2F0C64, 0x2F0C88-0x2F0C64

	.GLOBAL gUnknown_082F0C88
gUnknown_082F0C88:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0C90
gUnknown_082F0C90:
	.INCBIN "baserom.gba", 0x2F0C90, 0x2F0CD0-0x2F0C90

	.GLOBAL gUnknown_082F0CD0
gUnknown_082F0CD0:
	.INCBIN "baserom.gba", 0x2F0CD0, 0x2F0CF4-0x2F0CD0

	.GLOBAL gUnknown_082F0CF4
gUnknown_082F0CF4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0CFC
gUnknown_082F0CFC:
	.INCBIN "baserom.gba", 0x2F0CFC, 0x2F0D7C-0x2F0CFC

	.GLOBAL gUnknown_082F0D7C
gUnknown_082F0D7C:
	.INCBIN "baserom.gba", 0x2F0D7C, 0x2F0DA0-0x2F0D7C

	.GLOBAL gUnknown_082F0DA0
gUnknown_082F0DA0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F0DA8
gUnknown_082F0DA8:
	.INCBIN "baserom.gba", 0x2F0DA8, 0x2F11A8-0x2F0DA8

	.GLOBAL gUnknown_082F11A8
gUnknown_082F11A8:
	.INCBIN "baserom.gba", 0x2F11A8, 0x2F11CC-0x2F11A8

	.GLOBAL gUnknown_082F11CC
gUnknown_082F11CC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F11D4
gUnknown_082F11D4:
	.INCBIN "baserom.gba", 0x2F11D4, 0x2F15D4-0x2F11D4

	.GLOBAL gUnknown_082F15D4
gUnknown_082F15D4:
	.INCBIN "baserom.gba", 0x2F15D4, 0x2F15F8-0x2F15D4

	.GLOBAL gUnknown_082F15F8
gUnknown_082F15F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F1600
gUnknown_082F1600:
	.INCBIN "baserom.gba", 0x2F1600, 0x2F1680-0x2F1600

	.GLOBAL gUnknown_082F1680
gUnknown_082F1680:
	.INCBIN "baserom.gba", 0x2F1680, 0x2F1710-0x2F1680

	.GLOBAL gUnknown_082F1710
gUnknown_082F1710:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F1718
gUnknown_082F1718:
	.INCBIN "baserom.gba", 0x2F1718, 0x2F1898-0x2F1718

	.GLOBAL gUnknown_082F1898
gUnknown_082F1898:
	.INCBIN "baserom.gba", 0x2F1898, 0x2F1928-0x2F1898

	.GLOBAL gUnknown_082F1928
gUnknown_082F1928:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F1930
gUnknown_082F1930:
	.INCBIN "baserom.gba", 0x2F1930, 0x2F1AB0-0x2F1930

	.GLOBAL gUnknown_082F1AB0
gUnknown_082F1AB0:
	.INCBIN "baserom.gba", 0x2F1AB0, 0x2F1B40-0x2F1AB0

	.GLOBAL gUnknown_082F1B40
gUnknown_082F1B40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F1B48
gUnknown_082F1B48:
	.INCBIN "baserom.gba", 0x2F1B48, 0x2F1CC8-0x2F1B48

	.GLOBAL gUnknown_082F1CC8
gUnknown_082F1CC8:
	.INCBIN "baserom.gba", 0x2F1CC8, 0x2F1CEC-0x2F1CC8

	.GLOBAL gUnknown_082F1CEC
gUnknown_082F1CEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F1CF4
gUnknown_082F1CF4:
	.INCBIN "baserom.gba", 0x2F1CF4, 0x2F1DF4-0x2F1CF4

	.GLOBAL gUnknown_082F1DF4
gUnknown_082F1DF4:
	.INCBIN "baserom.gba", 0x2F1DF4, 0x2F1E60-0x2F1DF4

	.GLOBAL gUnknown_082F1E60
gUnknown_082F1E60:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F1E68
gUnknown_082F1E68:
	.INCBIN "baserom.gba", 0x2F1E68, 0x2F1FE8-0x2F1E68

	.GLOBAL gUnknown_082F1FE8
gUnknown_082F1FE8:
	.INCBIN "baserom.gba", 0x2F1FE8, 0x2F200C-0x2F1FE8

	.GLOBAL gUnknown_082F200C
gUnknown_082F200C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2014
gUnknown_082F2014:
	.INCBIN "baserom.gba", 0x2F2014, 0x2F2094-0x2F2014

	.GLOBAL gUnknown_082F2094
gUnknown_082F2094:
	.INCBIN "baserom.gba", 0x2F2094, 0x2F20B8-0x2F2094

	.GLOBAL gUnknown_082F20B8
gUnknown_082F20B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F20C0
gUnknown_082F20C0:
	.INCBIN "baserom.gba", 0x2F20C0, 0x2F2140-0x2F20C0

	.GLOBAL gUnknown_082F2140
gUnknown_082F2140:
	.INCBIN "baserom.gba", 0x2F2140, 0x2F2164-0x2F2140

	.GLOBAL gUnknown_082F2164
gUnknown_082F2164:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F216C
gUnknown_082F216C:
	.INCBIN "baserom.gba", 0x2F216C, 0x2F21EC-0x2F216C

	.GLOBAL gUnknown_082F21EC
gUnknown_082F21EC:
	.INCBIN "baserom.gba", 0x2F21EC, 0x2F2210-0x2F21EC

	.GLOBAL gUnknown_082F2210
gUnknown_082F2210:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2218
gUnknown_082F2218:
	.INCBIN "baserom.gba", 0x2F2218, 0x2F2298-0x2F2218

	.GLOBAL gUnknown_082F2298
gUnknown_082F2298:
	.INCBIN "baserom.gba", 0x2F2298, 0x2F22BC-0x2F2298

	.GLOBAL gUnknown_082F22BC
gUnknown_082F22BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F22C4
gUnknown_082F22C4:
	.INCBIN "baserom.gba", 0x2F22C4, 0x2F2344-0x2F22C4

	.GLOBAL gUnknown_082F2344
gUnknown_082F2344:
	.INCBIN "baserom.gba", 0x2F2344, 0x2F2368-0x2F2344

	.GLOBAL gUnknown_082F2368
gUnknown_082F2368:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2370
gUnknown_082F2370:
	.INCBIN "baserom.gba", 0x2F2370, 0x2F23F0-0x2F2370

	.GLOBAL gUnknown_082F23F0
gUnknown_082F23F0:
	.INCBIN "baserom.gba", 0x2F23F0, 0x2F2414-0x2F23F0

	.GLOBAL gUnknown_082F2414
gUnknown_082F2414:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F241C
gUnknown_082F241C:
	.INCBIN "baserom.gba", 0x2F241C, 0x2F261C-0x2F241C

	.GLOBAL gUnknown_082F261C
gUnknown_082F261C:
	.INCBIN "baserom.gba", 0x2F261C, 0x2F2640-0x2F261C

	.GLOBAL gUnknown_082F2640
gUnknown_082F2640:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2648
gUnknown_082F2648:
	.INCBIN "baserom.gba", 0x2F2648, 0x2F2848-0x2F2648

	.GLOBAL gUnknown_082F2848
gUnknown_082F2848:
	.INCBIN "baserom.gba", 0x2F2848, 0x2F286C-0x2F2848

	.GLOBAL gUnknown_082F286C
gUnknown_082F286C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2874
gUnknown_082F2874:
	.INCBIN "baserom.gba", 0x2F2874, 0x2F2A74-0x2F2874

	.GLOBAL gUnknown_082F2A74
gUnknown_082F2A74:
	.INCBIN "baserom.gba", 0x2F2A74, 0x2F2A98-0x2F2A74

	.GLOBAL gUnknown_082F2A98
gUnknown_082F2A98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2AA0
gUnknown_082F2AA0:
	.INCBIN "baserom.gba", 0x2F2AA0, 0x2F2CA0-0x2F2AA0

	.GLOBAL gUnknown_082F2CA0
gUnknown_082F2CA0:
	.INCBIN "baserom.gba", 0x2F2CA0, 0x2F2CC4-0x2F2CA0

	.GLOBAL gUnknown_082F2CC4
gUnknown_082F2CC4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2CCC
gUnknown_082F2CCC:
	.INCBIN "baserom.gba", 0x2F2CCC, 0x2F2ECC-0x2F2CCC

	.GLOBAL gUnknown_082F2ECC
gUnknown_082F2ECC:
	.INCBIN "baserom.gba", 0x2F2ECC, 0x2F2EF0-0x2F2ECC

	.GLOBAL gUnknown_082F2EF0
gUnknown_082F2EF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F2EF8
gUnknown_082F2EF8:
	.INCBIN "baserom.gba", 0x2F2EF8, 0x2F30F8-0x2F2EF8

	.GLOBAL gUnknown_082F30F8
gUnknown_082F30F8:
	.INCBIN "baserom.gba", 0x2F30F8, 0x2F311C-0x2F30F8

	.GLOBAL gUnknown_082F311C
gUnknown_082F311C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F3124
gUnknown_082F3124:
	.INCBIN "baserom.gba", 0x2F3124, 0x2F3324-0x2F3124

	.GLOBAL gUnknown_082F3324
gUnknown_082F3324:
	.INCBIN "baserom.gba", 0x2F3324, 0x2F3348-0x2F3324

	.GLOBAL gUnknown_082F3348
gUnknown_082F3348:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F3350
gUnknown_082F3350:
	.INCBIN "baserom.gba", 0x2F3350, 0x2F3550-0x2F3350

	.GLOBAL gUnknown_082F3550
gUnknown_082F3550:
	.INCBIN "baserom.gba", 0x2F3550, 0x2F3574-0x2F3550

	.GLOBAL gUnknown_082F3574
gUnknown_082F3574:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F357C
gUnknown_082F357C:
	.INCBIN "baserom.gba", 0x2F357C, 0x2F377C-0x2F357C

	.GLOBAL gUnknown_082F377C
gUnknown_082F377C:
	.INCBIN "baserom.gba", 0x2F377C, 0x2F37A0-0x2F377C

	.GLOBAL gUnknown_082F37A0
gUnknown_082F37A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F37A8
gUnknown_082F37A8:
	.INCBIN "baserom.gba", 0x2F37A8, 0x2F37C8-0x2F37A8

	.GLOBAL gUnknown_082F37C8
gUnknown_082F37C8:
	.INCBIN "baserom.gba", 0x2F37C8, 0x2F37EC-0x2F37C8

	.GLOBAL gUnknown_082F37EC
gUnknown_082F37EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F37F4
gUnknown_082F37F4:
	.INCBIN "baserom.gba", 0x2F37F4, 0x2F38F4-0x2F37F4

	.GLOBAL gUnknown_082F38F4
gUnknown_082F38F4:
	.INCBIN "baserom.gba", 0x2F38F4, 0x2F39F0-0x2F38F4

	.GLOBAL gUnknown_082F39F0
gUnknown_082F39F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F39F8
gUnknown_082F39F8:
	.INCBIN "baserom.gba", 0x2F39F8, 0x2F3D78-0x2F39F8

	.GLOBAL gUnknown_082F3D78
gUnknown_082F3D78:
	.INCBIN "baserom.gba", 0x2F3D78, 0x2F3FB8-0x2F3D78

	.GLOBAL gUnknown_082F3FB8
gUnknown_082F3FB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F3FC0
gUnknown_082F3FC0:
	.INCBIN "baserom.gba", 0x2F3FC0, 0x2F43C0-0x2F3FC0

	.GLOBAL gUnknown_082F43C0
gUnknown_082F43C0:
	.INCBIN "baserom.gba", 0x2F43C0, 0x2F4B10-0x2F43C0

	.GLOBAL gUnknown_082F4B10
gUnknown_082F4B10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082F4B18
gUnknown_082F4B18:
	.INCBIN "baserom.gba", 0x2F4B18, 0x2F4D18-0x2F4B18

	.GLOBAL gUnknown_082F4D18
gUnknown_082F4D18:
	.INCBIN "baserom.gba", 0x2F4D18, 0x2F4F34-0x2F4D18

	.GLOBAL gUnknown_082F4F34
gUnknown_082F4F34:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082F4F3C
gUnknown_082F4F3C:
	.INCBIN "baserom.gba", 0x2F4F3C, 0x2F513C-0x2F4F3C

	.GLOBAL gUnknown_082F513C
gUnknown_082F513C:
	.INCBIN "baserom.gba", 0x2F513C, 0x2F52A4-0x2F513C

	.GLOBAL gUnknown_082F52A4
gUnknown_082F52A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F52AC
gUnknown_082F52AC:
	.INCBIN "baserom.gba", 0x2F52AC, 0x2F57AC-0x2F52AC

	.GLOBAL gUnknown_082F57AC
gUnknown_082F57AC:
	.INCBIN "baserom.gba", 0x2F57AC, 0x2F5B9C-0x2F57AC

	.GLOBAL gUnknown_082F5B9C
gUnknown_082F5B9C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F5BA4
gUnknown_082F5BA4:
	.INCBIN "baserom.gba", 0x2F5BA4, 0x2F67A4-0x2F5BA4

	.GLOBAL gUnknown_082F67A4
gUnknown_082F67A4:
	.INCBIN "baserom.gba", 0x2F67A4, 0x2F67C8-0x2F67A4

	.GLOBAL gUnknown_082F67C8
gUnknown_082F67C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F67D0
gUnknown_082F67D0:
	.INCBIN "baserom.gba", 0x2F67D0, 0x2F6850-0x2F67D0

	.GLOBAL gUnknown_082F6850
gUnknown_082F6850:
	.INCBIN "baserom.gba", 0x2F6850, 0x2F6AD8-0x2F6850

	.GLOBAL gUnknown_082F6AD8
gUnknown_082F6AD8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F6AE0
gUnknown_082F6AE0:
	.INCBIN "baserom.gba", 0x2F6AE0, 0x2F8EE0-0x2F6AE0

	.GLOBAL gUnknown_082F8EE0
gUnknown_082F8EE0:
	.INCBIN "baserom.gba", 0x2F8EE0, 0x2F8F04-0x2F8EE0

	.GLOBAL gUnknown_082F8F04
gUnknown_082F8F04:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F8F0C
gUnknown_082F8F0C:
	.INCBIN "baserom.gba", 0x2F8F0C, 0x2F8F8C-0x2F8F0C

	.GLOBAL gUnknown_082F8F8C
gUnknown_082F8F8C:
	.INCBIN "baserom.gba", 0x2F8F8C, 0x2F8FB0-0x2F8F8C

	.GLOBAL gUnknown_082F8FB0
gUnknown_082F8FB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_082F8FB8
gUnknown_082F8FB8:
	.INCBIN "baserom.gba", 0x2F8FB8, 0x2F9038-0x2F8FB8

	.GLOBAL gUnknown_082F9038
gUnknown_082F9038:
	.INCBIN "baserom.gba", 0x2F9038, 0x2F917C-0x2F9038

	.GLOBAL gUnknown_082F917C
gUnknown_082F917C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_082F9184
gUnknown_082F9184:
	.INCBIN "baserom.gba", 0x2F9184, 0x2F9A84-0x2F9184

	.GLOBAL gUnknown_082F9A84
gUnknown_082F9A84:
	.INCBIN "baserom.gba", 0x2F9A84, 0x2F9B14-0x2F9A84

	.GLOBAL gUnknown_082F9B14
gUnknown_082F9B14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_082F9B1C
gUnknown_082F9B1C:
	.INCBIN "baserom.gba", 0x2F9B1C, 0x2F9C9C-0x2F9B1C

	.GLOBAL gUnknown_082F9C9C
gUnknown_082F9C9C:
	.INCBIN "baserom.gba", 0x2F9C9C, 0x2F9E4C-0x2F9C9C

	.GLOBAL gUnknown_082F9E4C
gUnknown_082F9E4C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_082F9E54
gUnknown_082F9E54:
	.INCBIN "baserom.gba", 0x2F9E54, 0x2FA454-0x2F9E54

	.GLOBAL gUnknown_082FA454
gUnknown_082FA454:
	.INCBIN "baserom.gba", 0x2FA454, 0x2FA5BC-0x2FA454

	.GLOBAL gUnknown_082FA5BC
gUnknown_082FA5BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082FA5C4
gUnknown_082FA5C4:
	.INCBIN "baserom.gba", 0x2FA5C4, 0x2FCDC4-0x2FA5C4

	.GLOBAL gUnknown_082FCDC4
gUnknown_082FCDC4:
	.INCBIN "baserom.gba", 0x2FCDC4, 0x2FD16C-0x2FCDC4

	.GLOBAL gUnknown_082FD16C
gUnknown_082FD16C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_082FD174
gUnknown_082FD174:
	.INCBIN "baserom.gba", 0x2FD174, 0x303974-0x2FD174

	.GLOBAL gUnknown_08303974
gUnknown_08303974:
	.INCBIN "baserom.gba", 0x303974, 0x303A94-0x303974

	.GLOBAL gUnknown_08303A94
gUnknown_08303A94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08303A9C
gUnknown_08303A9C:
	.INCBIN "baserom.gba", 0x303A9C, 0x305A9C-0x303A9C

	.GLOBAL gUnknown_08305A9C
gUnknown_08305A9C:
	.INCBIN "baserom.gba", 0x305A9C, 0x3060A8-0x305A9C

	.GLOBAL gUnknown_083060A8
gUnknown_083060A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083060B0
gUnknown_083060B0:
	.INCBIN "baserom.gba", 0x3060B0, 0x30E0B0-0x3060B0

	.GLOBAL gUnknown_0830E0B0
gUnknown_0830E0B0:
	.INCBIN "baserom.gba", 0x30E0B0, 0x30E8D8-0x30E0B0

	.GLOBAL gUnknown_0830E8D8
gUnknown_0830E8D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0830E8E0
gUnknown_0830E8E0:
	.INCBIN "baserom.gba", 0x30E8E0, 0x33E8E0-0x30E8E0

	.GLOBAL gUnknown_0833E8E0
gUnknown_0833E8E0:
	.INCBIN "baserom.gba", 0x33E8E0, 0x33EE80-0x33E8E0

	.GLOBAL gUnknown_0833EE80
gUnknown_0833EE80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0833EE88
gUnknown_0833EE88:
	.INCBIN "baserom.gba", 0x33EE88, 0x342E88-0x33EE88

	.GLOBAL gUnknown_08342E88
gUnknown_08342E88:
	.INCBIN "baserom.gba", 0x342E88, 0x342EAC-0x342E88

	.GLOBAL gUnknown_08342EAC
gUnknown_08342EAC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08342EB4
gUnknown_08342EB4:
	.INCBIN "baserom.gba", 0x342EB4, 0x342FB4-0x342EB4

	.GLOBAL gUnknown_08342FB4
gUnknown_08342FB4:
	.INCBIN "baserom.gba", 0x342FB4, 0x343260-0x342FB4

	.GLOBAL gUnknown_08343260
gUnknown_08343260:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08343268
gUnknown_08343268:
	.INCBIN "baserom.gba", 0x343268, 0x347E68-0x343268

	.GLOBAL gUnknown_08347E68
gUnknown_08347E68:
	.INCBIN "baserom.gba", 0x347E68, 0x348114-0x347E68

	.GLOBAL gUnknown_08348114
gUnknown_08348114:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0834811C
gUnknown_0834811C:
	.INCBIN "baserom.gba", 0x34811C, 0x34CD1C-0x34811C

	.GLOBAL gUnknown_0834CD1C
gUnknown_0834CD1C:
	.INCBIN "baserom.gba", 0x34CD1C, 0x34CD40-0x34CD1C

	.GLOBAL gUnknown_0834CD40
gUnknown_0834CD40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0834CD48
gUnknown_0834CD48:
	.INCBIN "baserom.gba", 0x34CD48, 0x34D148-0x34CD48

	.GLOBAL gUnknown_0834D148
gUnknown_0834D148:
	.INCBIN "baserom.gba", 0x34D148, 0x34D244-0x34D148

	.GLOBAL gUnknown_0834D244
gUnknown_0834D244:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0834D24C
gUnknown_0834D24C:
	.INCBIN "baserom.gba", 0x34D24C, 0x34EE4C-0x34D24C

	.GLOBAL gUnknown_0834EE4C
gUnknown_0834EE4C:
	.INCBIN "baserom.gba", 0x34EE4C, 0x34EF48-0x34EE4C

	.GLOBAL gUnknown_0834EF48
gUnknown_0834EF48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0834EF50
gUnknown_0834EF50:
	.INCBIN "baserom.gba", 0x34EF50, 0x350B50-0x34EF50

	.GLOBAL gUnknown_08350B50
gUnknown_08350B50:
	.INCBIN "baserom.gba", 0x350B50, 0x350DB4-0x350B50

	.GLOBAL gUnknown_08350DB4
gUnknown_08350DB4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08350DBC
gUnknown_08350DBC:
	.INCBIN "baserom.gba", 0x350DBC, 0x3551BC-0x350DBC

	.GLOBAL gUnknown_083551BC
gUnknown_083551BC:
	.INCBIN "baserom.gba", 0x3551BC, 0x35563C-0x3551BC

	.GLOBAL gUnknown_0835563C
gUnknown_0835563C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08355644
gUnknown_08355644:
	.INCBIN "baserom.gba", 0x355644, 0x35D644-0x355644

	.GLOBAL gUnknown_0835D644
gUnknown_0835D644:
	.INCBIN "baserom.gba", 0x35D644, 0x35DAC4-0x35D644

	.GLOBAL gUnknown_0835DAC4
gUnknown_0835DAC4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0835DACC
gUnknown_0835DACC:
	.INCBIN "baserom.gba", 0x35DACC, 0x365ACC-0x35DACC

	.GLOBAL gUnknown_08365ACC
gUnknown_08365ACC:
	.INCBIN "baserom.gba", 0x365ACC, 0x365AF0-0x365ACC

	.GLOBAL gUnknown_08365AF0
gUnknown_08365AF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08365AF8
gUnknown_08365AF8:
	.INCBIN "baserom.gba", 0x365AF8, 0x365EF8-0x365AF8

	.GLOBAL gUnknown_08365EF8
gUnknown_08365EF8:
	.INCBIN "baserom.gba", 0x365EF8, 0x366378-0x365EF8

	.GLOBAL gUnknown_08366378
gUnknown_08366378:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08366380
gUnknown_08366380:
	.INCBIN "baserom.gba", 0x366380, 0x36E380-0x366380

	.GLOBAL gUnknown_0836E380
gUnknown_0836E380:
	.INCBIN "baserom.gba", 0x36E380, 0x36E4A0-0x36E380

	.GLOBAL gUnknown_0836E4A0
gUnknown_0836E4A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0836E4A8
gUnknown_0836E4A8:
	.INCBIN "baserom.gba", 0x36E4A8, 0x3704A8-0x36E4A8

	.GLOBAL gUnknown_083704A8
gUnknown_083704A8:
	.INCBIN "baserom.gba", 0x3704A8, 0x3706E8-0x3704A8

	.GLOBAL gUnknown_083706E8
gUnknown_083706E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083706F0
gUnknown_083706F0:
	.INCBIN "baserom.gba", 0x3706F0, 0x3746F0-0x3706F0

	.GLOBAL gUnknown_083746F0
gUnknown_083746F0:
	.INCBIN "baserom.gba", 0x3746F0, 0x374930-0x3746F0

	.GLOBAL gUnknown_08374930
gUnknown_08374930:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08374938
gUnknown_08374938:
	.INCBIN "baserom.gba", 0x374938, 0x376938-0x374938

	.GLOBAL gUnknown_08376938
gUnknown_08376938:
	.INCBIN "baserom.gba", 0x376938, 0x376B78-0x376938

	.GLOBAL gUnknown_08376B78
gUnknown_08376B78:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08376B80
gUnknown_08376B80:
	.INCBIN "baserom.gba", 0x376B80, 0x37AB80-0x376B80

	.GLOBAL gUnknown_0837AB80
gUnknown_0837AB80:
	.INCBIN "baserom.gba", 0x37AB80, 0x37ACA0-0x37AB80

	.GLOBAL gUnknown_0837ACA0
gUnknown_0837ACA0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0837ACA8
gUnknown_0837ACA8:
	.INCBIN "baserom.gba", 0x37ACA8, 0x37CCA8-0x37ACA8

	.GLOBAL gUnknown_0837CCA8
gUnknown_0837CCA8:
	.INCBIN "baserom.gba", 0x37CCA8, 0x37CEE8-0x37CCA8

	.GLOBAL gUnknown_0837CEE8
gUnknown_0837CEE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0837CEF0
gUnknown_0837CEF0:
	.INCBIN "baserom.gba", 0x37CEF0, 0x380EF0-0x37CEF0

	.GLOBAL gUnknown_08380EF0
gUnknown_08380EF0:
	.INCBIN "baserom.gba", 0x380EF0, 0x381010-0x380EF0

	.GLOBAL gUnknown_08381010
gUnknown_08381010:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08381018
gUnknown_08381018:
	.INCBIN "baserom.gba", 0x381018, 0x383018-0x381018

	.GLOBAL gUnknown_08383018
gUnknown_08383018:
	.INCBIN "baserom.gba", 0x383018, 0x383744-0x383018

	.GLOBAL gUnknown_08383744
gUnknown_08383744:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0838374C
gUnknown_0838374C:
	.INCBIN "baserom.gba", 0x38374C, 0x38434C-0x38374C

	.GLOBAL gUnknown_0838434C
gUnknown_0838434C:
	.INCBIN "baserom.gba", 0x38434C, 0x3844FC-0x38434C

	.GLOBAL gUnknown_083844FC
gUnknown_083844FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08384504
gUnknown_08384504:
	.INCBIN "baserom.gba", 0x384504, 0x387504-0x384504

	.GLOBAL gUnknown_08387504
gUnknown_08387504:
	.INCBIN "baserom.gba", 0x387504, 0x387864-0x387504

	.GLOBAL gUnknown_08387864
gUnknown_08387864:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0838786C
gUnknown_0838786C:
	.INCBIN "baserom.gba", 0x38786C, 0x38D86C-0x38786C

	.GLOBAL gUnknown_0838D86C
gUnknown_0838D86C:
	.INCBIN "baserom.gba", 0x38D86C, 0x38DB3C-0x38D86C

	.GLOBAL gUnknown_0838DB3C
gUnknown_0838DB3C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0838DB44
gUnknown_0838DB44:
	.INCBIN "baserom.gba", 0x38DB44, 0x392B44-0x38DB44

	.GLOBAL gUnknown_08392B44
gUnknown_08392B44:
	.INCBIN "baserom.gba", 0x392B44, 0x392C64-0x392B44

	.GLOBAL gUnknown_08392C64
gUnknown_08392C64:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08392C6C
gUnknown_08392C6C:
	.INCBIN "baserom.gba", 0x392C6C, 0x394C6C-0x392C6C

	.GLOBAL gUnknown_08394C6C
gUnknown_08394C6C:
	.INCBIN "baserom.gba", 0x394C6C, 0x394EAC-0x394C6C

	.GLOBAL gUnknown_08394EAC
gUnknown_08394EAC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08394EB4
gUnknown_08394EB4:
	.INCBIN "baserom.gba", 0x394EB4, 0x3A4EB4-0x394EB4

	.GLOBAL gUnknown_083A4EB4
gUnknown_083A4EB4:
	.INCBIN "baserom.gba", 0x3A4EB4, 0x3A52A4-0x3A4EB4

	.GLOBAL gUnknown_083A52A4
gUnknown_083A52A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083A52AC
gUnknown_083A52AC:
	.INCBIN "baserom.gba", 0x3A52AC, 0x3C12AC-0x3A52AC

	.GLOBAL gUnknown_083C12AC
gUnknown_083C12AC:
	.INCBIN "baserom.gba", 0x3C12AC, 0x3C1708-0x3C12AC

	.GLOBAL gUnknown_083C1708
gUnknown_083C1708:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083C1710
gUnknown_083C1710:
	.INCBIN "baserom.gba", 0x3C1710, 0x3DE710-0x3C1710

	.GLOBAL gUnknown_083DE710
gUnknown_083DE710:
	.INCBIN "baserom.gba", 0x3DE710, 0x3DE89C-0x3DE710

	.GLOBAL gUnknown_083DE89C
gUnknown_083DE89C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083DE8A4
gUnknown_083DE8A4:
	.INCBIN "baserom.gba", 0x3DE8A4, 0x3E14A4-0x3DE8A4

	.GLOBAL gUnknown_083E14A4
gUnknown_083E14A4:
	.INCBIN "baserom.gba", 0x3E14A4, 0x3E17BC-0x3E14A4

	.GLOBAL gUnknown_083E17BC
gUnknown_083E17BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083E17C4
gUnknown_083E17C4:
	.INCBIN "baserom.gba", 0x3E17C4, 0x3E6FC4-0x3E17C4

	.GLOBAL gUnknown_083E6FC4
gUnknown_083E6FC4:
	.INCBIN "baserom.gba", 0x3E6FC4, 0x3E712C-0x3E6FC4

	.GLOBAL gUnknown_083E712C
gUnknown_083E712C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083E7134
gUnknown_083E7134:
	.INCBIN "baserom.gba", 0x3E7134, 0x3E8934-0x3E7134

	.GLOBAL gUnknown_083E8934
gUnknown_083E8934:
	.INCBIN "baserom.gba", 0x3E8934, 0x3E8A30-0x3E8934

	.GLOBAL gUnknown_083E8A30
gUnknown_083E8A30:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083E8A38
gUnknown_083E8A38:
	.INCBIN "baserom.gba", 0x3E8A38, 0x3EA638-0x3E8A38

	.GLOBAL gUnknown_083EA638
gUnknown_083EA638:
	.INCBIN "baserom.gba", 0x3EA638, 0x3EA734-0x3EA638

	.GLOBAL gUnknown_083EA734
gUnknown_083EA734:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083EA73C
gUnknown_083EA73C:
	.INCBIN "baserom.gba", 0x3EA73C, 0x3EC33C-0x3EA73C

	.GLOBAL gUnknown_083EC33C
gUnknown_083EC33C:
	.INCBIN "baserom.gba", 0x3EC33C, 0x3ECC3C-0x3EC33C

	.GLOBAL gUnknown_083ECC3C
gUnknown_083ECC3C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083ECC44
gUnknown_083ECC44:
	.INCBIN "baserom.gba", 0x3ECC44, 0x3F4C44-0x3ECC44

	.GLOBAL gUnknown_083F4C44
gUnknown_083F4C44:
	.INCBIN "baserom.gba", 0x3F4C44, 0x3F4E84-0x3F4C44

	.GLOBAL gUnknown_083F4E84
gUnknown_083F4E84:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083F4E8C
gUnknown_083F4E8C:
	.INCBIN "baserom.gba", 0x3F4E8C, 0x3F8E8C-0x3F4E8C

	.GLOBAL gUnknown_083F8E8C
gUnknown_083F8E8C:
	.INCBIN "baserom.gba", 0x3F8E8C, 0x3F981C-0x3F8E8C

	.GLOBAL gUnknown_083F981C
gUnknown_083F981C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083F9824
gUnknown_083F9824:
	.INCBIN "baserom.gba", 0x3F9824, 0x3FE024-0x3F9824

	.GLOBAL gUnknown_083FE024
gUnknown_083FE024:
	.INCBIN "baserom.gba", 0x3FE024, 0x3FE4EC-0x3FE024

	.GLOBAL gUnknown_083FE4EC
gUnknown_083FE4EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_083FE4F4
gUnknown_083FE4F4:
	.INCBIN "baserom.gba", 0x3FE4F4, 0x4064F4-0x3FE4F4

	.GLOBAL gUnknown_084064F4
gUnknown_084064F4:
	.INCBIN "baserom.gba", 0x4064F4, 0x4068E4-0x4064F4

	.GLOBAL gUnknown_084068E4
gUnknown_084068E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084068EC
gUnknown_084068EC:
	.INCBIN "baserom.gba", 0x4068EC, 0x40A8EC-0x4068EC

	.GLOBAL gUnknown_0840A8EC
gUnknown_0840A8EC:
	.INCBIN "baserom.gba", 0x40A8EC, 0x40A9E8-0x40A8EC

	.GLOBAL gUnknown_0840A9E8
gUnknown_0840A9E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0840A9F0
gUnknown_0840A9F0:
	.INCBIN "baserom.gba", 0x40A9F0, 0x40C5F0-0x40A9F0

	.GLOBAL gUnknown_0840C5F0
gUnknown_0840C5F0:
	.INCBIN "baserom.gba", 0x40C5F0, 0x40C734-0x40C5F0

	.GLOBAL gUnknown_0840C734
gUnknown_0840C734:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0840C73C
gUnknown_0840C73C:
	.INCBIN "baserom.gba", 0x40C73C, 0x40D93C-0x40C73C

	.GLOBAL gUnknown_0840D93C
gUnknown_0840D93C:
	.INCBIN "baserom.gba", 0x40D93C, 0x40D9A8-0x40D93C

	.GLOBAL gUnknown_0840D9A8
gUnknown_0840D9A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0840D9B0
gUnknown_0840D9B0:
	.INCBIN "baserom.gba", 0x40D9B0, 0x40E5B0-0x40D9B0

	.GLOBAL gUnknown_0840E5B0
gUnknown_0840E5B0:
	.INCBIN "baserom.gba", 0x40E5B0, 0x40E6F4-0x40E5B0

	.GLOBAL gUnknown_0840E6F4
gUnknown_0840E6F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0840E6FC
gUnknown_0840E6FC:
	.INCBIN "baserom.gba", 0x40E6FC, 0x40F8FC-0x40E6FC

	.GLOBAL gUnknown_0840F8FC
gUnknown_0840F8FC:
	.INCBIN "baserom.gba", 0x40F8FC, 0x40FC5C-0x40F8FC

	.GLOBAL gUnknown_0840FC5C
gUnknown_0840FC5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0840FC64
gUnknown_0840FC64:
	.INCBIN "baserom.gba", 0x40FC64, 0x415C64-0x40FC64

	.GLOBAL gUnknown_08415C64
gUnknown_08415C64:
	.INCBIN "baserom.gba", 0x415C64, 0x415EA4-0x415C64

	.GLOBAL gUnknown_08415EA4
gUnknown_08415EA4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08415EAC
gUnknown_08415EAC:
	.INCBIN "baserom.gba", 0x415EAC, 0x419EAC-0x415EAC

	.GLOBAL gUnknown_08419EAC
gUnknown_08419EAC:
	.INCBIN "baserom.gba", 0x419EAC, 0x41A0EC-0x419EAC

	.GLOBAL gUnknown_0841A0EC
gUnknown_0841A0EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0841A0F4
gUnknown_0841A0F4:
	.INCBIN "baserom.gba", 0x41A0F4, 0x41E0F4-0x41A0F4

	.GLOBAL gUnknown_0841E0F4
gUnknown_0841E0F4:
	.INCBIN "baserom.gba", 0x41E0F4, 0x41E454-0x41E0F4

	.GLOBAL gUnknown_0841E454
gUnknown_0841E454:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0841E45C
gUnknown_0841E45C:
	.INCBIN "baserom.gba", 0x41E45C, 0x42445C-0x41E45C

	.GLOBAL gUnknown_0842445C
gUnknown_0842445C:
	.INCBIN "baserom.gba", 0x42445C, 0x424558-0x42445C

	.GLOBAL gUnknown_08424558
gUnknown_08424558:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08424560
gUnknown_08424560:
	.INCBIN "baserom.gba", 0x424560, 0x426160-0x424560

	.GLOBAL gUnknown_08426160
gUnknown_08426160:
	.INCBIN "baserom.gba", 0x426160, 0x426508-0x426160

	.GLOBAL gUnknown_08426508
gUnknown_08426508:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08426510
gUnknown_08426510:
	.INCBIN "baserom.gba", 0x426510, 0x42CD10-0x426510

	.GLOBAL gUnknown_0842CD10
gUnknown_0842CD10:
	.INCBIN "baserom.gba", 0x42CD10, 0x42D004-0x42CD10

	.GLOBAL gUnknown_0842D004
gUnknown_0842D004:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0842D00C
gUnknown_0842D00C:
	.INCBIN "baserom.gba", 0x42D00C, 0x43240C-0x42D00C

	.GLOBAL gUnknown_0843240C
gUnknown_0843240C:
	.INCBIN "baserom.gba", 0x43240C, 0x4325BC-0x43240C

	.GLOBAL gUnknown_084325BC
gUnknown_084325BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084325C4
gUnknown_084325C4:
	.INCBIN "baserom.gba", 0x4325C4, 0x4355C4-0x4325C4

	.GLOBAL gUnknown_084355C4
gUnknown_084355C4:
	.INCBIN "baserom.gba", 0x4355C4, 0x435804-0x4355C4

	.GLOBAL gUnknown_08435804
gUnknown_08435804:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0843580C
gUnknown_0843580C:
	.INCBIN "baserom.gba", 0x43580C, 0x43980C-0x43580C

	.GLOBAL gUnknown_0843980C
gUnknown_0843980C:
	.INCBIN "baserom.gba", 0x43980C, 0x439A4C-0x43980C

	.GLOBAL gUnknown_08439A4C
gUnknown_08439A4C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08439A54
gUnknown_08439A54:
	.INCBIN "baserom.gba", 0x439A54, 0x43DA54-0x439A54

	.GLOBAL gUnknown_0843DA54
gUnknown_0843DA54:
	.INCBIN "baserom.gba", 0x43DA54, 0x43DED4-0x43DA54

	.GLOBAL gUnknown_0843DED4
gUnknown_0843DED4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0843DEDC
gUnknown_0843DEDC:
	.INCBIN "baserom.gba", 0x43DEDC, 0x445EDC-0x43DEDC

	.GLOBAL gUnknown_08445EDC
gUnknown_08445EDC:
	.INCBIN "baserom.gba", 0x445EDC, 0x446314-0x445EDC

	.GLOBAL gUnknown_08446314
gUnknown_08446314:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0844631C
gUnknown_0844631C:
	.INCBIN "baserom.gba", 0x44631C, 0x44DB1C-0x44631C

	.GLOBAL gUnknown_0844DB1C
gUnknown_0844DB1C:
	.INCBIN "baserom.gba", 0x44DB1C, 0x44DE58-0x44DB1C

	.GLOBAL gUnknown_0844DE58
gUnknown_0844DE58:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0844DE60
gUnknown_0844DE60:
	.INCBIN "baserom.gba", 0x44DE60, 0x453A60-0x44DE60

	.GLOBAL gUnknown_08453A60
gUnknown_08453A60:
	.INCBIN "baserom.gba", 0x453A60, 0x453CA0-0x453A60

	.GLOBAL gUnknown_08453CA0
gUnknown_08453CA0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08453CA8
gUnknown_08453CA8:
	.INCBIN "baserom.gba", 0x453CA8, 0x457CA8-0x453CA8

	.GLOBAL gUnknown_08457CA8
gUnknown_08457CA8:
	.INCBIN "baserom.gba", 0x457CA8, 0x457D38-0x457CA8

	.GLOBAL gUnknown_08457D38
gUnknown_08457D38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08457D40
gUnknown_08457D40:
	.INCBIN "baserom.gba", 0x457D40, 0x458D40-0x457D40

	.GLOBAL gUnknown_08458D40
gUnknown_08458D40:
	.INCBIN "baserom.gba", 0x458D40, 0x458F14-0x458D40

	.GLOBAL gUnknown_08458F14
gUnknown_08458F14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08458F1C
gUnknown_08458F1C:
	.INCBIN "baserom.gba", 0x458F1C, 0x45C31C-0x458F1C

	.GLOBAL gUnknown_0845C31C
gUnknown_0845C31C:
	.INCBIN "baserom.gba", 0x45C31C, 0x45C43C-0x45C31C

	.GLOBAL gUnknown_0845C43C
gUnknown_0845C43C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0845C444
gUnknown_0845C444:
	.INCBIN "baserom.gba", 0x45C444, 0x45E444-0x45C444

	.GLOBAL gUnknown_0845E444
gUnknown_0845E444:
	.INCBIN "baserom.gba", 0x45E444, 0x45E564-0x45E444

	.GLOBAL gUnknown_0845E564
gUnknown_0845E564:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0845E56C
gUnknown_0845E56C:
	.INCBIN "baserom.gba", 0x45E56C, 0x46056C-0x45E56C

	.GLOBAL gUnknown_0846056C
gUnknown_0846056C:
	.INCBIN "baserom.gba", 0x46056C, 0x4608CC-0x46056C

	.GLOBAL gUnknown_084608CC
gUnknown_084608CC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084608D4
gUnknown_084608D4:
	.INCBIN "baserom.gba", 0x4608D4, 0x4668D4-0x4608D4

	.GLOBAL gUnknown_084668D4
gUnknown_084668D4:
	.INCBIN "baserom.gba", 0x4668D4, 0x466B14-0x4668D4

	.GLOBAL gUnknown_08466B14
gUnknown_08466B14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08466B1C
gUnknown_08466B1C:
	.INCBIN "baserom.gba", 0x466B1C, 0x46AB1C-0x466B1C

	.GLOBAL gUnknown_0846AB1C
gUnknown_0846AB1C:
	.INCBIN "baserom.gba", 0x46AB1C, 0x46ACCC-0x46AB1C

	.GLOBAL gUnknown_0846ACCC
gUnknown_0846ACCC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0846ACD4
gUnknown_0846ACD4:
	.INCBIN "baserom.gba", 0x46ACD4, 0x46DCD4-0x46ACD4

	.GLOBAL gUnknown_0846DCD4
gUnknown_0846DCD4:
	.INCBIN "baserom.gba", 0x46DCD4, 0x46DEA8-0x46DCD4

	.GLOBAL gUnknown_0846DEA8
gUnknown_0846DEA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0846DEB0
gUnknown_0846DEB0:
	.INCBIN "baserom.gba", 0x46DEB0, 0x4712B0-0x46DEB0

	.GLOBAL gUnknown_084712B0
gUnknown_084712B0:
	.INCBIN "baserom.gba", 0x4712B0, 0x4714F0-0x4712B0

	.GLOBAL gUnknown_084714F0
gUnknown_084714F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084714F8
gUnknown_084714F8:
	.INCBIN "baserom.gba", 0x4714F8, 0x4754F8-0x4714F8

	.GLOBAL gUnknown_084754F8
gUnknown_084754F8:
	.INCBIN "baserom.gba", 0x4754F8, 0x475A08-0x4754F8

	.GLOBAL gUnknown_08475A08
gUnknown_08475A08:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08475A10
gUnknown_08475A10:
	.INCBIN "baserom.gba", 0x475A10, 0x47EA10-0x475A10

	.GLOBAL gUnknown_0847EA10
gUnknown_0847EA10:
	.INCBIN "baserom.gba", 0x47EA10, 0x47EB78-0x47EA10

	.GLOBAL gUnknown_0847EB78
gUnknown_0847EB78:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0847EB80
gUnknown_0847EB80:
	.INCBIN "baserom.gba", 0x47EB80, 0x481380-0x47EB80

	.GLOBAL gUnknown_08481380
gUnknown_08481380:
	.INCBIN "baserom.gba", 0x481380, 0x4816E0-0x481380

	.GLOBAL gUnknown_084816E0
gUnknown_084816E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084816E8
gUnknown_084816E8:
	.INCBIN "baserom.gba", 0x4816E8, 0x4876E8-0x4816E8

	.GLOBAL gUnknown_084876E8
gUnknown_084876E8:
	.INCBIN "baserom.gba", 0x4876E8, 0x487808-0x4876E8

	.GLOBAL gUnknown_08487808
gUnknown_08487808:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08487810
gUnknown_08487810:
	.INCBIN "baserom.gba", 0x487810, 0x489810-0x487810

	.GLOBAL gUnknown_08489810
gUnknown_08489810:
	.INCBIN "baserom.gba", 0x489810, 0x489B70-0x489810

	.GLOBAL gUnknown_08489B70
gUnknown_08489B70:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08489B78
gUnknown_08489B78:
	.INCBIN "baserom.gba", 0x489B78, 0x48FB78-0x489B78

	.GLOBAL gUnknown_0848FB78
gUnknown_0848FB78:
	.INCBIN "baserom.gba", 0x48FB78, 0x48FB9C-0x48FB78

	.GLOBAL gUnknown_0848FB9C
gUnknown_0848FB9C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0848FBA4
gUnknown_0848FBA4:
	.INCBIN "baserom.gba", 0x48FBA4, 0x48FFA4-0x48FBA4

	.GLOBAL gUnknown_0848FFA4
gUnknown_0848FFA4:
	.INCBIN "baserom.gba", 0x48FFA4, 0x4900A0-0x48FFA4

	.GLOBAL gUnknown_084900A0
gUnknown_084900A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084900A8
gUnknown_084900A8:
	.INCBIN "baserom.gba", 0x4900A8, 0x491CA8-0x4900A8

	.GLOBAL gUnknown_08491CA8
gUnknown_08491CA8:
	.INCBIN "baserom.gba", 0x491CA8, 0x491EE8-0x491CA8

	.GLOBAL gUnknown_08491EE8
gUnknown_08491EE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08491EF0
gUnknown_08491EF0:
	.INCBIN "baserom.gba", 0x491EF0, 0x495EF0-0x491EF0

	.GLOBAL gUnknown_08495EF0
gUnknown_08495EF0:
	.INCBIN "baserom.gba", 0x495EF0, 0x4960A0-0x495EF0

	.GLOBAL gUnknown_084960A0
gUnknown_084960A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084960A8
gUnknown_084960A8:
	.INCBIN "baserom.gba", 0x4960A8, 0x4990A8-0x4960A8

	.GLOBAL gUnknown_084990A8
gUnknown_084990A8:
	.INCBIN "baserom.gba", 0x4990A8, 0x4992E8-0x4990A8

	.GLOBAL gUnknown_084992E8
gUnknown_084992E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084992F0
gUnknown_084992F0:
	.INCBIN "baserom.gba", 0x4992F0, 0x49D2F0-0x4992F0

	.GLOBAL gUnknown_0849D2F0
gUnknown_0849D2F0:
	.INCBIN "baserom.gba", 0x49D2F0, 0x49D380-0x49D2F0

	.GLOBAL gUnknown_0849D380
gUnknown_0849D380:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0849D388
gUnknown_0849D388:
	.INCBIN "baserom.gba", 0x49D388, 0x49E388-0x49D388

	.GLOBAL gUnknown_0849E388
gUnknown_0849E388:
	.INCBIN "baserom.gba", 0x49E388, 0x49E4A8-0x49E388

	.GLOBAL gUnknown_0849E4A8
gUnknown_0849E4A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0849E4B0
gUnknown_0849E4B0:
	.INCBIN "baserom.gba", 0x49E4B0, 0x4A04B0-0x49E4B0

	.GLOBAL gUnknown_084A04B0
gUnknown_084A04B0:
	.INCBIN "baserom.gba", 0x4A04B0, 0x4A05D0-0x4A04B0

	.GLOBAL gUnknown_084A05D0
gUnknown_084A05D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084A05D8
gUnknown_084A05D8:
	.INCBIN "baserom.gba", 0x4A05D8, 0x4A25D8-0x4A05D8

	.GLOBAL gUnknown_084A25D8
gUnknown_084A25D8:
	.INCBIN "baserom.gba", 0x4A25D8, 0x4A27F4-0x4A25D8

	.GLOBAL gUnknown_084A27F4
gUnknown_084A27F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084A27FC
gUnknown_084A27FC:
	.INCBIN "baserom.gba", 0x4A27FC, 0x4A63FC-0x4A27FC

	.GLOBAL gUnknown_084A63FC
gUnknown_084A63FC:
	.INCBIN "baserom.gba", 0x4A63FC, 0x4A6684-0x4A63FC

	.GLOBAL gUnknown_084A6684
gUnknown_084A6684:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084A668C
gUnknown_084A668C:
	.INCBIN "baserom.gba", 0x4A668C, 0x4AAE8C-0x4A668C

	.GLOBAL gUnknown_084AAE8C
gUnknown_084AAE8C:
	.INCBIN "baserom.gba", 0x4AAE8C, 0x4AB30C-0x4AAE8C

	.GLOBAL gUnknown_084AB30C
gUnknown_084AB30C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084AB314
gUnknown_084AB314:
	.INCBIN "baserom.gba", 0x4AB314, 0x4AB714-0x4AB314

	.GLOBAL gUnknown_084AB714
gUnknown_084AB714:
	.INCBIN "baserom.gba", 0x4AB714, 0x4AB8C4-0x4AB714

	.GLOBAL gUnknown_084AB8C4
gUnknown_084AB8C4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084AB8CC
gUnknown_084AB8CC:
	.INCBIN "baserom.gba", 0x4AB8CC, 0x4ABCCC-0x4AB8CC

	.GLOBAL gUnknown_084ABCCC
gUnknown_084ABCCC:
	.INCBIN "baserom.gba", 0x4ABCCC, 0x4ABE34-0x4ABCCC

	.GLOBAL gUnknown_084ABE34
gUnknown_084ABE34:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084ABE3C
gUnknown_084ABE3C:
	.INCBIN "baserom.gba", 0x4ABE3C, 0x4ADE3C-0x4ABE3C

	.GLOBAL gUnknown_084ADE3C
gUnknown_084ADE3C:
	.INCBIN "baserom.gba", 0x4ADE3C, 0x4ADF5C-0x4ADE3C

	.GLOBAL gUnknown_084ADF5C
gUnknown_084ADF5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084ADF64
gUnknown_084ADF64:
	.INCBIN "baserom.gba", 0x4ADF64, 0x4AFF64-0x4ADF64

	.GLOBAL gUnknown_084AFF64
gUnknown_084AFF64:
	.INCBIN "baserom.gba", 0x4AFF64, 0x4B0060-0x4AFF64

	.GLOBAL gUnknown_084B0060
gUnknown_084B0060:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084B0068
gUnknown_084B0068:
	.INCBIN "baserom.gba", 0x4B0068, 0x4B1C68-0x4B0068

	.GLOBAL gUnknown_084B1C68
gUnknown_084B1C68:
	.INCBIN "baserom.gba", 0x4B1C68, 0x4B1EA8-0x4B1C68

	.GLOBAL gUnknown_084B1EA8
gUnknown_084B1EA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084B1EB0
gUnknown_084B1EB0:
	.INCBIN "baserom.gba", 0x4B1EB0, 0x4B5EB0-0x4B1EB0

	.GLOBAL gUnknown_084B5EB0
gUnknown_084B5EB0:
	.INCBIN "baserom.gba", 0x4B5EB0, 0x4B61EC-0x4B5EB0

	.GLOBAL gUnknown_084B61EC
gUnknown_084B61EC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084B61F4
gUnknown_084B61F4:
	.INCBIN "baserom.gba", 0x4B61F4, 0x4BBDF4-0x4B61F4

	.GLOBAL gUnknown_084BBDF4
gUnknown_084BBDF4:
	.INCBIN "baserom.gba", 0x4BBDF4, 0x4BC274-0x4BBDF4

	.GLOBAL gUnknown_084BC274
gUnknown_084BC274:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084BC27C
gUnknown_084BC27C:
	.INCBIN "baserom.gba", 0x4BC27C, 0x4C427C-0x4BC27C

	.GLOBAL gUnknown_084C427C
gUnknown_084C427C:
	.INCBIN "baserom.gba", 0x4C427C, 0x4C4624-0x4C427C

	.GLOBAL gUnknown_084C4624
gUnknown_084C4624:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084C462C
gUnknown_084C462C:
	.INCBIN "baserom.gba", 0x4C462C, 0x4DE62C-0x4C462C

	.GLOBAL gUnknown_084DE62C
gUnknown_084DE62C:
	.INCBIN "baserom.gba", 0x4DE62C, 0x4DE7DC-0x4DE62C

	.GLOBAL gUnknown_084DE7DC
gUnknown_084DE7DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084DE7E4
gUnknown_084DE7E4:
	.INCBIN "baserom.gba", 0x4DE7E4, 0x4E17E4-0x4DE7E4

	.GLOBAL gUnknown_084E17E4
gUnknown_084E17E4:
	.INCBIN "baserom.gba", 0x4E17E4, 0x4E1904-0x4E17E4

	.GLOBAL gUnknown_084E1904
gUnknown_084E1904:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084E190C
gUnknown_084E190C:
	.INCBIN "baserom.gba", 0x4E190C, 0x4E390C-0x4E190C

	.GLOBAL gUnknown_084E390C
gUnknown_084E390C:
	.INCBIN "baserom.gba", 0x4E390C, 0x4E3B4C-0x4E390C

	.GLOBAL gUnknown_084E3B4C
gUnknown_084E3B4C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084E3B54
gUnknown_084E3B54:
	.INCBIN "baserom.gba", 0x4E3B54, 0x4E7B54-0x4E3B54

	.GLOBAL gUnknown_084E7B54
gUnknown_084E7B54:
	.INCBIN "baserom.gba", 0x4E7B54, 0x4E7C50-0x4E7B54

	.GLOBAL gUnknown_084E7C50
gUnknown_084E7C50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084E7C58
gUnknown_084E7C58:
	.INCBIN "baserom.gba", 0x4E7C58, 0x4E9858-0x4E7C58

	.GLOBAL gUnknown_084E9858
gUnknown_084E9858:
	.INCBIN "baserom.gba", 0x4E9858, 0x4E9954-0x4E9858

	.GLOBAL gUnknown_084E9954
gUnknown_084E9954:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084E995C
gUnknown_084E995C:
	.INCBIN "baserom.gba", 0x4E995C, 0x4EB55C-0x4E995C

	.GLOBAL gUnknown_084EB55C
gUnknown_084EB55C:
	.INCBIN "baserom.gba", 0x4EB55C, 0x4EB7E4-0x4EB55C

	.GLOBAL gUnknown_084EB7E4
gUnknown_084EB7E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084EB7EC
gUnknown_084EB7EC:
	.INCBIN "baserom.gba", 0x4EB7EC, 0x4EFFEC-0x4EB7EC

	.GLOBAL gUnknown_084EFFEC
gUnknown_084EFFEC:
	.INCBIN "baserom.gba", 0x4EFFEC, 0x4F010C-0x4EFFEC

	.GLOBAL gUnknown_084F010C
gUnknown_084F010C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084F0114
gUnknown_084F0114:
	.INCBIN "baserom.gba", 0x4F0114, 0x4F2114-0x4F0114

	.GLOBAL gUnknown_084F2114
gUnknown_084F2114:
	.INCBIN "baserom.gba", 0x4F2114, 0x4F2210-0x4F2114

	.GLOBAL gUnknown_084F2210
gUnknown_084F2210:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084F2218
gUnknown_084F2218:
	.INCBIN "baserom.gba", 0x4F2218, 0x4F3E18-0x4F2218

	.GLOBAL gUnknown_084F3E18
gUnknown_084F3E18:
	.INCBIN "baserom.gba", 0x4F3E18, 0x4F3F38-0x4F3E18

	.GLOBAL gUnknown_084F3F38
gUnknown_084F3F38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084F3F40
gUnknown_084F3F40:
	.INCBIN "baserom.gba", 0x4F3F40, 0x4F5F40-0x4F3F40

	.GLOBAL gUnknown_084F5F40
gUnknown_084F5F40:
	.INCBIN "baserom.gba", 0x4F5F40, 0x4F61C8-0x4F5F40

	.GLOBAL gUnknown_084F61C8
gUnknown_084F61C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084F61D0
gUnknown_084F61D0:
	.INCBIN "baserom.gba", 0x4F61D0, 0x4FA9D0-0x4F61D0

	.GLOBAL gUnknown_084FA9D0
gUnknown_084FA9D0:
	.INCBIN "baserom.gba", 0x4FA9D0, 0x4FAACC-0x4FA9D0

	.GLOBAL gUnknown_084FAACC
gUnknown_084FAACC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084FAAD4
gUnknown_084FAAD4:
	.INCBIN "baserom.gba", 0x4FAAD4, 0x4FC6D4-0x4FAAD4

	.GLOBAL gUnknown_084FC6D4
gUnknown_084FC6D4:
	.INCBIN "baserom.gba", 0x4FC6D4, 0x4FC7D0-0x4FC6D4

	.GLOBAL gUnknown_084FC7D0
gUnknown_084FC7D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084FC7D8
gUnknown_084FC7D8:
	.INCBIN "baserom.gba", 0x4FC7D8, 0x4FE3D8-0x4FC7D8

	.GLOBAL gUnknown_084FE3D8
gUnknown_084FE3D8:
	.INCBIN "baserom.gba", 0x4FE3D8, 0x4FE660-0x4FE3D8

	.GLOBAL gUnknown_084FE660
gUnknown_084FE660:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_084FE668
gUnknown_084FE668:
	.INCBIN "baserom.gba", 0x4FE668, 0x502E68-0x4FE668

	.GLOBAL gUnknown_08502E68
gUnknown_08502E68:
	.INCBIN "baserom.gba", 0x502E68, 0x502F64-0x502E68

	.GLOBAL gUnknown_08502F64
gUnknown_08502F64:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08502F6C
gUnknown_08502F6C:
	.INCBIN "baserom.gba", 0x502F6C, 0x504B6C-0x502F6C

	.GLOBAL gUnknown_08504B6C
gUnknown_08504B6C:
	.INCBIN "baserom.gba", 0x504B6C, 0x504C68-0x504B6C

	.GLOBAL gUnknown_08504C68
gUnknown_08504C68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08504C70
gUnknown_08504C70:
	.INCBIN "baserom.gba", 0x504C70, 0x506870-0x504C70

	.GLOBAL gUnknown_08506870
gUnknown_08506870:
	.INCBIN "baserom.gba", 0x506870, 0x506AB0-0x506870

	.GLOBAL gUnknown_08506AB0
gUnknown_08506AB0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08506AB8
gUnknown_08506AB8:
	.INCBIN "baserom.gba", 0x506AB8, 0x50AAB8-0x506AB8

	.GLOBAL gUnknown_0850AAB8
gUnknown_0850AAB8:
	.INCBIN "baserom.gba", 0x50AAB8, 0x50AB90-0x50AAB8

	.GLOBAL gUnknown_0850AB90
gUnknown_0850AB90:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0850AB98
gUnknown_0850AB98:
	.INCBIN "baserom.gba", 0x50AB98, 0x50C398-0x50AB98

	.GLOBAL gUnknown_0850C398
gUnknown_0850C398:
	.INCBIN "baserom.gba", 0x50C398, 0x50C5D8-0x50C398

	.GLOBAL gUnknown_0850C5D8
gUnknown_0850C5D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0850C5E0
gUnknown_0850C5E0:
	.INCBIN "baserom.gba", 0x50C5E0, 0x5105E0-0x50C5E0

	.GLOBAL gUnknown_085105E0
gUnknown_085105E0:
	.INCBIN "baserom.gba", 0x5105E0, 0x5106DC-0x5105E0

	.GLOBAL gUnknown_085106DC
gUnknown_085106DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085106E4
gUnknown_085106E4:
	.INCBIN "baserom.gba", 0x5106E4, 0x5122E4-0x5106E4

	.GLOBAL gUnknown_085122E4
gUnknown_085122E4:
	.INCBIN "baserom.gba", 0x5122E4, 0x5123E0-0x5122E4

	.GLOBAL gUnknown_085123E0
gUnknown_085123E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085123E8
gUnknown_085123E8:
	.INCBIN "baserom.gba", 0x5123E8, 0x513FE8-0x5123E8

	.GLOBAL gUnknown_08513FE8
gUnknown_08513FE8:
	.INCBIN "baserom.gba", 0x513FE8, 0x51400C-0x513FE8

	.GLOBAL gUnknown_0851400C
gUnknown_0851400C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08514014
gUnknown_08514014:
	.INCBIN "baserom.gba", 0x514014, 0x514214-0x514014

	.GLOBAL gUnknown_08514214
gUnknown_08514214:
	.INCBIN "baserom.gba", 0x514214, 0x514478-0x514214

	.GLOBAL gUnknown_08514478
gUnknown_08514478:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08514480
gUnknown_08514480:
	.INCBIN "baserom.gba", 0x514480, 0x518880-0x514480

	.GLOBAL gUnknown_08518880
gUnknown_08518880:
	.INCBIN "baserom.gba", 0x518880, 0x5188C8-0x518880

	.GLOBAL gUnknown_085188C8
gUnknown_085188C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085188D0
gUnknown_085188D0:
	.INCBIN "baserom.gba", 0x5188D0, 0x5190D0-0x5188D0

	.GLOBAL gUnknown_085190D0
gUnknown_085190D0:
	.INCBIN "baserom.gba", 0x5190D0, 0x5191F0-0x5190D0

	.GLOBAL gUnknown_085191F0
gUnknown_085191F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085191F8
gUnknown_085191F8:
	.INCBIN "baserom.gba", 0x5191F8, 0x51B1F8-0x5191F8

	.GLOBAL gUnknown_0851B1F8
gUnknown_0851B1F8:
	.INCBIN "baserom.gba", 0x51B1F8, 0x51B438-0x51B1F8

	.GLOBAL gUnknown_0851B438
gUnknown_0851B438:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0851B440
gUnknown_0851B440:
	.INCBIN "baserom.gba", 0x51B440, 0x51F440-0x51B440

	.GLOBAL gUnknown_0851F440
gUnknown_0851F440:
	.INCBIN "baserom.gba", 0x51F440, 0x51F560-0x51F440

	.GLOBAL gUnknown_0851F560
gUnknown_0851F560:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0851F568
gUnknown_0851F568:
	.INCBIN "baserom.gba", 0x51F568, 0x521568-0x51F568

	.GLOBAL gUnknown_08521568
gUnknown_08521568:
	.INCBIN "baserom.gba", 0x521568, 0x521688-0x521568

	.GLOBAL gUnknown_08521688
gUnknown_08521688:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08521690
gUnknown_08521690:
	.INCBIN "baserom.gba", 0x521690, 0x523690-0x521690

	.GLOBAL gUnknown_08523690
gUnknown_08523690:
	.INCBIN "baserom.gba", 0x523690, 0x5238D0-0x523690

	.GLOBAL gUnknown_085238D0
gUnknown_085238D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085238D8
gUnknown_085238D8:
	.INCBIN "baserom.gba", 0x5238D8, 0x5278D8-0x5238D8

	.GLOBAL gUnknown_085278D8
gUnknown_085278D8:
	.INCBIN "baserom.gba", 0x5278D8, 0x527B18-0x5278D8

	.GLOBAL gUnknown_08527B18
gUnknown_08527B18:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08527B20
gUnknown_08527B20:
	.INCBIN "baserom.gba", 0x527B20, 0x52BB20-0x527B20

	.GLOBAL gUnknown_0852BB20
gUnknown_0852BB20:
	.INCBIN "baserom.gba", 0x52BB20, 0x52BD60-0x52BB20

	.GLOBAL gUnknown_0852BD60
gUnknown_0852BD60:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0852BD68
gUnknown_0852BD68:
	.INCBIN "baserom.gba", 0x52BD68, 0x52FD68-0x52BD68

	.GLOBAL gUnknown_0852FD68
gUnknown_0852FD68:
	.INCBIN "baserom.gba", 0x52FD68, 0x52FFA8-0x52FD68

	.GLOBAL gUnknown_0852FFA8
gUnknown_0852FFA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0852FFB0
gUnknown_0852FFB0:
	.INCBIN "baserom.gba", 0x52FFB0, 0x533FB0-0x52FFB0

	.GLOBAL gUnknown_08533FB0
gUnknown_08533FB0:
	.INCBIN "baserom.gba", 0x533FB0, 0x5341F0-0x533FB0

	.GLOBAL gUnknown_085341F0
gUnknown_085341F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085341F8
gUnknown_085341F8:
	.INCBIN "baserom.gba", 0x5341F8, 0x537DF8-0x5341F8

	.GLOBAL gUnknown_08537DF8
gUnknown_08537DF8:
	.INCBIN "baserom.gba", 0x537DF8, 0x538038-0x537DF8

	.GLOBAL gUnknown_08538038
gUnknown_08538038:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08538040
gUnknown_08538040:
	.INCBIN "baserom.gba", 0x538040, 0x53C040-0x538040

	.GLOBAL gUnknown_0853C040
gUnknown_0853C040:
	.INCBIN "baserom.gba", 0x53C040, 0x53C3A0-0x53C040

	.GLOBAL gUnknown_0853C3A0
gUnknown_0853C3A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0853C3A8
gUnknown_0853C3A8:
	.INCBIN "baserom.gba", 0x53C3A8, 0x5423A8-0x53C3A8

	.GLOBAL gUnknown_085423A8
gUnknown_085423A8:
	.INCBIN "baserom.gba", 0x5423A8, 0x542414-0x5423A8

	.GLOBAL gUnknown_08542414
gUnknown_08542414:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0854241C
gUnknown_0854241C:
	.INCBIN "baserom.gba", 0x54241C, 0x54301C-0x54241C

	.GLOBAL gUnknown_0854301C
gUnknown_0854301C:
	.INCBIN "baserom.gba", 0x54301C, 0x54337C-0x54301C

	.GLOBAL gUnknown_0854337C
gUnknown_0854337C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08543384
gUnknown_08543384:
	.INCBIN "baserom.gba", 0x543384, 0x549384-0x543384

	.GLOBAL gUnknown_08549384
gUnknown_08549384:
	.INCBIN "baserom.gba", 0x549384, 0x549534-0x549384

	.GLOBAL gUnknown_08549534
gUnknown_08549534:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0854953C
gUnknown_0854953C:
	.INCBIN "baserom.gba", 0x54953C, 0x54C53C-0x54953C

	.GLOBAL gUnknown_0854C53C
gUnknown_0854C53C:
	.INCBIN "baserom.gba", 0x54C53C, 0x54C77C-0x54C53C

	.GLOBAL gUnknown_0854C77C
gUnknown_0854C77C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0854C784
gUnknown_0854C784:
	.INCBIN "baserom.gba", 0x54C784, 0x550784-0x54C784

	.GLOBAL gUnknown_08550784
gUnknown_08550784:
	.INCBIN "baserom.gba", 0x550784, 0x5509C4-0x550784

	.GLOBAL gUnknown_085509C4
gUnknown_085509C4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085509CC
gUnknown_085509CC:
	.INCBIN "baserom.gba", 0x5509CC, 0x5549CC-0x5509CC

	.GLOBAL gUnknown_085549CC
gUnknown_085549CC:
	.INCBIN "baserom.gba", 0x5549CC, 0x554D74-0x5549CC

	.GLOBAL gUnknown_08554D74
gUnknown_08554D74:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08554D7C
gUnknown_08554D7C:
	.INCBIN "baserom.gba", 0x554D7C, 0x55B57C-0x554D7C

	.GLOBAL gUnknown_0855B57C
gUnknown_0855B57C:
	.INCBIN "baserom.gba", 0x55B57C, 0x55B84C-0x55B57C

	.GLOBAL gUnknown_0855B84C
gUnknown_0855B84C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0855B854
gUnknown_0855B854:
	.INCBIN "baserom.gba", 0x55B854, 0x560854-0x55B854

	.GLOBAL gUnknown_08560854
gUnknown_08560854:
	.INCBIN "baserom.gba", 0x560854, 0x560ADC-0x560854

	.GLOBAL gUnknown_08560ADC
gUnknown_08560ADC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08560AE4
gUnknown_08560AE4:
	.INCBIN "baserom.gba", 0x560AE4, 0x5652E4-0x560AE4

	.GLOBAL gUnknown_085652E4
gUnknown_085652E4:
	.INCBIN "baserom.gba", 0x5652E4, 0x565524-0x5652E4

	.GLOBAL gUnknown_08565524
gUnknown_08565524:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0856552C
gUnknown_0856552C:
	.INCBIN "baserom.gba", 0x56552C, 0x56952C-0x56552C

	.GLOBAL gUnknown_0856952C
gUnknown_0856952C:
	.INCBIN "baserom.gba", 0x56952C, 0x56976C-0x56952C

	.GLOBAL gUnknown_0856976C
gUnknown_0856976C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08569774
gUnknown_08569774:
	.INCBIN "baserom.gba", 0x569774, 0x56D774-0x569774

	.GLOBAL gUnknown_0856D774
gUnknown_0856D774:
	.INCBIN "baserom.gba", 0x56D774, 0x56D924-0x56D774

	.GLOBAL gUnknown_0856D924
gUnknown_0856D924:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0856D92C
gUnknown_0856D92C:
	.INCBIN "baserom.gba", 0x56D92C, 0x57092C-0x56D92C

	.GLOBAL gUnknown_0857092C
gUnknown_0857092C:
	.INCBIN "baserom.gba", 0x57092C, 0x570AB8-0x57092C

	.GLOBAL gUnknown_08570AB8
gUnknown_08570AB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08570AC0
gUnknown_08570AC0:
	.INCBIN "baserom.gba", 0x570AC0, 0x5736C0-0x570AC0

	.GLOBAL gUnknown_085736C0
gUnknown_085736C0:
	.INCBIN "baserom.gba", 0x5736C0, 0x5737E0-0x5736C0

	.GLOBAL gUnknown_085737E0
gUnknown_085737E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085737E8
gUnknown_085737E8:
	.INCBIN "baserom.gba", 0x5737E8, 0x5757E8-0x5737E8

	.GLOBAL gUnknown_085757E8
gUnknown_085757E8:
	.INCBIN "baserom.gba", 0x5757E8, 0x575908-0x5757E8

	.GLOBAL gUnknown_08575908
gUnknown_08575908:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08575910
gUnknown_08575910:
	.INCBIN "baserom.gba", 0x575910, 0x577910-0x575910

	.GLOBAL gUnknown_08577910
gUnknown_08577910:
	.INCBIN "baserom.gba", 0x577910, 0x577A30-0x577910

	.GLOBAL gUnknown_08577A30
gUnknown_08577A30:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08577A38
gUnknown_08577A38:
	.INCBIN "baserom.gba", 0x577A38, 0x579A38-0x577A38

	.GLOBAL gUnknown_08579A38
gUnknown_08579A38:
	.INCBIN "baserom.gba", 0x579A38, 0x579C78-0x579A38

	.GLOBAL gUnknown_08579C78
gUnknown_08579C78:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08579C80
gUnknown_08579C80:
	.INCBIN "baserom.gba", 0x579C80, 0x57A480-0x579C80

	.GLOBAL gUnknown_0857A480
gUnknown_0857A480:
	.INCBIN "baserom.gba", 0x57A480, 0x57A5A0-0x57A480

	.GLOBAL gUnknown_0857A5A0
gUnknown_0857A5A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0857A5A8
gUnknown_0857A5A8:
	.INCBIN "baserom.gba", 0x57A5A8, 0x57ADA8-0x57A5A8

	.GLOBAL gUnknown_0857ADA8
gUnknown_0857ADA8:
	.INCBIN "baserom.gba", 0x57ADA8, 0x57AFE8-0x57ADA8

	.GLOBAL gUnknown_0857AFE8
gUnknown_0857AFE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0857AFF0
gUnknown_0857AFF0:
	.INCBIN "baserom.gba", 0x57AFF0, 0x57BFF0-0x57AFF0

	.GLOBAL gUnknown_0857BFF0
gUnknown_0857BFF0:
	.INCBIN "baserom.gba", 0x57BFF0, 0x57C350-0x57BFF0

	.GLOBAL gUnknown_0857C350
gUnknown_0857C350:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0857C358
gUnknown_0857C358:
	.INCBIN "baserom.gba", 0x57C358, 0x57DB58-0x57C358

	.GLOBAL gUnknown_0857DB58
gUnknown_0857DB58:
	.INCBIN "baserom.gba", 0x57DB58, 0x57E08C-0x57DB58

	.GLOBAL gUnknown_0857E08C
gUnknown_0857E08C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0857E094
gUnknown_0857E094:
	.INCBIN "baserom.gba", 0x57E094, 0x580094-0x57E094

	.GLOBAL gUnknown_08580094
gUnknown_08580094:
	.INCBIN "baserom.gba", 0x580094, 0x5809B8-0x580094

	.GLOBAL gUnknown_085809B8
gUnknown_085809B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085809C0
gUnknown_085809C0:
	.INCBIN "baserom.gba", 0x5809C0, 0x5829C0-0x5809C0

	.GLOBAL gUnknown_085829C0
gUnknown_085829C0:
	.INCBIN "baserom.gba", 0x5829C0, 0x582FA8-0x5829C0

	.GLOBAL gUnknown_08582FA8
gUnknown_08582FA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08582FB0
gUnknown_08582FB0:
	.INCBIN "baserom.gba", 0x582FB0, 0x583BB0-0x582FB0

	.GLOBAL gUnknown_08583BB0
gUnknown_08583BB0:
	.INCBIN "baserom.gba", 0x583BB0, 0x583E80-0x583BB0

	.GLOBAL gUnknown_08583E80
gUnknown_08583E80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08583E88
gUnknown_08583E88:
	.INCBIN "baserom.gba", 0x583E88, 0x585088-0x583E88

	.GLOBAL gUnknown_08585088
gUnknown_08585088:
	.INCBIN "baserom.gba", 0x585088, 0x5852C8-0x585088

	.GLOBAL gUnknown_085852C8
gUnknown_085852C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085852D0
gUnknown_085852D0:
	.INCBIN "baserom.gba", 0x5852D0, 0x5862D0-0x5852D0

	.GLOBAL gUnknown_085862D0
gUnknown_085862D0:
	.INCBIN "baserom.gba", 0x5862D0, 0x586630-0x5862D0

	.GLOBAL gUnknown_08586630
gUnknown_08586630:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08586638
gUnknown_08586638:
	.INCBIN "baserom.gba", 0x586638, 0x587E38-0x586638

	.GLOBAL gUnknown_08587E38
gUnknown_08587E38:
	.INCBIN "baserom.gba", 0x587E38, 0x5882B8-0x587E38

	.GLOBAL gUnknown_085882B8
gUnknown_085882B8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085882C0
gUnknown_085882C0:
	.INCBIN "baserom.gba", 0x5882C0, 0x5902C0-0x5882C0

	.GLOBAL gUnknown_085902C0
gUnknown_085902C0:
	.INCBIN "baserom.gba", 0x5902C0, 0x590740-0x5902C0

	.GLOBAL gUnknown_08590740
gUnknown_08590740:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08590748
gUnknown_08590748:
	.INCBIN "baserom.gba", 0x590748, 0x592748-0x590748

	.GLOBAL gUnknown_08592748
gUnknown_08592748:
	.INCBIN "baserom.gba", 0x592748, 0x592F28-0x592748

	.GLOBAL gUnknown_08592F28
gUnknown_08592F28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08592F30
gUnknown_08592F30:
	.INCBIN "baserom.gba", 0x592F30, 0x595730-0x592F30

	.GLOBAL gUnknown_08595730
gUnknown_08595730:
	.INCBIN "baserom.gba", 0x595730, 0x595970-0x595730

	.GLOBAL gUnknown_08595970
gUnknown_08595970:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08595978
gUnknown_08595978:
	.INCBIN "baserom.gba", 0x595978, 0x596978-0x595978

	.GLOBAL gUnknown_08596978
gUnknown_08596978:
	.INCBIN "baserom.gba", 0x596978, 0x596A98-0x596978

	.GLOBAL gUnknown_08596A98
gUnknown_08596A98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08596AA0
gUnknown_08596AA0:
	.INCBIN "baserom.gba", 0x596AA0, 0x5972A0-0x596AA0

	.GLOBAL gUnknown_085972A0
gUnknown_085972A0:
	.INCBIN "baserom.gba", 0x5972A0, 0x5973C0-0x5972A0

	.GLOBAL gUnknown_085973C0
gUnknown_085973C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085973C8
gUnknown_085973C8:
	.INCBIN "baserom.gba", 0x5973C8, 0x597BC8-0x5973C8

	.GLOBAL gUnknown_08597BC8
gUnknown_08597BC8:
	.INCBIN "baserom.gba", 0x597BC8, 0x597E08-0x597BC8

	.GLOBAL gUnknown_08597E08
gUnknown_08597E08:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08597E10
gUnknown_08597E10:
	.INCBIN "baserom.gba", 0x597E10, 0x598C10-0x597E10

	.GLOBAL gUnknown_08598C10
gUnknown_08598C10:
	.INCBIN "baserom.gba", 0x598C10, 0x599090-0x598C10

	.GLOBAL gUnknown_08599090
gUnknown_08599090:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08599098
gUnknown_08599098:
	.INCBIN "baserom.gba", 0x599098, 0x59B098-0x599098

	.GLOBAL gUnknown_0859B098
gUnknown_0859B098:
	.INCBIN "baserom.gba", 0x59B098, 0x59B3F8-0x59B098

	.GLOBAL gUnknown_0859B3F8
gUnknown_0859B3F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0859B400
gUnknown_0859B400:
	.INCBIN "baserom.gba", 0x59B400, 0x59CC00-0x59B400

	.GLOBAL gUnknown_0859CC00
gUnknown_0859CC00:
	.INCBIN "baserom.gba", 0x59CC00, 0x59CE40-0x59CC00

	.GLOBAL gUnknown_0859CE40
gUnknown_0859CE40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0859CE48
gUnknown_0859CE48:
	.INCBIN "baserom.gba", 0x59CE48, 0x59DD48-0x59CE48

	.GLOBAL gUnknown_0859DD48
gUnknown_0859DD48:
	.INCBIN "baserom.gba", 0x59DD48, 0x59E114-0x59DD48

	.GLOBAL gUnknown_0859E114
gUnknown_0859E114:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0859E11C
gUnknown_0859E11C:
	.INCBIN "baserom.gba", 0x59E11C, 0x59FC1C-0x59E11C

	.GLOBAL gUnknown_0859FC1C
gUnknown_0859FC1C:
	.INCBIN "baserom.gba", 0x59FC1C, 0x59FD3C-0x59FC1C

	.GLOBAL gUnknown_0859FD3C
gUnknown_0859FD3C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0859FD44
gUnknown_0859FD44:
	.INCBIN "baserom.gba", 0x59FD44, 0x5A0544-0x59FD44

	.GLOBAL gUnknown_085A0544
gUnknown_085A0544:
	.INCBIN "baserom.gba", 0x5A0544, 0x5A0568-0x5A0544

	.GLOBAL gUnknown_085A0568
gUnknown_085A0568:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A0570
gUnknown_085A0570:
	.INCBIN "baserom.gba", 0x5A0570, 0x5A0770-0x5A0570

	.GLOBAL gUnknown_085A0770
gUnknown_085A0770:
	.INCBIN "baserom.gba", 0x5A0770, 0x5A0794-0x5A0770

	.GLOBAL gUnknown_085A0794
gUnknown_085A0794:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A079C
gUnknown_085A079C:
	.INCBIN "baserom.gba", 0x5A079C, 0x5A099C-0x5A079C

	.GLOBAL gUnknown_085A099C
gUnknown_085A099C:
	.INCBIN "baserom.gba", 0x5A099C, 0x5A09C0-0x5A099C

	.GLOBAL gUnknown_085A09C0
gUnknown_085A09C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A09C8
gUnknown_085A09C8:
	.INCBIN "baserom.gba", 0x5A09C8, 0x5A0BC8-0x5A09C8

	.GLOBAL gUnknown_085A0BC8
gUnknown_085A0BC8:
	.INCBIN "baserom.gba", 0x5A0BC8, 0x5A0C58-0x5A0BC8

	.GLOBAL gUnknown_085A0C58
gUnknown_085A0C58:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A0C60
gUnknown_085A0C60:
	.INCBIN "baserom.gba", 0x5A0C60, 0x5A1060-0x5A0C60

	.GLOBAL gUnknown_085A1060
gUnknown_085A1060:
	.INCBIN "baserom.gba", 0x5A1060, 0x5A10A8-0x5A1060

	.GLOBAL gUnknown_085A10A8
gUnknown_085A10A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A10B0
gUnknown_085A10B0:
	.INCBIN "baserom.gba", 0x5A10B0, 0x5A11B0-0x5A10B0

	.GLOBAL gUnknown_085A11B0
gUnknown_085A11B0:
	.INCBIN "baserom.gba", 0x5A11B0, 0x5A121C-0x5A11B0

	.GLOBAL gUnknown_085A121C
gUnknown_085A121C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A1224
gUnknown_085A1224:
	.INCBIN "baserom.gba", 0x5A1224, 0x5A1E24-0x5A1224

	.GLOBAL gUnknown_085A1E24
gUnknown_085A1E24:
	.INCBIN "baserom.gba", 0x5A1E24, 0x5A1F44-0x5A1E24

	.GLOBAL gUnknown_085A1F44
gUnknown_085A1F44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A1F4C
gUnknown_085A1F4C:
	.INCBIN "baserom.gba", 0x5A1F4C, 0x5A274C-0x5A1F4C

	.GLOBAL gUnknown_085A274C
gUnknown_085A274C:
	.INCBIN "baserom.gba", 0x5A274C, 0x5A298C-0x5A274C

	.GLOBAL gUnknown_085A298C
gUnknown_085A298C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A2994
gUnknown_085A2994:
	.INCBIN "baserom.gba", 0x5A2994, 0x5A3994-0x5A2994

	.GLOBAL gUnknown_085A3994
gUnknown_085A3994:
	.INCBIN "baserom.gba", 0x5A3994, 0x5A3BD4-0x5A3994

	.GLOBAL gUnknown_085A3BD4
gUnknown_085A3BD4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A3BDC
gUnknown_085A3BDC:
	.INCBIN "baserom.gba", 0x5A3BDC, 0x5A4BDC-0x5A3BDC

	.GLOBAL gUnknown_085A4BDC
gUnknown_085A4BDC:
	.INCBIN "baserom.gba", 0x5A4BDC, 0x5A5CBC-0x5A4BDC

	.GLOBAL gUnknown_085A5CBC
gUnknown_085A5CBC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A5CC4
gUnknown_085A5CC4:
	.INCBIN "baserom.gba", 0x5A5CC4, 0x5A74C4-0x5A5CC4

	.GLOBAL gUnknown_085A74C4
gUnknown_085A74C4:
	.INCBIN "baserom.gba", 0x5A74C4, 0x5A7674-0x5A74C4

	.GLOBAL gUnknown_085A7674
gUnknown_085A7674:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A767C
gUnknown_085A767C:
	.INCBIN "baserom.gba", 0x5A767C, 0x5A827C-0x5A767C

	.GLOBAL gUnknown_085A827C
gUnknown_085A827C:
	.INCBIN "baserom.gba", 0x5A827C, 0x5A842C-0x5A827C

	.GLOBAL gUnknown_085A842C
gUnknown_085A842C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085A8434
gUnknown_085A8434:
	.INCBIN "baserom.gba", 0x5A8434, 0x5A8A34-0x5A8434

	.GLOBAL gUnknown_085A8A34
gUnknown_085A8A34:
	.INCBIN "baserom.gba", 0x5A8A34, 0x5A8BE4-0x5A8A34

	.GLOBAL gUnknown_085A8BE4
gUnknown_085A8BE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085A8BEC
gUnknown_085A8BEC:
	.INCBIN "baserom.gba", 0x5A8BEC, 0x5A91EC-0x5A8BEC

	.GLOBAL gUnknown_085A91EC
gUnknown_085A91EC:
	.INCBIN "baserom.gba", 0x5A91EC, 0x5A930C-0x5A91EC

	.GLOBAL gUnknown_085A930C
gUnknown_085A930C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085A9314
gUnknown_085A9314:
	.INCBIN "baserom.gba", 0x5A9314, 0x5A9B14-0x5A9314

	.GLOBAL gUnknown_085A9B14
gUnknown_085A9B14:
	.INCBIN "baserom.gba", 0x5A9B14, 0x5A9CE8-0x5A9B14

	.GLOBAL gUnknown_085A9CE8
gUnknown_085A9CE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085A9CF0
gUnknown_085A9CF0:
	.INCBIN "baserom.gba", 0x5A9CF0, 0x5AA070-0x5A9CF0

	.GLOBAL gUnknown_085AA070
gUnknown_085AA070:
	.INCBIN "baserom.gba", 0x5AA070, 0x5AA220-0x5AA070

	.GLOBAL gUnknown_085AA220
gUnknown_085AA220:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085AA228
gUnknown_085AA228:
	.INCBIN "baserom.gba", 0x5AA228, 0x5AAE28-0x5AA228

	.GLOBAL gUnknown_085AAE28
gUnknown_085AAE28:
	.INCBIN "baserom.gba", 0x5AAE28, 0x5AB068-0x5AAE28

	.GLOBAL gUnknown_085AB068
gUnknown_085AB068:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085AB070
gUnknown_085AB070:
	.INCBIN "baserom.gba", 0x5AB070, 0x5ABF70-0x5AB070

	.GLOBAL gUnknown_085ABF70
gUnknown_085ABF70:
	.INCBIN "baserom.gba", 0x5ABF70, 0x5AC1B0-0x5ABF70

	.GLOBAL gUnknown_085AC1B0
gUnknown_085AC1B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085AC1B8
gUnknown_085AC1B8:
	.INCBIN "baserom.gba", 0x5AC1B8, 0x5AD1B8-0x5AC1B8

	.GLOBAL gUnknown_085AD1B8
gUnknown_085AD1B8:
	.INCBIN "baserom.gba", 0x5AD1B8, 0x5AD224-0x5AD1B8

	.GLOBAL gUnknown_085AD224
gUnknown_085AD224:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085AD22C
gUnknown_085AD22C:
	.INCBIN "baserom.gba", 0x5AD22C, 0x5AD3AC-0x5AD22C

	.GLOBAL gUnknown_085AD3AC
gUnknown_085AD3AC:
	.INCBIN "baserom.gba", 0x5AD3AC, 0x5AD67C-0x5AD3AC

	.GLOBAL gUnknown_085AD67C
gUnknown_085AD67C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085AD684
gUnknown_085AD684:
	.INCBIN "baserom.gba", 0x5AD684, 0x5AE084-0x5AD684

	.GLOBAL gUnknown_085AE084
gUnknown_085AE084:
	.INCBIN "baserom.gba", 0x5AE084, 0x5AE0A8-0x5AE084

	.GLOBAL gUnknown_085AE0A8
gUnknown_085AE0A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085AE0B0
gUnknown_085AE0B0:
	.INCBIN "baserom.gba", 0x5AE0B0, 0x5AE1B0-0x5AE0B0

	.GLOBAL gUnknown_085AE1B0
gUnknown_085AE1B0:
	.INCBIN "baserom.gba", 0x5AE1B0, 0x5AE510-0x5AE1B0

	.GLOBAL gUnknown_085AE510
gUnknown_085AE510:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085AE518
gUnknown_085AE518:
	.INCBIN "baserom.gba", 0x5AE518, 0x5AFD18-0x5AE518

	.GLOBAL gUnknown_085AFD18
gUnknown_085AFD18:
	.INCBIN "baserom.gba", 0x5AFD18, 0x5B0078-0x5AFD18

	.GLOBAL gUnknown_085B0078
gUnknown_085B0078:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B0080
gUnknown_085B0080:
	.INCBIN "baserom.gba", 0x5B0080, 0x5B1880-0x5B0080

	.GLOBAL gUnknown_085B1880
gUnknown_085B1880:
	.INCBIN "baserom.gba", 0x5B1880, 0x5B18A4-0x5B1880

	.GLOBAL gUnknown_085B18A4
gUnknown_085B18A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B18AC
gUnknown_085B18AC:
	.INCBIN "baserom.gba", 0x5B18AC, 0x5B192C-0x5B18AC

	.GLOBAL gUnknown_085B192C
gUnknown_085B192C:
	.INCBIN "baserom.gba", 0x5B192C, 0x5B1A4C-0x5B192C

	.GLOBAL gUnknown_085B1A4C
gUnknown_085B1A4C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B1A54
gUnknown_085B1A54:
	.INCBIN "baserom.gba", 0x5B1A54, 0x5B2254-0x5B1A54

	.GLOBAL gUnknown_085B2254
gUnknown_085B2254:
	.INCBIN "baserom.gba", 0x5B2254, 0x5B2764-0x5B2254

	.GLOBAL gUnknown_085B2764
gUnknown_085B2764:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B276C
gUnknown_085B276C:
	.INCBIN "baserom.gba", 0x5B276C, 0x5B496C-0x5B276C

	.GLOBAL gUnknown_085B496C
gUnknown_085B496C:
	.INCBIN "baserom.gba", 0x5B496C, 0x5B4CA8-0x5B496C

	.GLOBAL gUnknown_085B4CA8
gUnknown_085B4CA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B4CB0
gUnknown_085B4CB0:
	.INCBIN "baserom.gba", 0x5B4CB0, 0x5B60B0-0x5B4CB0

	.GLOBAL gUnknown_085B60B0
gUnknown_085B60B0:
	.INCBIN "baserom.gba", 0x5B60B0, 0x5B61D0-0x5B60B0

	.GLOBAL gUnknown_085B61D0
gUnknown_085B61D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B61D8
gUnknown_085B61D8:
	.INCBIN "baserom.gba", 0x5B61D8, 0x5B81D8-0x5B61D8

	.GLOBAL gUnknown_085B81D8
gUnknown_085B81D8:
	.INCBIN "baserom.gba", 0x5B81D8, 0x5B8364-0x5B81D8

	.GLOBAL gUnknown_085B8364
gUnknown_085B8364:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B836C
gUnknown_085B836C:
	.INCBIN "baserom.gba", 0x5B836C, 0x5B8E6C-0x5B836C

	.GLOBAL gUnknown_085B8E6C
gUnknown_085B8E6C:
	.INCBIN "baserom.gba", 0x5B8E6C, 0x5B8F44-0x5B8E6C

	.GLOBAL gUnknown_085B8F44
gUnknown_085B8F44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085B8F4C
gUnknown_085B8F4C:
	.INCBIN "baserom.gba", 0x5B8F4C, 0x5B954C-0x5B8F4C

	.GLOBAL gUnknown_085B954C
gUnknown_085B954C:
	.INCBIN "baserom.gba", 0x5B954C, 0x5BA188-0x5B954C

	.GLOBAL gUnknown_085BA188
gUnknown_085BA188:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085BA190
gUnknown_085BA190:
	.INCBIN "baserom.gba", 0x5BA190, 0x5BC190-0x5BA190

	.GLOBAL gUnknown_085BC190
gUnknown_085BC190:
	.INCBIN "baserom.gba", 0x5BC190, 0x5BC3D0-0x5BC190

	.GLOBAL gUnknown_085BC3D0
gUnknown_085BC3D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085BC3D8
gUnknown_085BC3D8:
	.INCBIN "baserom.gba", 0x5BC3D8, 0x5BD3D8-0x5BC3D8

	.GLOBAL gUnknown_085BD3D8
gUnknown_085BD3D8:
	.INCBIN "baserom.gba", 0x5BD3D8, 0x5BD588-0x5BD3D8

	.GLOBAL gUnknown_085BD588
gUnknown_085BD588:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085BD590
gUnknown_085BD590:
	.INCBIN "baserom.gba", 0x5BD590, 0x5BE190-0x5BD590

	.GLOBAL gUnknown_085BE190
gUnknown_085BE190:
	.INCBIN "baserom.gba", 0x5BE190, 0x5BE2B0-0x5BE190

	.GLOBAL gUnknown_085BE2B0
gUnknown_085BE2B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_085BE2B8
gUnknown_085BE2B8:
	.INCBIN "baserom.gba", 0x5BE2B8, 0x5BF2B8-0x5BE2B8

	.GLOBAL gUnknown_085BF2B8
gUnknown_085BF2B8:
	.INCBIN "baserom.gba", 0x5BF2B8, 0x5BF3B4-0x5BF2B8

	.GLOBAL gUnknown_085BF3B4
gUnknown_085BF3B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_085BF3BC
gUnknown_085BF3BC:
	.INCBIN "baserom.gba", 0x5BF3BC, 0x5C01BC-0x5BF3BC

	.GLOBAL gUnknown_085C01BC
gUnknown_085C01BC:
	.INCBIN "baserom.gba", 0x5C01BC, 0x5C02DC-0x5C01BC

	.GLOBAL gUnknown_085C02DC
gUnknown_085C02DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_085C02E4
gUnknown_085C02E4:
	.INCBIN "baserom.gba", 0x5C02E4, 0x5C12E4-0x5C02E4

	.GLOBAL gUnknown_085C12E4
gUnknown_085C12E4:
	.INCBIN "baserom.gba", 0x5C12E4, 0x5C1404-0x5C12E4

	.GLOBAL gUnknown_085C1404
gUnknown_085C1404:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_085C140C
gUnknown_085C140C:
	.INCBIN "baserom.gba", 0x5C140C, 0x5C240C-0x5C140C

	.GLOBAL gUnknown_085C240C
gUnknown_085C240C:
	.INCBIN "baserom.gba", 0x5C240C, 0x5C2454-0x5C240C

	.GLOBAL gUnknown_085C2454
gUnknown_085C2454:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C245C
gUnknown_085C245C:
	.INCBIN "baserom.gba", 0x5C245C, 0x5C255C-0x5C245C

	.GLOBAL gUnknown_085C255C
gUnknown_085C255C:
	.INCBIN "baserom.gba", 0x5C255C, 0x5C2580-0x5C255C

	.GLOBAL gUnknown_085C2580
gUnknown_085C2580:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C2588
gUnknown_085C2588:
	.INCBIN "baserom.gba", 0x5C2588, 0x5C2608-0x5C2588

	.GLOBAL gUnknown_085C2608
gUnknown_085C2608:
	.INCBIN "baserom.gba", 0x5C2608, 0x5C262C-0x5C2608

	.GLOBAL gUnknown_085C262C
gUnknown_085C262C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C2634
gUnknown_085C2634:
	.INCBIN "baserom.gba", 0x5C2634, 0x5C26B4-0x5C2634

	.GLOBAL gUnknown_085C26B4
gUnknown_085C26B4:
	.INCBIN "baserom.gba", 0x5C26B4, 0x5C26D8-0x5C26B4

	.GLOBAL gUnknown_085C26D8
gUnknown_085C26D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C26E0
gUnknown_085C26E0:
	.INCBIN "baserom.gba", 0x5C26E0, 0x5C2760-0x5C26E0

	.GLOBAL gUnknown_085C2760
gUnknown_085C2760:
	.INCBIN "baserom.gba", 0x5C2760, 0x5C2784-0x5C2760

	.GLOBAL gUnknown_085C2784
gUnknown_085C2784:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C278C
gUnknown_085C278C:
	.INCBIN "baserom.gba", 0x5C278C, 0x5C280C-0x5C278C

	.GLOBAL gUnknown_085C280C
gUnknown_085C280C:
	.INCBIN "baserom.gba", 0x5C280C, 0x5C2830-0x5C280C

	.GLOBAL gUnknown_085C2830
gUnknown_085C2830:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C2838
gUnknown_085C2838:
	.INCBIN "baserom.gba", 0x5C2838, 0x5C2858-0x5C2838

	.GLOBAL gUnknown_085C2858
gUnknown_085C2858:
	.INCBIN "baserom.gba", 0x5C2858, 0x5C28A0-0x5C2858

	.GLOBAL gUnknown_085C28A0
gUnknown_085C28A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C28A8
gUnknown_085C28A8:
	.INCBIN "baserom.gba", 0x5C28A8, 0x5C29A8-0x5C28A8

	.GLOBAL gUnknown_085C29A8
gUnknown_085C29A8:
	.INCBIN "baserom.gba", 0x5C29A8, 0x5C29F0-0x5C29A8

	.GLOBAL gUnknown_085C29F0
gUnknown_085C29F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085C29F8
gUnknown_085C29F8:
	.INCBIN "baserom.gba", 0x5C29F8, 0x5C2AF8-0x5C29F8

	.GLOBAL gUnknown_085C2AF8
gUnknown_085C2AF8:
	.INCBIN "baserom.gba", 0x5C2AF8, 0x5C2BAC-0x5C2AF8

	.GLOBAL gUnknown_085C2BAC
gUnknown_085C2BAC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C2BB4
gUnknown_085C2BB4:
	.INCBIN "baserom.gba", 0x5C2BB4, 0x5C2E34-0x5C2BB4

	.GLOBAL gUnknown_085C2E34
gUnknown_085C2E34:
	.INCBIN "baserom.gba", 0x5C2E34, 0x5C2EE8-0x5C2E34

	.GLOBAL gUnknown_085C2EE8
gUnknown_085C2EE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085C2EF0
gUnknown_085C2EF0:
	.INCBIN "baserom.gba", 0x5C2EF0, 0x5C2F90-0x5C2EF0

	.GLOBAL gUnknown_085C2F90
gUnknown_085C2F90:
	.INCBIN "baserom.gba", 0x5C2F90, 0x5C3218-0x5C2F90

	.GLOBAL gUnknown_085C3218
gUnknown_085C3218:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085C3220
gUnknown_085C3220:
	.INCBIN "baserom.gba", 0x5C3220, 0x5C7220-0x5C3220

	.GLOBAL gUnknown_085C7220
gUnknown_085C7220:
	.INCBIN "baserom.gba", 0x5C7220, 0x5C7244-0x5C7220

	.GLOBAL gUnknown_085C7244
gUnknown_085C7244:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085C724C
gUnknown_085C724C:
	.INCBIN "baserom.gba", 0x5C724C, 0x5C764C-0x5C724C

	.GLOBAL gUnknown_085C764C
gUnknown_085C764C:
	.INCBIN "baserom.gba", 0x5C764C, 0x5C7670-0x5C764C

	.GLOBAL gUnknown_085C7670
gUnknown_085C7670:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085C7678
gUnknown_085C7678:
	.INCBIN "baserom.gba", 0x5C7678, 0x5C7A78-0x5C7678

	.GLOBAL gUnknown_085C7A78
gUnknown_085C7A78:
	.INCBIN "baserom.gba", 0x5C7A78, 0x5C7D00-0x5C7A78

	.GLOBAL gUnknown_085C7D00
gUnknown_085C7D00:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085C7D08
gUnknown_085C7D08:
	.INCBIN "baserom.gba", 0x5C7D08, 0x5CBD08-0x5C7D08

	.GLOBAL gUnknown_085CBD08
gUnknown_085CBD08:
	.INCBIN "baserom.gba", 0x5CBD08, 0x5CBD2C-0x5CBD08

	.GLOBAL gUnknown_085CBD2C
gUnknown_085CBD2C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085CBD34
gUnknown_085CBD34:
	.INCBIN "baserom.gba", 0x5CBD34, 0x5CC134-0x5CBD34

	.GLOBAL gUnknown_085CC134
gUnknown_085CC134:
	.INCBIN "baserom.gba", 0x5CC134, 0x5CC158-0x5CC134

	.GLOBAL gUnknown_085CC158
gUnknown_085CC158:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085CC160
gUnknown_085CC160:
	.INCBIN "baserom.gba", 0x5CC160, 0x5CC960-0x5CC160

	.GLOBAL gUnknown_085CC960
gUnknown_085CC960:
	.INCBIN "baserom.gba", 0x5CC960, 0x5CC984-0x5CC960

	.GLOBAL gUnknown_085CC984
gUnknown_085CC984:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085CC98C
gUnknown_085CC98C:
	.INCBIN "baserom.gba", 0x5CC98C, 0x5CD18C-0x5CC98C

	.GLOBAL gUnknown_085CD18C
gUnknown_085CD18C:
	.INCBIN "baserom.gba", 0x5CD18C, 0x5CD414-0x5CD18C

	.GLOBAL gUnknown_085CD414
gUnknown_085CD414:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=15, affineParam=0

	.GLOBAL gUnknown_085CD41C
gUnknown_085CD41C:
	.INCBIN "baserom.gba", 0x5CD41C, 0x5CD81C-0x5CD41C

	.GLOBAL gUnknown_085CD81C
gUnknown_085CD81C:
	.INCBIN "baserom.gba", 0x5CD81C, 0x5CD840-0x5CD81C

	.GLOBAL gUnknown_085CD840
gUnknown_085CD840:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085CD848
gUnknown_085CD848:
	.INCBIN "baserom.gba", 0x5CD848, 0x5CE048-0x5CD848

	.GLOBAL gUnknown_085CE048
gUnknown_085CE048:
	.INCBIN "baserom.gba", 0x5CE048, 0x5CE06C-0x5CE048

	.GLOBAL gUnknown_085CE06C
gUnknown_085CE06C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085CE074
gUnknown_085CE074:
	.INCBIN "baserom.gba", 0x5CE074, 0x5CE874-0x5CE074

	.GLOBAL gUnknown_085CE874
gUnknown_085CE874:
	.INCBIN "baserom.gba", 0x5CE874, 0x5CE898-0x5CE874

	.GLOBAL gUnknown_085CE898
gUnknown_085CE898:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085CE8A0
gUnknown_085CE8A0:
	.INCBIN "baserom.gba", 0x5CE8A0, 0x5CF0A0-0x5CE8A0

	.GLOBAL gUnknown_085CF0A0
gUnknown_085CF0A0:
	.INCBIN "baserom.gba", 0x5CF0A0, 0x5CF0C4-0x5CF0A0

	.GLOBAL gUnknown_085CF0C4
gUnknown_085CF0C4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085CF0CC
gUnknown_085CF0CC:
	.INCBIN "baserom.gba", 0x5CF0CC, 0x5CF8CC-0x5CF0CC

	.GLOBAL gUnknown_085CF8CC
gUnknown_085CF8CC:
	.INCBIN "baserom.gba", 0x5CF8CC, 0x5CF9C8-0x5CF8CC

	.GLOBAL gUnknown_085CF9C8
gUnknown_085CF9C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085CF9D0
gUnknown_085CF9D0:
	.INCBIN "baserom.gba", 0x5CF9D0, 0x5D00D0-0x5CF9D0

	.GLOBAL gUnknown_085D00D0
gUnknown_085D00D0:
	.INCBIN "baserom.gba", 0x5D00D0, 0x5D01CC-0x5D00D0

	.GLOBAL gUnknown_085D01CC
gUnknown_085D01CC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085D01D4
gUnknown_085D01D4:
	.INCBIN "baserom.gba", 0x5D01D4, 0x5D08D4-0x5D01D4

	.GLOBAL gUnknown_085D08D4
gUnknown_085D08D4:
	.INCBIN "baserom.gba", 0x5D08D4, 0x5D08F8-0x5D08D4

	.GLOBAL gUnknown_085D08F8
gUnknown_085D08F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_085D0900
gUnknown_085D0900:
	.INCBIN "baserom.gba", 0x5D0900, 0x5D0A00-0x5D0900

	.GLOBAL gUnknown_085D0A00
gUnknown_085D0A00:
	.INCBIN "baserom.gba", 0x5D0A00, 0x5D10C0-0x5D0A00

	.GLOBAL gfxMainLevelIconPicsOAM
gfxMainLevelIconPicsOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gfxMainLevelIconPics4bpp
gfxMainLevelIconPics4bpp:
	.INCBIN "assets/sprites/MainLevelIconPics.4bpp"

	.GLOBAL gUnknown_085D70C8
gUnknown_085D70C8:
	.INCBIN "baserom.gba", 0x5D70C8, 0x5D76B0-0x5D70C8

	.GLOBAL gUnknown_085D76B0
gUnknown_085D76B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_085D76B8
gUnknown_085D76B8:
	.INCBIN "baserom.gba", 0x5D76B8, 0x5DCAB8-0x5D76B8

	.GLOBAL gUnknown_085DCAB8
gUnknown_085DCAB8:
	.INCBIN "baserom.gba", 0x5DCAB8, 0x5DCB6C-0x5DCAB8

	.GLOBAL gUnknown_085DCB6C
gUnknown_085DCB6C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085DCB74
gUnknown_085DCB74:
	.INCBIN "baserom.gba", 0x5DCB74, 0x5DCC34-0x5DCB74

	.GLOBAL gUnknown_085DCC34
gUnknown_085DCC34:
	.INCBIN "baserom.gba", 0x5DCC34, 0x5DCCC4-0x5DCC34

	.GLOBAL gUnknown_085DCCC4
gUnknown_085DCCC4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085DCCCC
gUnknown_085DCCCC:
	.INCBIN "baserom.gba", 0x5DCCCC, 0x5DCECC-0x5DCCCC

	.GLOBAL gUnknown_085DCECC
gUnknown_085DCECC:
	.INCBIN "baserom.gba", 0x5DCECC, 0x5DCF80-0x5DCECC

	.GLOBAL gUnknown_085DCF80
gUnknown_085DCF80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085DCF88
gUnknown_085DCF88:
	.INCBIN "baserom.gba", 0x5DCF88, 0x5DD108-0x5DCF88

	.GLOBAL gUnknown_085DD108
gUnknown_085DD108:
	.INCBIN "baserom.gba", 0x5DD108, 0x5DD150-0x5DD108

	.GLOBAL gUnknown_085DD150
gUnknown_085DD150:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_085DD158
gUnknown_085DD158:
	.INCBIN "baserom.gba", 0x5DD158, 0x5DD258-0x5DD158

	.GLOBAL gUnknown_085DD258
gUnknown_085DD258:
	.INCBIN "baserom.gba", 0x5DD258, 0x5DD744-0x5DD258

	.GLOBAL gUnknown_085DD744
gUnknown_085DD744:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085DD74C
gUnknown_085DD74C:
	.INCBIN "baserom.gba", 0x5DD74C, 0x5DD9EC-0x5DD74C

	.GLOBAL gUnknown_085DD9EC
gUnknown_085DD9EC:
	.INCBIN "baserom.gba", 0x5DD9EC, 0x5DDE24-0x5DD9EC

	.GLOBAL gUnknown_085DDE24
gUnknown_085DDE24:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085DDE2C
gUnknown_085DDE2C:
	.INCBIN "baserom.gba", 0x5DDE2C, 0x5DE06C-0x5DDE2C

	.GLOBAL gUnknown_085DE06C
gUnknown_085DE06C:
	.INCBIN "baserom.gba", 0x5DE06C, 0x5DE4A4-0x5DE06C

	.GLOBAL gUnknown_085DE4A4
gUnknown_085DE4A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085DE4AC
gUnknown_085DE4AC:
	.INCBIN "baserom.gba", 0x5DE4AC, 0x5DE92C-0x5DE4AC

	.GLOBAL gUnknown_085DE92C
gUnknown_085DE92C:
	.INCBIN "baserom.gba", 0x5DE92C, 0x5DEA94-0x5DE92C

	.GLOBAL gUnknown_085DEA94
gUnknown_085DEA94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085DEA9C
gUnknown_085DEA9C:
	.INCBIN "baserom.gba", 0x5DEA9C, 0x5DED1C-0x5DEA9C

	.GLOBAL gUnknown_085DED1C
gUnknown_085DED1C:
	.INCBIN "baserom.gba", 0x5DED1C, 0x5DEFA4-0x5DED1C

	.GLOBAL gUnknown_085DEFA4
gUnknown_085DEFA4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085DEFAC
gUnknown_085DEFAC:
	.INCBIN "baserom.gba", 0x5DEFAC, 0x5DF3AC-0x5DEFAC

	.GLOBAL gUnknown_085DF3AC
gUnknown_085DF3AC:
	.INCBIN "baserom.gba", 0x5DF3AC, 0x5DF634-0x5DF3AC

	.GLOBAL gUnknown_085DF634
gUnknown_085DF634:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085DF63C
gUnknown_085DF63C:
	.INCBIN "baserom.gba", 0x5DF63C, 0x5DFA3C-0x5DF63C

	.GLOBAL gUnknown_085DFA3C
gUnknown_085DFA3C:
	.INCBIN "baserom.gba", 0x5DFA3C, 0x5DFCC4-0x5DFA3C

	.GLOBAL gUnknown_085DFCC4
gUnknown_085DFCC4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085DFCCC
gUnknown_085DFCCC:
	.INCBIN "baserom.gba", 0x5DFCCC, 0x5E00CC-0x5DFCCC

	.GLOBAL gUnknown_085E00CC
gUnknown_085E00CC:
	.INCBIN "baserom.gba", 0x5E00CC, 0x5E015C-0x5E00CC

	.GLOBAL gUnknown_085E015C
gUnknown_085E015C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0164
gUnknown_085E0164:
	.INCBIN "baserom.gba", 0x5E0164, 0x5E0564-0x5E0164

	.GLOBAL gUnknown_085E0564
gUnknown_085E0564:
	.INCBIN "baserom.gba", 0x5E0564, 0x5E05F4-0x5E0564

	.GLOBAL gUnknown_085E05F4
gUnknown_085E05F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E05FC
gUnknown_085E05FC:
	.INCBIN "baserom.gba", 0x5E05FC, 0x5E063C-0x5E05FC

	.GLOBAL gUnknown_085E063C
gUnknown_085E063C:
	.INCBIN "baserom.gba", 0x5E063C, 0x5E0684-0x5E063C

	.GLOBAL gUnknown_085E0684
gUnknown_085E0684:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E068C
gUnknown_085E068C:
	.INCBIN "baserom.gba", 0x5E068C, 0x5E078C-0x5E068C

	.GLOBAL gUnknown_085E078C
gUnknown_085E078C:
	.INCBIN "baserom.gba", 0x5E078C, 0x5E07D4-0x5E078C

	.GLOBAL gUnknown_085E07D4
gUnknown_085E07D4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E07DC
gUnknown_085E07DC:
	.INCBIN "baserom.gba", 0x5E07DC, 0x5E08DC-0x5E07DC

	.GLOBAL gUnknown_085E08DC
gUnknown_085E08DC:
	.INCBIN "baserom.gba", 0x5E08DC, 0x5E0900-0x5E08DC

	.GLOBAL gUnknown_085E0900
gUnknown_085E0900:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0908
gUnknown_085E0908:
	.INCBIN "baserom.gba", 0x5E0908, 0x5E0988-0x5E0908

	.GLOBAL gUnknown_085E0988
gUnknown_085E0988:
	.INCBIN "baserom.gba", 0x5E0988, 0x5E09AC-0x5E0988

	.GLOBAL gUnknown_085E09AC
gUnknown_085E09AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E09B4
gUnknown_085E09B4:
	.INCBIN "baserom.gba", 0x5E09B4, 0x5E0A34-0x5E09B4

	.GLOBAL gUnknown_085E0A34
gUnknown_085E0A34:
	.INCBIN "baserom.gba", 0x5E0A34, 0x5E0A7C-0x5E0A34

	.GLOBAL gUnknown_085E0A7C
gUnknown_085E0A7C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085E0A84
gUnknown_085E0A84:
	.INCBIN "baserom.gba", 0x5E0A84, 0x5E0AC4-0x5E0A84

	.GLOBAL gUnknown_085E0AC4
gUnknown_085E0AC4:
	.INCBIN "baserom.gba", 0x5E0AC4, 0x5E0B0C-0x5E0AC4

	.GLOBAL gUnknown_085E0B0C
gUnknown_085E0B0C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0B14
gUnknown_085E0B14:
	.INCBIN "baserom.gba", 0x5E0B14, 0x5E0C14-0x5E0B14

	.GLOBAL gUnknown_085E0C14
gUnknown_085E0C14:
	.INCBIN "baserom.gba", 0x5E0C14, 0x5E0C5C-0x5E0C14

	.GLOBAL gUnknown_085E0C5C
gUnknown_085E0C5C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0C64
gUnknown_085E0C64:
	.INCBIN "baserom.gba", 0x5E0C64, 0x5E0D64-0x5E0C64

	.GLOBAL gUnknown_085E0D64
gUnknown_085E0D64:
	.INCBIN "baserom.gba", 0x5E0D64, 0x5E0D88-0x5E0D64

	.GLOBAL gUnknown_085E0D88
gUnknown_085E0D88:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0D90
gUnknown_085E0D90:
	.INCBIN "baserom.gba", 0x5E0D90, 0x5E0E10-0x5E0D90

	.GLOBAL gUnknown_085E0E10
gUnknown_085E0E10:
	.INCBIN "baserom.gba", 0x5E0E10, 0x5E0E34-0x5E0E10

	.GLOBAL gUnknown_085E0E34
gUnknown_085E0E34:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0E3C
gUnknown_085E0E3C:
	.INCBIN "baserom.gba", 0x5E0E3C, 0x5E0EBC-0x5E0E3C

	.GLOBAL gUnknown_085E0EBC
gUnknown_085E0EBC:
	.INCBIN "baserom.gba", 0x5E0EBC, 0x5E0F04-0x5E0EBC

	.GLOBAL gUnknown_085E0F04
gUnknown_085E0F04:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E0F0C
gUnknown_085E0F0C:
	.INCBIN "baserom.gba", 0x5E0F0C, 0x5E100C-0x5E0F0C

	.GLOBAL gUnknown_085E100C
gUnknown_085E100C:
	.INCBIN "baserom.gba", 0x5E100C, 0x5E1054-0x5E100C

	.GLOBAL gUnknown_085E1054
gUnknown_085E1054:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E105C
gUnknown_085E105C:
	.INCBIN "baserom.gba", 0x5E105C, 0x5E115C-0x5E105C

	.GLOBAL gUnknown_085E115C
gUnknown_085E115C:
	.INCBIN "baserom.gba", 0x5E115C, 0x5E1180-0x5E115C

	.GLOBAL gUnknown_085E1180
gUnknown_085E1180:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E1188
gUnknown_085E1188:
	.INCBIN "baserom.gba", 0x5E1188, 0x5E1208-0x5E1188

	.GLOBAL gUnknown_085E1208
gUnknown_085E1208:
	.INCBIN "baserom.gba", 0x5E1208, 0x5E122C-0x5E1208

	.GLOBAL gUnknown_085E122C
gUnknown_085E122C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E1234
gUnknown_085E1234:
	.INCBIN "baserom.gba", 0x5E1234, 0x5E12B4-0x5E1234

	.GLOBAL gUnknown_085E12B4
gUnknown_085E12B4:
	.INCBIN "baserom.gba", 0x5E12B4, 0x5E1344-0x5E12B4

	.GLOBAL gUnknown_085E1344
gUnknown_085E1344:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085E134C
gUnknown_085E134C:
	.INCBIN "baserom.gba", 0x5E134C, 0x5E1B4C-0x5E134C

	.GLOBAL gUnknown_085E1B4C
gUnknown_085E1B4C:
	.INCBIN "baserom.gba", 0x5E1B4C, 0x5E1C24-0x5E1B4C

	.GLOBAL gUnknown_085E1C24
gUnknown_085E1C24:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085E1C2C
gUnknown_085E1C2C:
	.INCBIN "baserom.gba", 0x5E1C2C, 0x5E1F2C-0x5E1C2C

	.GLOBAL gUnknown_085E1F2C
gUnknown_085E1F2C:
	.INCBIN "baserom.gba", 0x5E1F2C, 0x5E2004-0x5E1F2C

	.GLOBAL gUnknown_085E2004
gUnknown_085E2004:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085E200C
gUnknown_085E200C:
	.INCBIN "baserom.gba", 0x5E200C, 0x5E230C-0x5E200C

	.GLOBAL gUnknown_085E230C
gUnknown_085E230C:
	.INCBIN "baserom.gba", 0x5E230C, 0x5E2330-0x5E230C

	.GLOBAL gUnknown_085E2330
gUnknown_085E2330:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085E2338
gUnknown_085E2338:
	.INCBIN "baserom.gba", 0x5E2338, 0x5E2438-0x5E2338

	.GLOBAL gUnknown_085E2438
gUnknown_085E2438:
	.INCBIN "baserom.gba", 0x5E2438, 0x5E245C-0x5E2438

	.GLOBAL gUnknown_085E245C
gUnknown_085E245C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E2464
gUnknown_085E2464:
	.INCBIN "baserom.gba", 0x5E2464, 0x5E24A4-0x5E2464

	.GLOBAL gUnknown_085E24A4
gUnknown_085E24A4:
	.INCBIN "baserom.gba", 0x5E24A4, 0x5E24C8-0x5E24A4

	.GLOBAL gUnknown_085E24C8
gUnknown_085E24C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E24D0
gUnknown_085E24D0:
	.INCBIN "baserom.gba", 0x5E24D0, 0x5E2510-0x5E24D0

	.GLOBAL gUnknown_085E2510
gUnknown_085E2510:
	.INCBIN "baserom.gba", 0x5E2510, 0x5E2534-0x5E2510

	.GLOBAL gUnknown_085E2534
gUnknown_085E2534:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E253C
gUnknown_085E253C:
	.INCBIN "baserom.gba", 0x5E253C, 0x5E257C-0x5E253C

	.GLOBAL gUnknown_085E257C
gUnknown_085E257C:
	.INCBIN "baserom.gba", 0x5E257C, 0x5E25A0-0x5E257C

	.GLOBAL gUnknown_085E25A0
gUnknown_085E25A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E25A8
gUnknown_085E25A8:
	.INCBIN "baserom.gba", 0x5E25A8, 0x5E25E8-0x5E25A8

	.GLOBAL gUnknown_085E25E8
gUnknown_085E25E8:
	.INCBIN "baserom.gba", 0x5E25E8, 0x5E260C-0x5E25E8

	.GLOBAL gUnknown_085E260C
gUnknown_085E260C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E2614
gUnknown_085E2614:
	.INCBIN "baserom.gba", 0x5E2614, 0x5E2654-0x5E2614

	.GLOBAL gUnknown_085E2654
gUnknown_085E2654:
	.INCBIN "baserom.gba", 0x5E2654, 0x5E2678-0x5E2654

	.GLOBAL gUnknown_085E2678
gUnknown_085E2678:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E2680
gUnknown_085E2680:
	.INCBIN "baserom.gba", 0x5E2680, 0x5E26C0-0x5E2680

	.GLOBAL gUnknown_085E26C0
gUnknown_085E26C0:
	.INCBIN "baserom.gba", 0x5E26C0, 0x5E26E4-0x5E26C0

	.GLOBAL gUnknown_085E26E4
gUnknown_085E26E4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E26EC
gUnknown_085E26EC:
	.INCBIN "baserom.gba", 0x5E26EC, 0x5E272C-0x5E26EC

	.GLOBAL gUnknown_085E272C
gUnknown_085E272C:
	.INCBIN "baserom.gba", 0x5E272C, 0x5E2750-0x5E272C

	.GLOBAL gUnknown_085E2750
gUnknown_085E2750:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E2758
gUnknown_085E2758:
	.INCBIN "baserom.gba", 0x5E2758, 0x5E2798-0x5E2758

	.GLOBAL gUnknown_085E2798
gUnknown_085E2798:
	.INCBIN "baserom.gba", 0x5E2798, 0x5E27BC-0x5E2798

	.GLOBAL gUnknown_085E27BC
gUnknown_085E27BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E27C4
gUnknown_085E27C4:
	.INCBIN "baserom.gba", 0x5E27C4, 0x5E2804-0x5E27C4

	.GLOBAL gUnknown_085E2804
gUnknown_085E2804:
	.INCBIN "baserom.gba", 0x5E2804, 0x5E2828-0x5E2804

	.GLOBAL gUnknown_085E2828
gUnknown_085E2828:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E2830
gUnknown_085E2830:
	.INCBIN "baserom.gba", 0x5E2830, 0x5E2870-0x5E2830

	.GLOBAL gUnknown_085E2870
gUnknown_085E2870:
	.INCBIN "baserom.gba", 0x5E2870, 0x5E2AF8-0x5E2870

	.GLOBAL gUnknown_085E2AF8
gUnknown_085E2AF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085E2B00
gUnknown_085E2B00:
	.INCBIN "baserom.gba", 0x5E2B00, 0x5E2F00-0x5E2B00

	.GLOBAL gUnknown_085E2F00
gUnknown_085E2F00:
	.INCBIN "baserom.gba", 0x5E2F00, 0x5E3188-0x5E2F00

	.GLOBAL gUnknown_085E3188
gUnknown_085E3188:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085E3190
gUnknown_085E3190:
	.INCBIN "baserom.gba", 0x5E3190, 0x5E3590-0x5E3190

	.GLOBAL gUnknown_085E3590
gUnknown_085E3590:
	.INCBIN "baserom.gba", 0x5E3590, 0x5E3818-0x5E3590

	.GLOBAL gUnknown_085E3818
gUnknown_085E3818:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_085E3820
gUnknown_085E3820:
	.INCBIN "baserom.gba", 0x5E3820, 0x5E8020-0x5E3820

	.GLOBAL gUnknown_085E8020
gUnknown_085E8020:
	.INCBIN "baserom.gba", 0x5E8020, 0x5E8044-0x5E8020

	.GLOBAL gUnknown_085E8044
gUnknown_085E8044:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E804C
gUnknown_085E804C:
	.INCBIN "baserom.gba", 0x5E804C, 0x5E844C-0x5E804C

	.GLOBAL gUnknown_085E844C
gUnknown_085E844C:
	.INCBIN "baserom.gba", 0x5E844C, 0x5E8470-0x5E844C

	.GLOBAL gUnknown_085E8470
gUnknown_085E8470:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E8478
gUnknown_085E8478:
	.INCBIN "baserom.gba", 0x5E8478, 0x5E8878-0x5E8478

	.GLOBAL gUnknown_085E8878
gUnknown_085E8878:
	.INCBIN "baserom.gba", 0x5E8878, 0x5E889C-0x5E8878

	.GLOBAL gUnknown_085E889C
gUnknown_085E889C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E88A4
gUnknown_085E88A4:
	.INCBIN "baserom.gba", 0x5E88A4, 0x5E8CA4-0x5E88A4

	.GLOBAL gUnknown_085E8CA4
gUnknown_085E8CA4:
	.INCBIN "baserom.gba", 0x5E8CA4, 0x5E8CC8-0x5E8CA4

	.GLOBAL gUnknown_085E8CC8
gUnknown_085E8CC8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E8CD0
gUnknown_085E8CD0:
	.INCBIN "baserom.gba", 0x5E8CD0, 0x5E90D0-0x5E8CD0

	.GLOBAL gUnknown_085E90D0
gUnknown_085E90D0:
	.INCBIN "baserom.gba", 0x5E90D0, 0x5E9358-0x5E90D0

	.GLOBAL gUnknown_085E9358
gUnknown_085E9358:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=9, affineParam=0

	.GLOBAL gUnknown_085E9360
gUnknown_085E9360:
	.INCBIN "baserom.gba", 0x5E9360, 0x5EAB60-0x5E9360

	.GLOBAL gUnknown_085EAB60
gUnknown_085EAB60:
	.INCBIN "baserom.gba", 0x5EAB60, 0x5EAB84-0x5EAB60

	.GLOBAL gUnknown_085EAB84
gUnknown_085EAB84:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_085EAB8C
gUnknown_085EAB8C:
	.INCBIN "baserom.gba", 0x5EAB8C, 0x5EAC8C-0x5EAB8C

	.GLOBAL gUnknown_085EAC8C
gUnknown_085EAC8C:
	.INCBIN "baserom.gba", 0x5EAC8C, 0x5EAD1C-0x5EAC8C

	.GLOBAL gUnknown_085EAD1C
gUnknown_085EAD1C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085EAD24
gUnknown_085EAD24:
	.INCBIN "baserom.gba", 0x5EAD24, 0x5EAF24-0x5EAD24

	.GLOBAL gUnknown_085EAF24
gUnknown_085EAF24:
	.INCBIN "baserom.gba", 0x5EAF24, 0x5EAF48-0x5EAF24

	.GLOBAL gUnknown_085EAF48
gUnknown_085EAF48:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085EAF50
gUnknown_085EAF50:
	.INCBIN "baserom.gba", 0x5EAF50, 0x5EAFD0-0x5EAF50

	.GLOBAL gUnknown_085EAFD0
gUnknown_085EAFD0:
	.INCBIN "baserom.gba", 0x5EAFD0, 0x5EB0A8-0x5EAFD0

	.GLOBAL gUnknown_085EB0A8
gUnknown_085EB0A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085EB0B0
gUnknown_085EB0B0:
	.INCBIN "baserom.gba", 0x5EB0B0, 0x5EB3B0-0x5EB0B0

	.GLOBAL gUnknown_085EB3B0
gUnknown_085EB3B0:
	.INCBIN "baserom.gba", 0x5EB3B0, 0x5EB488-0x5EB3B0

	.GLOBAL gUnknown_085EB488
gUnknown_085EB488:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085EB490
gUnknown_085EB490:
	.INCBIN "baserom.gba", 0x5EB490, 0x5EB790-0x5EB490

	.GLOBAL gUnknown_085EB790
gUnknown_085EB790:
	.INCBIN "baserom.gba", 0x5EB790, 0x5EB820-0x5EB790

	.GLOBAL gUnknown_085EB820
gUnknown_085EB820:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085EB828
gUnknown_085EB828:
	.INCBIN "baserom.gba", 0x5EB828, 0x5EBA28-0x5EB828

	.GLOBAL gUnknown_085EBA28
gUnknown_085EBA28:
	.INCBIN "baserom.gba", 0x5EBA28, 0x5EBC68-0x5EBA28

	.GLOBAL gUnknown_085EBC68
gUnknown_085EBC68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_085EBC70
gUnknown_085EBC70:
	.INCBIN "baserom.gba", 0x5EBC70, 0x5ECC70-0x5EBC70

	.GLOBAL gUnknown_085ECC70
gUnknown_085ECC70:
	.INCBIN "baserom.gba", 0x5ECC70, 0x5ECC94-0x5ECC70

	.GLOBAL gUnknown_085ECC94
gUnknown_085ECC94:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085ECC9C
gUnknown_085ECC9C:
	.INCBIN "baserom.gba", 0x5ECC9C, 0x5ED49C-0x5ECC9C

	.GLOBAL gUnknown_085ED49C
gUnknown_085ED49C:
	.INCBIN "baserom.gba", 0x5ED49C, 0x5ED4C0-0x5ED49C

	.GLOBAL gUnknown_085ED4C0
gUnknown_085ED4C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085ED4C8
gUnknown_085ED4C8:
	.INCBIN "baserom.gba", 0x5ED4C8, 0x5EDCC8-0x5ED4C8

	.GLOBAL gUnknown_085EDCC8
gUnknown_085EDCC8:
	.INCBIN "baserom.gba", 0x5EDCC8, 0x5EDCEC-0x5EDCC8

	.GLOBAL gUnknown_085EDCEC
gUnknown_085EDCEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085EDCF4
gUnknown_085EDCF4:
	.INCBIN "baserom.gba", 0x5EDCF4, 0x5EE4F4-0x5EDCF4

	.GLOBAL gUnknown_085EE4F4
gUnknown_085EE4F4:
	.INCBIN "baserom.gba", 0x5EE4F4, 0x5EE518-0x5EE4F4

	.GLOBAL gUnknown_085EE518
gUnknown_085EE518:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085EE520
gUnknown_085EE520:
	.INCBIN "baserom.gba", 0x5EE520, 0x5EED20-0x5EE520

	.GLOBAL gUnknown_085EED20
gUnknown_085EED20:
	.INCBIN "baserom.gba", 0x5EED20, 0x5EED44-0x5EED20

	.GLOBAL gUnknown_085EED44
gUnknown_085EED44:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085EED4C
gUnknown_085EED4C:
	.INCBIN "baserom.gba", 0x5EED4C, 0x5EF54C-0x5EED4C

	.GLOBAL gUnknown_085EF54C
gUnknown_085EF54C:
	.INCBIN "baserom.gba", 0x5EF54C, 0x5EF570-0x5EF54C

	.GLOBAL gUnknown_085EF570
gUnknown_085EF570:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085EF578
gUnknown_085EF578:
	.INCBIN "baserom.gba", 0x5EF578, 0x5EFD78-0x5EF578

	.GLOBAL gUnknown_085EFD78
gUnknown_085EFD78:
	.INCBIN "baserom.gba", 0x5EFD78, 0x5EFD9C-0x5EFD78

	.GLOBAL gUnknown_085EFD9C
gUnknown_085EFD9C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085EFDA4
gUnknown_085EFDA4:
	.INCBIN "baserom.gba", 0x5EFDA4, 0x5F05A4-0x5EFDA4

	.GLOBAL gUnknown_085F05A4
gUnknown_085F05A4:
	.INCBIN "baserom.gba", 0x5F05A4, 0x5F05C8-0x5F05A4

	.GLOBAL gUnknown_085F05C8
gUnknown_085F05C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F05D0
gUnknown_085F05D0:
	.INCBIN "baserom.gba", 0x5F05D0, 0x5F0DD0-0x5F05D0

	.GLOBAL gUnknown_085F0DD0
gUnknown_085F0DD0:
	.INCBIN "baserom.gba", 0x5F0DD0, 0x5F0DF4-0x5F0DD0

	.GLOBAL gUnknown_085F0DF4
gUnknown_085F0DF4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F0DFC
gUnknown_085F0DFC:
	.INCBIN "baserom.gba", 0x5F0DFC, 0x5F15FC-0x5F0DFC

	.GLOBAL gUnknown_085F15FC
gUnknown_085F15FC:
	.INCBIN "baserom.gba", 0x5F15FC, 0x5F1620-0x5F15FC

	.GLOBAL gUnknown_085F1620
gUnknown_085F1620:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F1628
gUnknown_085F1628:
	.INCBIN "baserom.gba", 0x5F1628, 0x5F1E28-0x5F1628

	.GLOBAL gUnknown_085F1E28
gUnknown_085F1E28:
	.INCBIN "baserom.gba", 0x5F1E28, 0x5F1E70-0x5F1E28

	.GLOBAL gUnknown_085F1E70
gUnknown_085F1E70:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_085F1E78
gUnknown_085F1E78:
	.INCBIN "baserom.gba", 0x5F1E78, 0x5F2278-0x5F1E78

	.GLOBAL gUnknown_085F2278
gUnknown_085F2278:
	.INCBIN "baserom.gba", 0x5F2278, 0x5F229C-0x5F2278

	.GLOBAL gUnknown_085F229C
gUnknown_085F229C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_085F22A4
gUnknown_085F22A4:
	.INCBIN "baserom.gba", 0x5F22A4, 0x5F2324-0x5F22A4

	.GLOBAL gUnknown_085F2324
gUnknown_085F2324:
	.INCBIN "baserom.gba", 0x5F2324, 0x5F2348-0x5F2324

	.GLOBAL gUnknown_085F2348
gUnknown_085F2348:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_085F2350
gUnknown_085F2350:
	.INCBIN "baserom.gba", 0x5F2350, 0x5F23D0-0x5F2350

	.GLOBAL gUnknown_085F23D0
gUnknown_085F23D0:
	.INCBIN "baserom.gba", 0x5F23D0, 0x5F24A8-0x5F23D0

	.GLOBAL gUnknown_085F24A8
gUnknown_085F24A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F24B0
gUnknown_085F24B0:
	.INCBIN "baserom.gba", 0x5F24B0, 0x5F2AB0-0x5F24B0

	.GLOBAL gUnknown_085F2AB0
gUnknown_085F2AB0:
	.INCBIN "baserom.gba", 0x5F2AB0, 0x5F2D80-0x5F2AB0

	.GLOBAL gUnknown_085F2D80
gUnknown_085F2D80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F2D88
gUnknown_085F2D88:
	.INCBIN "baserom.gba", 0x5F2D88, 0x5F2F88-0x5F2D88

	.GLOBAL gUnknown_085F2F88
gUnknown_085F2F88:
	.INCBIN "baserom.gba", 0x5F2F88, 0x5F3138-0x5F2F88

	.GLOBAL gUnknown_085F3138
gUnknown_085F3138:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F3140
gUnknown_085F3140:
	.INCBIN "baserom.gba", 0x5F3140, 0x5F3940-0x5F3140

	.GLOBAL gUnknown_085F3940
gUnknown_085F3940:
	.INCBIN "baserom.gba", 0x5F3940, 0x5F3C7C-0x5F3940

	.GLOBAL gUnknown_085F3C7C
gUnknown_085F3C7C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F3C84
gUnknown_085F3C84:
	.INCBIN "baserom.gba", 0x5F3C84, 0x5F4084-0x5F3C84

	.GLOBAL gUnknown_085F4084
gUnknown_085F4084:
	.INCBIN "baserom.gba", 0x5F4084, 0x5F41A4-0x5F4084

	.GLOBAL gUnknown_085F41A4
gUnknown_085F41A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_085F41AC
gUnknown_085F41AC:
	.INCBIN "baserom.gba", 0x5F41AC, 0x5F49AC-0x5F41AC

	.GLOBAL gUnknown_085F49AC
gUnknown_085F49AC:
	.INCBIN "baserom.gba", 0x5F49AC, 0x5F49D0-0x5F49AC

	.GLOBAL gfxTitleScreenPressStartOAM
gfxTitleScreenPressStartOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0
	
	.GLOBAL gfxTitleScreenPressStart4bpp
gfxTitleScreenPressStart4bpp:
	.INCBIN "assets/sprites/PressStart.4bpp"
	
	.GLOBAL gUnknown_085F4BD8
gUnknown_085F4BD8:
	.INCBIN "baserom.gba", 0x5F4BD8, 0x5F4CD4-0x5F4BD8

	.GLOBAL gUnknown_085F4CD4
gUnknown_085F4CD4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_085F4CDC
gUnknown_085F4CDC:
	.INCBIN "baserom.gba", 0x5F4CDC, 0x5F4EDC-0x5F4CDC

	.GLOBAL gUnknown_085F4EDC
gUnknown_085F4EDC:
	.INCBIN "baserom.gba", 0x5F4EDC, 0x5F4F6C-0x5F4EDC

	.GLOBAL gUnknown_085F4F6C
gUnknown_085F4F6C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_085F4F74
gUnknown_085F4F74:
	.INCBIN "baserom.gba", 0x5F4F74, 0x5F5174-0x5F4F74

	.GLOBAL gUnknown_085F5174
gUnknown_085F5174:
	.INCBIN "baserom.gba", 0x5F5174, 0x5F5294-0x5F5174

	.GLOBAL gUnknown_085F5294
gUnknown_085F5294:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_085F529C
gUnknown_085F529C:
	.INCBIN "baserom.gba", 0x5F529C, 0x5F569C-0x5F529C

	.GLOBAL gUnknown_085F569C
gUnknown_085F569C:
	.INCBIN "baserom.gba", 0x5F569C, 0x5F58DC-0x5F569C

	.GLOBAL gUnknown_085F58DC
gUnknown_085F58DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_085F58E4
gUnknown_085F58E4:
	.INCBIN "baserom.gba", 0x5F58E4, 0x5F60E4-0x5F58E4

	.GLOBAL gUnknown_085F60E4
gUnknown_085F60E4:
	.INCBIN "baserom.gba", 0x5F60E4, 0x5F612C-0x5F60E4

	.GLOBAL gUnknown_085F612C
gUnknown_085F612C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_085F6134
gUnknown_085F6134:
	.INCBIN "baserom.gba", 0x5F6134, 0x5F61B4-0x5F6134

	.GLOBAL gUnknown_085F61B4
gUnknown_085F61B4:
	.INCBIN "baserom.gba", 0x5F61B4, 0x5F6388-0x5F61B4

	.GLOBAL gUnknown_085F6388
gUnknown_085F6388:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_085F6390
gUnknown_085F6390:
	.INCBIN "baserom.gba", 0x5F6390, 0x5F6910-0x5F6390

	.GLOBAL gUnknown_085F6910
gUnknown_085F6910:
	.INCBIN "baserom.gba", 0x5F6910, 0x5F6B50-0x5F6910

	.GLOBAL gUnknown_085F6B50
gUnknown_085F6B50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085F6B58
gUnknown_085F6B58:
	.INCBIN "baserom.gba", 0x5F6B58, 0x5F7358-0x5F6B58

	.GLOBAL gUnknown_085F7358
gUnknown_085F7358:
	.INCBIN "baserom.gba", 0x5F7358, 0x5F73E8-0x5F7358

	.GLOBAL gUnknown_085F73E8
gUnknown_085F73E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085F73F0
gUnknown_085F73F0:
	.INCBIN "baserom.gba", 0x5F73F0, 0x5F77F0-0x5F73F0

	.GLOBAL gUnknown_085F77F0
gUnknown_085F77F0:
	.INCBIN "baserom.gba", 0x5F77F0, 0x5F79A0-0x5F77F0

	.GLOBAL gUnknown_085F79A0
gUnknown_085F79A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085F79A8
gUnknown_085F79A8:
	.INCBIN "baserom.gba", 0x5F79A8, 0x5F85A8-0x5F79A8

	.GLOBAL gUnknown_085F85A8
gUnknown_085F85A8:
	.INCBIN "baserom.gba", 0x5F85A8, 0x5F86C8-0x5F85A8

	.GLOBAL gUnknown_085F86C8
gUnknown_085F86C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085F86D0
gUnknown_085F86D0:
	.INCBIN "baserom.gba", 0x5F86D0, 0x5F8ED0-0x5F86D0

	.GLOBAL gUnknown_085F8ED0
gUnknown_085F8ED0:
	.INCBIN "baserom.gba", 0x5F8ED0, 0x5F9110-0x5F8ED0

	.GLOBAL gUnknown_085F9110
gUnknown_085F9110:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085F9118
gUnknown_085F9118:
	.INCBIN "baserom.gba", 0x5F9118, 0x5FA118-0x5F9118

	.GLOBAL gUnknown_085FA118
gUnknown_085FA118:
	.INCBIN "baserom.gba", 0x5FA118, 0x5FA358-0x5FA118

	.GLOBAL gUnknown_085FA358
gUnknown_085FA358:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_085FA360
gUnknown_085FA360:
	.INCBIN "baserom.gba", 0x5FA360, 0x5FB360-0x5FA360

	.GLOBAL gUnknown_085FB360
gUnknown_085FB360:
	.INCBIN "baserom.gba", 0x5FB360, 0x5FB3CC-0x5FB360

	.GLOBAL gfxFileLettersOAM
gfxFileLettersOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxFileLetters4bpp
gfxFileLetters4bpp:
	.INCBIN "assets/sprites/FileLetters.4bpp"

	.GLOBAL gUnknown_085FB554
gUnknown_085FB554:
	.INCBIN "baserom.gba", 0x5FB554, 0x5FB7DC-0x5FB554

	.GLOBAL gUnknown_085FB7DC
gUnknown_085FB7DC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_085FB7E4
gUnknown_085FB7E4:
	.INCBIN "assets/sprites/gUnknown_085FB7E4.4bpp"

	.GLOBAL gUnknown_085FEFE4
gUnknown_085FEFE4:
	.INCBIN "baserom.gba", 0x5FEFE4, 0x5FF26C-0x5FEFE4

	.GLOBAL gUnknown_085FF26C
gUnknown_085FF26C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_085FF274
gUnknown_085FF274:
	.INCBIN "assets/sprites/gUnknown_085FF274.4bpp"

	.GLOBAL gUnknown_08600E74
gUnknown_08600E74:
	.INCBIN "baserom.gba", 0x600E74, 0x6010FC-0x600E74

	.GLOBAL gfxFileFrameNewGameBottomOAM
gfxFileFrameNewGameBottomOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxFileFrameNewGameBottom4bpp
gfxFileFrameNewGameBottom4bpp:
	.INCBIN "assets/sprites/FileFrameNewGameBottom.4bpp"

	.GLOBAL gUnknown_08602D04
gUnknown_08602D04:
	.INCBIN "baserom.gba", 0x602D04, 0x602F8C-0x602D04

	.GLOBAL gfxFileFrameNewGameTopOAM
gfxFileFrameNewGameTopOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxFileFrameNewGameTop4bpp
gfxFileFrameNewGameTop4bpp:
	.INCBIN "assets/sprites/FileFrameNewGameTop.4bpp"

	.GLOBAL gUnknown_08606794
gUnknown_08606794:
	.INCBIN "baserom.gba", 0x606794, 0x606A1C-0x606794

	.GLOBAL gUnknown_08606A1C
gUnknown_08606A1C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_08606A24
gUnknown_08606A24:
	.INCBIN "assets/sprites/gUnknown_08606A24.4bpp"

	.GLOBAL gUnknown_0860A224
gUnknown_0860A224:
	.INCBIN "baserom.gba", 0x60A224, 0x60A4AC-0x60A224

	.GLOBAL gfxFileFrameNormalBottomOAM
gfxFileFrameNormalBottomOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxFileFrameNormalBottom4bpp
gfxFileFrameNormalBottom4bpp:
	.INCBIN "assets/sprites/FileFrameNormalBottom.4bpp"

	.GLOBAL gUnknown_0860C0B4
gUnknown_0860C0B4:
	.INCBIN "baserom.gba", 0x60C0B4, 0x60C33C-0x60C0B4

	.GLOBAL gfxFileFrameNormalTopOAM
gfxFileFrameNormalTopOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxFileFrameNormalTop4bpp
gfxFileFrameNormalTop4bpp:
	.INCBIN "assets/sprites/FileFrameNormalTop.4bpp"

	.GLOBAL gUnknown_0860FB44
gUnknown_0860FB44:
	.INCBIN "baserom.gba", 0x60FB44, 0x60FDCC-0x60FB44

	.GLOBAL gUnknown_0860FDCC
gUnknown_0860FDCC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0860FDD4
gUnknown_0860FDD4:
	.INCBIN "assets/sprites/gUnknown_0860FDD4.4bpp"

	.GLOBAL gUnknown_086119D4
gUnknown_086119D4:
	.INCBIN "baserom.gba", 0x6119D4, 0x611A40-0x6119D4

	.GLOBAL gUnknown_08611A40
gUnknown_08611A40:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08611A48
gUnknown_08611A48:
	.INCBIN "assets/sprites/gUnknown_08611A48.4bpp"

	.GLOBAL gUnknown_08612648
gUnknown_08612648:
	.INCBIN "baserom.gba", 0x612648, 0x6126B4-0x612648

	.GLOBAL gfxFileInfoBoxOAM
gfxFileInfoBoxOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gfxFileInfoBox4bpp
gfxFileInfoBox4bpp:
	.INCBIN "assets/sprites/FileInfoBox.4bpp"

	.GLOBAL gUnknown_08613EBC
gUnknown_08613EBC:
	.INCBIN "baserom.gba", 0x613EBC, 0x613F04-0x613EBC

	.GLOBAL gfxEReaderLogoOAM
gfxEReaderLogoOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gfxEReaderLogo4bpp
gfxEReaderLogo4bpp:
	.INCBIN "assets/sprites/EReaderLogo.4bpp"

	.GLOBAL gUnknown_0861430C
gUnknown_0861430C:
	.INCBIN "baserom.gba", 0x61430C, 0x614330-0x61430C

	.GLOBAL gUnknown_08614330
gUnknown_08614330:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08614338
gUnknown_08614338:
	.INCBIN "baserom.gba", 0x614338, 0x614738-0x614338

	.GLOBAL gUnknown_08614738
gUnknown_08614738:
	.INCBIN "baserom.gba", 0x614738, 0x61475C-0x614738

	.GLOBAL gfxExpertOAM
gfxExpertOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxExpert4bpp
gfxExpert4bpp:
	.INCBIN "assets/sprites/Expert.4bpp"

	.GLOBAL gUnknown_08614B64
gUnknown_08614B64:
	.INCBIN "baserom.gba", 0x614B64, 0x614BAC-0x614B64

	.GLOBAL gfxOptionMenuEraseDataButtonsOAM
gfxOptionMenuEraseDataButtonsOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gfxOptionMenuEraseDataButtons4bpp
gfxOptionMenuEraseDataButtons4bpp:
	.INCBIN "assets/sprites/OptionMenuEraseDataButtons.4bpp"

	.GLOBAL gUnknown_08615BB4
gUnknown_08615BB4:
	.INCBIN "baserom.gba", 0x615BB4, 0x615BFC-0x615BB4

	.GLOBAL gfxFileBackgroundOAM
gfxFileBackgroundOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxFileBackground4bpp
gfxFileBackground4bpp:
	.INCBIN "assets/sprites/FileBackground.4bpp"

	.GLOBAL gUnknown_08616C04
gUnknown_08616C04:
	.INCBIN "baserom.gba", 0x616C04, 0x616C28-0x616C04

	.GLOBAL gUnknown_08616C28
gUnknown_08616C28:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08616C30
gUnknown_08616C30:
	.INCBIN "baserom.gba", 0x616C30, 0x617030-0x616C30

	.GLOBAL gUnknown_08617030
gUnknown_08617030:
	.INCBIN "baserom.gba", 0x617030, 0x617078-0x617030

	.GLOBAL gUnknown_08617078
gUnknown_08617078:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=3, affineParam=0

	.GLOBAL gUnknown_08617080
gUnknown_08617080:
	.INCBIN "assets/sprites/gUnknown_08617080.4bpp"

	.GLOBAL gUnknown_08617180
gUnknown_08617180:
	.INCBIN "baserom.gba", 0x617180, 0x6172E8-0x617180

	.GLOBAL gUnknown_086172E8
gUnknown_086172E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_086172F0
gUnknown_086172F0:
	.INCBIN "assets/sprites/gUnknown_086172F0.4bpp"

	.GLOBAL gUnknown_08617570
gUnknown_08617570:
	.INCBIN "baserom.gba", 0x617570, 0x6175B8-0x617570

	.GLOBAL gfxPlusMainOAM
gfxPlusMainOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxPlusMain4bpp
gfxPlusMain4bpp:
	.INCBIN "assets/sprites/PlusMain.4bpp"

	.GLOBAL gUnknown_086176C0
gUnknown_086176C0:
	.INCBIN "baserom.gba", 0x6176C0, 0x617828-0x6176C0

	.GLOBAL gUnknown_08617828
gUnknown_08617828:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08617830
gUnknown_08617830:
	.INCBIN "assets/sprites/gUnknown_08617830.4bpp"

	.GLOBAL gUnknown_08617970
gUnknown_08617970:
	.INCBIN "baserom.gba", 0x617970, 0x617AFC-0x617970

	.GLOBAL gUnknown_08617AFC
gUnknown_08617AFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08617B04
gUnknown_08617B04:
	.INCBIN "assets/sprites/gUnknown_08617B04.4bpp"

	.GLOBAL sMMDKSpriteTemplate
sMMDKSpriteTemplate:
	.INCBIN "baserom.gba", 0x617C64, 0x617CAC-0x617C64

	.GLOBAL gfxMMDKOAM
gfxMMDKOAM:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gfxMMDK4bpp
gfxMMDK4bpp:
	.INCBIN "assets/sprites/MMDK.4bpp"

	.GLOBAL gUnknown_08617DB4
gUnknown_08617DB4:
	.INCBIN "baserom.gba", 0x617DB4, 0x617F1C-0x617DB4

	.GLOBAL gUnknown_08617F1C
gUnknown_08617F1C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08617F24
gUnknown_08617F24:
	.INCBIN "assets/sprites/gUnknown_08617F24.4bpp"

	.GLOBAL gUnknown_08618064
gUnknown_08618064:
	.INCBIN "baserom.gba", 0x618064, 0x6180AC-0x618064

	.GLOBAL gUnknown_086180AC
gUnknown_086180AC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=1, affineParam=0

	.GLOBAL gUnknown_086180B4
gUnknown_086180B4:
	.INCBIN "assets/sprites/gUnknown_086180B4.4bpp"

	.GLOBAL gUnknown_086181B4
gUnknown_086181B4:
	.INCBIN "baserom.gba", 0x6181B4, 0x6183F4-0x6181B4

	.GLOBAL gUnknown_086183F4
gUnknown_086183F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_086183FC
gUnknown_086183FC:
	.INCBIN "baserom.gba", 0x6183FC, 0x6187FC-0x6183FC

	.GLOBAL gUnknown_086187FC
gUnknown_086187FC:
	.INCBIN "baserom.gba", 0x6187FC, 0x6188F8-0x6187FC

	.GLOBAL gUnknown_086188F8
gUnknown_086188F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08618900
gUnknown_08618900:
	.INCBIN "baserom.gba", 0x618900, 0x619000-0x618900

	.GLOBAL gUnknown_08619000
gUnknown_08619000:
	.INCBIN "baserom.gba", 0x619000, 0x6190FC-0x619000

	.GLOBAL gUnknown_086190FC
gUnknown_086190FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08619104
gUnknown_08619104:
	.INCBIN "baserom.gba", 0x619104, 0x619804-0x619104

	.GLOBAL gUnknown_08619804
gUnknown_08619804:
	.INCBIN "baserom.gba", 0x619804, 0x61996C-0x619804

	.GLOBAL gUnknown_0861996C
gUnknown_0861996C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_08619974
gUnknown_08619974:
	.INCBIN "baserom.gba", 0x619974, 0x619AB4-0x619974

	.GLOBAL gUnknown_08619AB4
gUnknown_08619AB4:
	.INCBIN "baserom.gba", 0x619AB4, 0x619AD8-0x619AB4

	.GLOBAL gUnknown_08619AD8
gUnknown_08619AD8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_08619AE0
gUnknown_08619AE0:
	.INCBIN "baserom.gba", 0x619AE0, 0x619B60-0x619AE0

	.GLOBAL gUnknown_08619B60
gUnknown_08619B60:
	.INCBIN "baserom.gba", 0x619B60, 0x619C80-0x619B60

	.GLOBAL gUnknown_08619C80
gUnknown_08619C80:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_08619C88
gUnknown_08619C88:
	.INCBIN "baserom.gba", 0x619C88, 0x61AC88-0x619C88

	.GLOBAL gUnknown_0861AC88
gUnknown_0861AC88:
	.INCBIN "baserom.gba", 0x61AC88, 0x61ADA8-0x61AC88

	.GLOBAL gUnknown_0861ADA8
gUnknown_0861ADA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0861ADB0
gUnknown_0861ADB0:
	.INCBIN "baserom.gba", 0x61ADB0, 0x61AE30-0x61ADB0

	.GLOBAL gUnknown_0861AE30
gUnknown_0861AE30:
	.INCBIN "baserom.gba", 0x61AE30, 0x61AF08-0x61AE30

	.GLOBAL gUnknown_0861AF08
gUnknown_0861AF08:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=10, affineParam=0

	.GLOBAL gUnknown_0861AF10
gUnknown_0861AF10:
	.INCBIN "baserom.gba", 0x61AF10, 0x61B210-0x61AF10

	.GLOBAL gUnknown_0861B210
gUnknown_0861B210:
	.INCBIN "baserom.gba", 0x61B210, 0x61B2A0-0x61B210

	.GLOBAL gUnknown_0861B2A0
gUnknown_0861B2A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_0861B2A8
gUnknown_0861B2A8:
	.INCBIN "baserom.gba", 0x61B2A8, 0x61B4A8-0x61B2A8

	.GLOBAL gUnknown_0861B4A8
gUnknown_0861B4A8:
	.INCBIN "baserom.gba", 0x61B4A8, 0x61B55C-0x61B4A8

	.GLOBAL gUnknown_0861B55C
gUnknown_0861B55C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_0861B564
gUnknown_0861B564:
	.INCBIN "baserom.gba", 0x61B564, 0x61B7E4-0x61B564

	.GLOBAL gUnknown_0861B7E4
gUnknown_0861B7E4:
	.INCBIN "baserom.gba", 0x61B7E4, 0x61BA24-0x61B7E4

	.GLOBAL gUnknown_0861BA24
gUnknown_0861BA24:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0861BA2C
gUnknown_0861BA2C:
	.INCBIN "baserom.gba", 0x61BA2C, 0x61BE2C-0x61BA2C

	.GLOBAL gUnknown_0861BE2C
gUnknown_0861BE2C:
	.INCBIN "baserom.gba", 0x61BE2C, 0x61BEBC-0x61BE2C

	.GLOBAL gUnknown_0861BEBC
gUnknown_0861BEBC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0861BEC4
gUnknown_0861BEC4:
	.INCBIN "baserom.gba", 0x61BEC4, 0x61C0C4-0x61BEC4

	.GLOBAL gUnknown_0861C0C4
gUnknown_0861C0C4:
	.INCBIN "baserom.gba", 0x61C0C4, 0x61C154-0x61C0C4

	.GLOBAL gUnknown_0861C154
gUnknown_0861C154:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0861C15C
gUnknown_0861C15C:
	.INCBIN "baserom.gba", 0x61C15C, 0x61C35C-0x61C15C

	.GLOBAL gUnknown_0861C35C
gUnknown_0861C35C:
	.INCBIN "baserom.gba", 0x61C35C, 0x61C47C-0x61C35C

	.GLOBAL gUnknown_0861C47C
gUnknown_0861C47C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0861C484
gUnknown_0861C484:
	.INCBIN "baserom.gba", 0x61C484, 0x61C884-0x61C484

	.GLOBAL gUnknown_0861C884
gUnknown_0861C884:
	.INCBIN "baserom.gba", 0x61C884, 0x61C95C-0x61C884

	.GLOBAL gUnknown_0861C95C
gUnknown_0861C95C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0861C964
gUnknown_0861C964:
	.INCBIN "baserom.gba", 0x61C964, 0x61CC64-0x61C964

	.GLOBAL gUnknown_0861CC64
gUnknown_0861CC64:
	.INCBIN "baserom.gba", 0x61CC64, 0x61CE14-0x61CC64

	.GLOBAL gUnknown_0861CE14
gUnknown_0861CE14:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0861CE1C
gUnknown_0861CE1C:
	.INCBIN "baserom.gba", 0x61CE1C, 0x61D41C-0x61CE1C

	.GLOBAL gUnknown_0861D41C
gUnknown_0861D41C:
	.INCBIN "baserom.gba", 0x61D41C, 0x61D488-0x61D41C

	.GLOBAL gUnknown_0861D488
gUnknown_0861D488:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0861D490
gUnknown_0861D490:
	.INCBIN "baserom.gba", 0x61D490, 0x61D610-0x61D490

	.GLOBAL gUnknown_0861D610
gUnknown_0861D610:
	.INCBIN "baserom.gba", 0x61D610, 0x61D67C-0x61D610

	.GLOBAL gUnknown_0861D67C
gUnknown_0861D67C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0861D684
gUnknown_0861D684:
	.INCBIN "baserom.gba", 0x61D684, 0x61D804-0x61D684

	.GLOBAL gUnknown_0861D804
gUnknown_0861D804:
	.INCBIN "baserom.gba", 0x61D804, 0x61DA68-0x61D804

	.GLOBAL gUnknown_0861DA68
gUnknown_0861DA68:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0861DA70
gUnknown_0861DA70:
	.INCBIN "baserom.gba", 0x61DA70, 0x61DE70-0x61DA70

	.GLOBAL gUnknown_0861DE70
gUnknown_0861DE70:
	.INCBIN "baserom.gba", 0x61DE70, 0x61E0B0-0x61DE70

	.GLOBAL gUnknown_0861E0B0
gUnknown_0861E0B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_0861E0B8
gUnknown_0861E0B8:
	.INCBIN "assets/sprites/gUnknown_0861E0B8.4bpp"

	.GLOBAL gUnknown_086200B8
gUnknown_086200B8:
	.INCBIN "baserom.gba", 0x6200B8, 0x6201D8-0x6200B8

	.GLOBAL gUnknown_086201D8
gUnknown_086201D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_086201E0
gUnknown_086201E0:
	.INCBIN "assets/sprites/gUnknown_086201E0.4bpp"

	.GLOBAL gUnknown_086211E0
gUnknown_086211E0:
	.INCBIN "baserom.gba", 0x6211E0, 0x621300-0x6211E0

	.GLOBAL gUnknown_08621300
gUnknown_08621300:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_08621308
gUnknown_08621308:
	.INCBIN "assets/sprites/gUnknown_08621308.4bpp"

	.GLOBAL gUnknown_08622308
gUnknown_08622308:
	.INCBIN "baserom.gba", 0x622308, 0x622548-0x622308

	.GLOBAL gUnknown_08622548
gUnknown_08622548:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08622550
gUnknown_08622550:
	.INCBIN "baserom.gba", 0x622550, 0x622950-0x622550

	.GLOBAL gUnknown_08622950
gUnknown_08622950:
	.INCBIN "baserom.gba", 0x622950, 0x622974-0x622950

	.GLOBAL gUnknown_08622974
gUnknown_08622974:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_0862297C
gUnknown_0862297C:
	.INCBIN "baserom.gba", 0x62297C, 0x6229FC-0x62297C

	.GLOBAL gUnknown_086229FC
gUnknown_086229FC:
	.INCBIN "baserom.gba", 0x6229FC, 0x622C60-0x6229FC

	.GLOBAL gUnknown_08622C60
gUnknown_08622C60:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_08622C68
gUnknown_08622C68:
	.INCBIN "baserom.gba", 0x622C68, 0x624E68-0x622C68

	.GLOBAL gUnknown_08624E68
gUnknown_08624E68:
	.INCBIN "baserom.gba", 0x624E68, 0x624EF8-0x624E68

	.GLOBAL gUnknown_08624EF8
gUnknown_08624EF8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08624F00
gUnknown_08624F00:
	.INCBIN "baserom.gba", 0x624F00, 0x625100-0x624F00

	.GLOBAL gUnknown_08625100
gUnknown_08625100:
	.INCBIN "baserom.gba", 0x625100, 0x625340-0x625100

	.GLOBAL gUnknown_08625340
gUnknown_08625340:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08625348
gUnknown_08625348:
	.INCBIN "baserom.gba", 0x625348, 0x625748-0x625348

	.GLOBAL gUnknown_08625748
gUnknown_08625748:
	.INCBIN "baserom.gba", 0x625748, 0x6258F8-0x625748

	.GLOBAL gUnknown_086258F8
gUnknown_086258F8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08625900
gUnknown_08625900:
	.INCBIN "baserom.gba", 0x625900, 0x625F00-0x625900

	.GLOBAL gUnknown_08625F00
gUnknown_08625F00:
	.INCBIN "baserom.gba", 0x625F00, 0x626140-0x625F00

	.GLOBAL gUnknown_08626140
gUnknown_08626140:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08626148
gUnknown_08626148:
	.INCBIN "baserom.gba", 0x626148, 0x626948-0x626148

	.GLOBAL gUnknown_08626948
gUnknown_08626948:
	.INCBIN "baserom.gba", 0x626948, 0x6269D8-0x626948

	.GLOBAL gUnknown_086269D8
gUnknown_086269D8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_086269E0
gUnknown_086269E0:
	.INCBIN "baserom.gba", 0x6269E0, 0x626BE0-0x6269E0

	.GLOBAL gUnknown_08626BE0
gUnknown_08626BE0:
	.INCBIN "baserom.gba", 0x626BE0, 0x626D00-0x626BE0

	.GLOBAL gUnknown_08626D00
gUnknown_08626D00:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08626D08
gUnknown_08626D08:
	.INCBIN "baserom.gba", 0x626D08, 0x627108-0x626D08

	.GLOBAL gUnknown_08627108
gUnknown_08627108:
	.INCBIN "baserom.gba", 0x627108, 0x627300-0x627108

	.GLOBAL gUnknown_08627300
gUnknown_08627300:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08627308
gUnknown_08627308:
	.INCBIN "baserom.gba", 0x627308, 0x627588-0x627308

	.GLOBAL gUnknown_08627588
gUnknown_08627588:
	.INCBIN "baserom.gba", 0x627588, 0x627660-0x627588

	.GLOBAL gUnknown_08627660
gUnknown_08627660:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_08627668
gUnknown_08627668:
	.INCBIN "baserom.gba", 0x627668, 0x627968-0x627668

	.GLOBAL gUnknown_08627968
gUnknown_08627968:
	.INCBIN "baserom.gba", 0x627968, 0x627BA8-0x627968

	.GLOBAL gUnknown_08627BA8
gUnknown_08627BA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08627BB0
gUnknown_08627BB0:
	.INCBIN "baserom.gba", 0x627BB0, 0x627FB0-0x627BB0

	.GLOBAL gUnknown_08627FB0
gUnknown_08627FB0:
	.INCBIN "baserom.gba", 0x627FB0, 0x6280D0-0x627FB0

	.GLOBAL gUnknown_086280D0
gUnknown_086280D0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_086280D8
gUnknown_086280D8:
	.INCBIN "baserom.gba", 0x6280D8, 0x628358-0x6280D8

	.GLOBAL gUnknown_08628358
gUnknown_08628358:
	.INCBIN "baserom.gba", 0x628358, 0x6283E8-0x628358

	.GLOBAL gUnknown_086283E8
gUnknown_086283E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_086283F0
gUnknown_086283F0:
	.INCBIN "baserom.gba", 0x6283F0, 0x6285F0-0x6283F0

	.GLOBAL gUnknown_086285F0
gUnknown_086285F0:
	.INCBIN "baserom.gba", 0x6285F0, 0x628710-0x6285F0

	.GLOBAL gUnknown_08628710
gUnknown_08628710:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08628718
gUnknown_08628718:
	.INCBIN "baserom.gba", 0x628718, 0x628B18-0x628718

	.GLOBAL gUnknown_08628B18
gUnknown_08628B18:
	.INCBIN "baserom.gba", 0x628B18, 0x628CA4-0x628B18

	.GLOBAL gUnknown_08628CA4
gUnknown_08628CA4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08628CAC
gUnknown_08628CAC:
	.INCBIN "baserom.gba", 0x628CAC, 0x62922C-0x628CAC

	.GLOBAL gUnknown_0862922C
gUnknown_0862922C:
	.INCBIN "baserom.gba", 0x62922C, 0x629304-0x62922C

	.GLOBAL gUnknown_08629304
gUnknown_08629304:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0862930C
gUnknown_0862930C:
	.INCBIN "baserom.gba", 0x62930C, 0x62960C-0x62930C

	.GLOBAL gUnknown_0862960C
gUnknown_0862960C:
	.INCBIN "baserom.gba", 0x62960C, 0x6297BC-0x62960C

	.GLOBAL gUnknown_086297BC
gUnknown_086297BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_086297C4
gUnknown_086297C4:
	.INCBIN "baserom.gba", 0x6297C4, 0x629DC4-0x6297C4

	.GLOBAL gUnknown_08629DC4
gUnknown_08629DC4:
	.INCBIN "baserom.gba", 0x629DC4, 0x629EE4-0x629DC4

	.GLOBAL gUnknown_08629EE4
gUnknown_08629EE4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_08629EEC
gUnknown_08629EEC:
	.INCBIN "baserom.gba", 0x629EEC, 0x629FAC-0x629EEC

	.GLOBAL gUnknown_08629FAC
gUnknown_08629FAC:
	.INCBIN "baserom.gba", 0x629FAC, 0x62A060-0x629FAC

	.GLOBAL gUnknown_0862A060
gUnknown_0862A060:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=0, tileNum=0, priority=0, paletteNum=5, affineParam=0

	.GLOBAL gUnknown_0862A068
gUnknown_0862A068:
	.INCBIN "baserom.gba", 0x62A068, 0x62A108-0x62A068

	.GLOBAL gUnknown_0862A108
gUnknown_0862A108:
	.INCBIN "baserom.gba", 0x62A108, 0x62A348-0x62A108

	.GLOBAL gUnknown_0862A348
gUnknown_0862A348:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0862A350
gUnknown_0862A350:
	.INCBIN "baserom.gba", 0x62A350, 0x62A750-0x62A350

	.GLOBAL gUnknown_0862A750
gUnknown_0862A750:
	.INCBIN "baserom.gba", 0x62A750, 0x62A7E0-0x62A750

	.GLOBAL gUnknown_0862A7E0
gUnknown_0862A7E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0862A7E8
gUnknown_0862A7E8:
	.INCBIN "baserom.gba", 0x62A7E8, 0x62A9E8-0x62A7E8

	.GLOBAL gUnknown_0862A9E8
gUnknown_0862A9E8:
	.INCBIN "baserom.gba", 0x62A9E8, 0x62AB08-0x62A9E8

	.GLOBAL gUnknown_0862AB08
gUnknown_0862AB08:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0862AB10
gUnknown_0862AB10:
	.INCBIN "baserom.gba", 0x62AB10, 0x62AF10-0x62AB10

	.GLOBAL gUnknown_0862AF10
gUnknown_0862AF10:
	.INCBIN "baserom.gba", 0x62AF10, 0x62AFE8-0x62AF10

	.GLOBAL gUnknown_0862AFE8
gUnknown_0862AFE8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0862AFF0
gUnknown_0862AFF0:
	.INCBIN "baserom.gba", 0x62AFF0, 0x62B2F0-0x62AFF0

	.GLOBAL gUnknown_0862B2F0
gUnknown_0862B2F0:
	.INCBIN "baserom.gba", 0x62B2F0, 0x62B4A0-0x62B2F0

	.GLOBAL gUnknown_0862B4A0
gUnknown_0862B4A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=12, affineParam=0

	.GLOBAL gUnknown_0862B4A8
gUnknown_0862B4A8:
	.INCBIN "baserom.gba", 0x62B4A8, 0x62BAA8-0x62B4A8

	.GLOBAL gUnknown_0862BAA8
gUnknown_0862BAA8:
	.INCBIN "baserom.gba", 0x62BAA8, 0x62BBC8-0x62BAA8

	.GLOBAL gUnknown_0862BBC8
gUnknown_0862BBC8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=3, affineParam=0

	.GLOBAL gUnknown_0862BBD0
gUnknown_0862BBD0:
	.INCBIN "baserom.gba", 0x62BBD0, 0x62CBD0-0x62BBD0

	.GLOBAL gUnknown_0862CBD0
gUnknown_0862CBD0:
	.INCBIN "baserom.gba", 0x62CBD0, 0x62CCF0-0x62CBD0

	.GLOBAL gUnknown_0862CCF0
gUnknown_0862CCF0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0862CCF8
gUnknown_0862CCF8:
	.INCBIN "baserom.gba", 0x62CCF8, 0x62D0F8-0x62CCF8

	.GLOBAL gUnknown_0862D0F8
gUnknown_0862D0F8:
	.INCBIN "baserom.gba", 0x62D0F8, 0x62D11C-0x62D0F8

	.GLOBAL gUnknown_0862D11C
gUnknown_0862D11C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0862D124
gUnknown_0862D124:
	.INCBIN "baserom.gba", 0x62D124, 0x62D1A4-0x62D124

	.GLOBAL gUnknown_0862D1A4
gUnknown_0862D1A4:
	.INCBIN "baserom.gba", 0x62D1A4, 0x62D1C8-0x62D1A4

	.GLOBAL gUnknown_0862D1C8
gUnknown_0862D1C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862D1D0
gUnknown_0862D1D0:
	.INCBIN "baserom.gba", 0x62D1D0, 0x62D250-0x62D1D0

	.GLOBAL gUnknown_0862D250
gUnknown_0862D250:
	.INCBIN "baserom.gba", 0x62D250, 0x62D2BC-0x62D250

	.GLOBAL gUnknown_0862D2BC
gUnknown_0862D2BC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862D2C4
gUnknown_0862D2C4:
	.INCBIN "baserom.gba", 0x62D2C4, 0x62D444-0x62D2C4

	.GLOBAL gUnknown_0862D444
gUnknown_0862D444:
	.INCBIN "baserom.gba", 0x62D444, 0x62D4B0-0x62D444

	.GLOBAL gUnknown_0862D4B0
gUnknown_0862D4B0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862D4B8
gUnknown_0862D4B8:
	.INCBIN "baserom.gba", 0x62D4B8, 0x62D638-0x62D4B8

	.GLOBAL gUnknown_0862D638
gUnknown_0862D638:
	.INCBIN "baserom.gba", 0x62D638, 0x62D65C-0x62D638

	.GLOBAL gUnknown_0862D65C
gUnknown_0862D65C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862D664
gUnknown_0862D664:
	.INCBIN "baserom.gba", 0x62D664, 0x62D864-0x62D664

	.GLOBAL gUnknown_0862D864
gUnknown_0862D864:
	.INCBIN "baserom.gba", 0x62D864, 0x62D8F4-0x62D864

	.GLOBAL gUnknown_0862D8F4
gUnknown_0862D8F4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862D8FC
gUnknown_0862D8FC:
	.INCBIN "baserom.gba", 0x62D8FC, 0x62DCFC-0x62D8FC

	.GLOBAL gUnknown_0862DCFC
gUnknown_0862DCFC:
	.INCBIN "baserom.gba", 0x62DCFC, 0x62DD8C-0x62DCFC

	.GLOBAL gUnknown_0862DD8C
gUnknown_0862DD8C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862DD94
gUnknown_0862DD94:
	.INCBIN "baserom.gba", 0x62DD94, 0x62E194-0x62DD94

	.GLOBAL gUnknown_0862E194
gUnknown_0862E194:
	.INCBIN "baserom.gba", 0x62E194, 0x62E2B4-0x62E194

	.GLOBAL gUnknown_0862E2B4
gUnknown_0862E2B4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862E2BC
gUnknown_0862E2BC:
	.INCBIN "baserom.gba", 0x62E2BC, 0x62E4BC-0x62E2BC

	.GLOBAL gUnknown_0862E4BC
gUnknown_0862E4BC:
	.INCBIN "baserom.gba", 0x62E4BC, 0x62E54C-0x62E4BC

	.GLOBAL gUnknown_0862E54C
gUnknown_0862E54C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862E554
gUnknown_0862E554:
	.INCBIN "baserom.gba", 0x62E554, 0x62E754-0x62E554

	.GLOBAL gUnknown_0862E754
gUnknown_0862E754:
	.INCBIN "baserom.gba", 0x62E754, 0x62E778-0x62E754

	.GLOBAL gUnknown_0862E778
gUnknown_0862E778:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=14, affineParam=0

	.GLOBAL gUnknown_0862E780
gUnknown_0862E780:
	.INCBIN "baserom.gba", 0x62E780, 0x62E980-0x62E780

	.GLOBAL gUnknown_0862E980
gUnknown_0862E980:
	.INCBIN "baserom.gba", 0x62E980, 0x62E9C8-0x62E980

	.GLOBAL gUnknown_0862E9C8
gUnknown_0862E9C8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_0862E9D0
gUnknown_0862E9D0:
	.INCBIN "baserom.gba", 0x62E9D0, 0x62EBD0-0x62E9D0

	.GLOBAL gUnknown_0862EBD0
gUnknown_0862EBD0:
	.INCBIN "baserom.gba", 0x62EBD0, 0x62F008-0x62EBD0

	.GLOBAL gUnknown_0862F008
gUnknown_0862F008:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_0862F010
gUnknown_0862F010:
	.INCBIN "baserom.gba", 0x62F010, 0x62FC10-0x62F010

	.GLOBAL gUnknown_0862FC10
gUnknown_0862FC10:
	.INCBIN "baserom.gba", 0x62FC10, 0x62FE50-0x62FC10

	.GLOBAL gUnknown_0862FE50
gUnknown_0862FE50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0862FE58
gUnknown_0862FE58:
	.INCBIN "baserom.gba", 0x62FE58, 0x63FE58-0x62FE58

	.GLOBAL gUnknown_0863FE58
gUnknown_0863FE58:
	.INCBIN "baserom.gba", 0x63FE58, 0x6400E0-0x63FE58

	.GLOBAL gUnknown_086400E0
gUnknown_086400E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_086400E8
gUnknown_086400E8:
	.INCBIN "baserom.gba", 0x6400E8, 0x640DE8-0x6400E8

	.GLOBAL gUnknown_08640DE8
gUnknown_08640DE8:
	.INCBIN "baserom.gba", 0x640DE8, 0x640F2C-0x640DE8

	.GLOBAL gUnknown_08640F2C
gUnknown_08640F2C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_08640F34
gUnknown_08640F34:
	.INCBIN "baserom.gba", 0x640F34, 0x642134-0x640F34

	.GLOBAL gUnknown_08642134
gUnknown_08642134:
	.INCBIN "baserom.gba", 0x642134, 0x6421E8-0x642134

	.GLOBAL gUnknown_086421E8
gUnknown_086421E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_086421F0
gUnknown_086421F0:
	.INCBIN "baserom.gba", 0x6421F0, 0x642BF0-0x6421F0

	.GLOBAL gUnknown_08642BF0
gUnknown_08642BF0:
	.INCBIN "baserom.gba", 0x642BF0, 0x642D34-0x642BF0

	.GLOBAL gUnknown_08642D34
gUnknown_08642D34:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08642D3C
gUnknown_08642D3C:
	.INCBIN "baserom.gba", 0x642D3C, 0x64BD3C-0x642D3C

	.GLOBAL gUnknown_0864BD3C
gUnknown_0864BD3C:
	.INCBIN "baserom.gba", 0x64BD3C, 0x64BF58-0x64BD3C

	.GLOBAL gUnknown_0864BF58
gUnknown_0864BF58:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_0864BF60
gUnknown_0864BF60:
	.INCBIN "baserom.gba", 0x64BF60, 0x64CC60-0x64BF60

	.GLOBAL gUnknown_0864CC60
gUnknown_0864CC60:
	.INCBIN "baserom.gba", 0x64CC60, 0x64CF30-0x64CC60

	.GLOBAL gUnknown_0864CF30
gUnknown_0864CF30:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0864CF38
gUnknown_0864CF38:
	.INCBIN "baserom.gba", 0x64CF38, 0x64D138-0x64CF38

	.GLOBAL gUnknown_0864D138
gUnknown_0864D138:
	.INCBIN "baserom.gba", 0x64D138, 0x64D2E8-0x64D138

	.GLOBAL gUnknown_0864D2E8
gUnknown_0864D2E8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=13, affineParam=0

	.GLOBAL gUnknown_0864D2F0
gUnknown_0864D2F0:
	.INCBIN "baserom.gba", 0x64D2F0, 0x64DAF0-0x64D2F0

	.GLOBAL gUnknown_0864DAF0
gUnknown_0864DAF0:
	.INCBIN "baserom.gba", 0x64DAF0, 0x64DC10-0x64DAF0

	.GLOBAL gUnknown_0864DC10
gUnknown_0864DC10:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0864DC18
gUnknown_0864DC18:
	.INCBIN "baserom.gba", 0x64DC18, 0x64EC18-0x64DC18

	.GLOBAL gUnknown_0864EC18
gUnknown_0864EC18:
	.INCBIN "baserom.gba", 0x64EC18, 0x64ED38-0x64EC18

	.GLOBAL gUnknown_0864ED38
gUnknown_0864ED38:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0864ED40
gUnknown_0864ED40:
	.INCBIN "baserom.gba", 0x64ED40, 0x64FD40-0x64ED40

	.GLOBAL gUnknown_0864FD40
gUnknown_0864FD40:
	.INCBIN "baserom.gba", 0x64FD40, 0x64FE60-0x64FD40

	.GLOBAL gUnknown_0864FE60
gUnknown_0864FE60:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_0864FE68
gUnknown_0864FE68:
	.INCBIN "baserom.gba", 0x64FE68, 0x650E68-0x64FE68

	.GLOBAL gUnknown_08650E68
gUnknown_08650E68:
	.INCBIN "baserom.gba", 0x650E68, 0x650F88-0x650E68

	.GLOBAL gUnknown_08650F88
gUnknown_08650F88:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_8BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=0, affineParam=0

	.GLOBAL gUnknown_08650F90
gUnknown_08650F90:
	.INCBIN "baserom.gba", 0x650F90, 0x651F90-0x650F90

	.GLOBAL gUnknown_08651F90
gUnknown_08651F90:
	.INCBIN "baserom.gba", 0x651F90, 0x651FFC-0x651F90

	.GLOBAL gUnknown_08651FFC
gUnknown_08651FFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_08652004
gUnknown_08652004:
	.INCBIN "baserom.gba", 0x652004, 0x652184-0x652004

	.GLOBAL gUnknown_08652184
gUnknown_08652184:
	.INCBIN "baserom.gba", 0x652184, 0x6521F0-0x652184

	.GLOBAL gUnknown_086521F0
gUnknown_086521F0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=8, affineParam=0

	.GLOBAL gUnknown_086521F8
gUnknown_086521F8:
	.INCBIN "baserom.gba", 0x6521F8, 0x652378-0x6521F8

	.GLOBAL gUnknown_08652378
gUnknown_08652378:
	.INCBIN "baserom.gba", 0x652378, 0x652720-0x652378

	.GLOBAL gUnknown_08652720
gUnknown_08652720:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=3, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08652728
gUnknown_08652728:
	.INCBIN "baserom.gba", 0x652728, 0x654B28-0x652728

	.GLOBAL gUnknown_08654B28
gUnknown_08654B28:
	.INCBIN "baserom.gba", 0x654B28, 0x654BDC-0x654B28

	.GLOBAL gUnknown_08654BDC
gUnknown_08654BDC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08654BE4
gUnknown_08654BE4:
	.INCBIN "baserom.gba", 0x654BE4, 0x6553E4-0x654BE4

	.GLOBAL gUnknown_086553E4
gUnknown_086553E4:
	.INCBIN "baserom.gba", 0x6553E4, 0x655624-0x6553E4

	.GLOBAL gUnknown_08655624
gUnknown_08655624:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_0865562C
gUnknown_0865562C:
	.INCBIN "baserom.gba", 0x65562C, 0x656A2C-0x65562C

	.GLOBAL gUnknown_08656A2C
gUnknown_08656A2C:
	.INCBIN "baserom.gba", 0x656A2C, 0x656A50-0x656A2C

	.GLOBAL gUnknown_08656A50
gUnknown_08656A50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08656A58
gUnknown_08656A58:
	.INCBIN "baserom.gba", 0x656A58, 0x656C58-0x656A58

	.GLOBAL gUnknown_08656C58
gUnknown_08656C58:
	.INCBIN "baserom.gba", 0x656C58, 0x656C7C-0x656C58

	.GLOBAL gUnknown_08656C7C
gUnknown_08656C7C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08656C84
gUnknown_08656C84:
	.INCBIN "baserom.gba", 0x656C84, 0x656E84-0x656C84

	.GLOBAL gUnknown_08656E84
gUnknown_08656E84:
	.INCBIN "baserom.gba", 0x656E84, 0x656EA8-0x656E84

	.GLOBAL gUnknown_08656EA8
gUnknown_08656EA8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08656EB0
gUnknown_08656EB0:
	.INCBIN "baserom.gba", 0x656EB0, 0x6570B0-0x656EB0

	.GLOBAL gUnknown_086570B0
gUnknown_086570B0:
	.INCBIN "baserom.gba", 0x6570B0, 0x6570D4-0x6570B0

	.GLOBAL gUnknown_086570D4
gUnknown_086570D4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_086570DC
gUnknown_086570DC:
	.INCBIN "baserom.gba", 0x6570DC, 0x6572DC-0x6570DC

	.GLOBAL gUnknown_086572DC
gUnknown_086572DC:
	.INCBIN "baserom.gba", 0x6572DC, 0x657324-0x6572DC

	.GLOBAL gUnknown_08657324
gUnknown_08657324:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0865732C
gUnknown_0865732C:
	.INCBIN "baserom.gba", 0x65732C, 0x6573AC-0x65732C

	.GLOBAL gUnknown_086573AC
gUnknown_086573AC:
	.INCBIN "baserom.gba", 0x6573AC, 0x65742C-0x6573AC

	.GLOBAL gUnknown_0865742C
gUnknown_0865742C:
	.INCBIN "baserom.gba", 0x65742C, 0x657450-0x65742C

	.GLOBAL gUnknown_08657450
gUnknown_08657450:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=11, affineParam=0

	.GLOBAL gUnknown_08657458
gUnknown_08657458:
	.INCBIN "baserom.gba", 0x657458, 0x6574D8-0x657458

	.GLOBAL gUnknown_086574D8
gUnknown_086574D8:
	.INCBIN "baserom.gba", 0x6574D8, 0x6574FC-0x6574D8

	.GLOBAL gUnknown_086574FC
gUnknown_086574FC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=4, affineParam=0

	.GLOBAL gUnknown_08657504
gUnknown_08657504:
	.INCBIN "baserom.gba", 0x657504, 0x657584-0x657504

	.GLOBAL gUnknown_08657584
gUnknown_08657584:
	.INCBIN "baserom.gba", 0x657584, 0x6575A8-0x657584

	.GLOBAL gUnknown_086575A8
gUnknown_086575A8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_086575B0
gUnknown_086575B0:
	.INCBIN "baserom.gba", 0x6575B0, 0x657630-0x6575B0

	.GLOBAL gUnknown_08657630
gUnknown_08657630:
	.INCBIN "baserom.gba", 0x657630, 0x6576C0-0x657630

	.GLOBAL gUnknown_086576C0
gUnknown_086576C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=2, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_086576C8
gUnknown_086576C8:
	.INCBIN "assets/sprites/gUnknown_086576C8.4bpp"

	.GLOBAL gUnknown_08657AC8
gUnknown_08657AC8:
	.INCBIN "baserom.gba", 0x657AC8, 0x657AEC-0x657AC8

	.GLOBAL gUnknown_08657AEC
gUnknown_08657AEC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08657AF4
gUnknown_08657AF4:
	.INCBIN "baserom.gba", 0x657AF4, 0x657B74-0x657AF4

	.GLOBAL gUnknown_08657B74
gUnknown_08657B74:
	.INCBIN "baserom.gba", 0x657B74, 0x657B98-0x657B74

	.GLOBAL gUnknown_08657B98
gUnknown_08657B98:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=7, affineParam=0

	.GLOBAL gUnknown_08657BA0
gUnknown_08657BA0:
	.INCBIN "baserom.gba", 0x657BA0, 0x657C20-0x657BA0

	.GLOBAL gUnknown_08657C20
gUnknown_08657C20:
	.INCBIN "baserom.gba", 0x657C20, 0x657CD4-0x657C20

	.GLOBAL gUnknown_08657CD4
gUnknown_08657CD4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08657CDC
gUnknown_08657CDC:
	.INCBIN "baserom.gba", 0x657CDC, 0x657F5C-0x657CDC

	.GLOBAL gUnknown_08657F5C
gUnknown_08657F5C:
	.INCBIN "baserom.gba", 0x657F5C, 0x657FC8-0x657F5C

	.GLOBAL gUnknown_08657FC8
gUnknown_08657FC8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08657FD0
gUnknown_08657FD0:
	.INCBIN "baserom.gba", 0x657FD0, 0x658150-0x657FD0

	.GLOBAL gUnknown_08658150
gUnknown_08658150:
	.INCBIN "baserom.gba", 0x658150, 0x6581E0-0x658150

	.GLOBAL gUnknown_086581E0
gUnknown_086581E0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_086581E8
gUnknown_086581E8:
	.INCBIN "baserom.gba", 0x6581E8, 0x658268-0x6581E8

	.GLOBAL gUnknown_08658268
gUnknown_08658268:
	.INCBIN "baserom.gba", 0x658268, 0x65828C-0x658268

	.GLOBAL gUnknown_0865828C
gUnknown_0865828C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_SQUARE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08658294
gUnknown_08658294:
	.INCBIN "baserom.gba", 0x658294, 0x658314-0x658294

	.GLOBAL gUnknown_08658314
gUnknown_08658314:
	.INCBIN "baserom.gba", 0x658314, 0x6583A4-0x658314

	.GLOBAL gUnknown_086583A4
gUnknown_086583A4:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_086583AC
gUnknown_086583AC:
	.INCBIN "baserom.gba", 0x6583AC, 0x6585AC-0x6583AC

	.GLOBAL gUnknown_086585AC
gUnknown_086585AC:
	.INCBIN "baserom.gba", 0x6585AC, 0x6588A0-0x6585AC

	.GLOBAL gUnknown_086588A0
gUnknown_086588A0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_086588A8
gUnknown_086588A8:
	.INCBIN "baserom.gba", 0x6588A8, 0x658C28-0x6588A8

	.GLOBAL gUnknown_08658C28
gUnknown_08658C28:
	.INCBIN "baserom.gba", 0x658C28, 0x658CB8-0x658C28

	.GLOBAL gUnknown_08658CB8
gUnknown_08658CB8:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08658CC0
gUnknown_08658CC0:
	.INCBIN "baserom.gba", 0x658CC0, 0x658EC0-0x658CC0

	.GLOBAL gUnknown_08658EC0
gUnknown_08658EC0:
	.INCBIN "baserom.gba", 0x658EC0, 0x658F50-0x658EC0

	.GLOBAL gUnknown_08658F50
gUnknown_08658F50:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08658F58
gUnknown_08658F58:
	.INCBIN "baserom.gba", 0x658F58, 0x658FD8-0x658F58

	.GLOBAL gUnknown_08658FD8
gUnknown_08658FD8:
	.INCBIN "baserom.gba", 0x658FD8, 0x658FFC-0x658FD8

	.GLOBAL gUnknown_08658FFC
gUnknown_08658FFC:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08659004
gUnknown_08659004:
	.INCBIN "baserom.gba", 0x659004, 0x659084-0x659004

	.GLOBAL gUnknown_08659084
gUnknown_08659084:
	.INCBIN "baserom.gba", 0x659084, 0x659114-0x659084

	.GLOBAL gUnknown_08659114
gUnknown_08659114:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_V_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_0865911C
gUnknown_0865911C:
	.INCBIN "baserom.gba", 0x65911C, 0x65919C-0x65911C

	.GLOBAL gUnknown_0865919C
gUnknown_0865919C:
	.INCBIN "baserom.gba", 0x65919C, 0x6591C0-0x65919C

	.GLOBAL gUnknown_086591C0
gUnknown_086591C0:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_086591C8
gUnknown_086591C8:
	.INCBIN "baserom.gba", 0x6591C8, 0x659248-0x6591C8

	.GLOBAL gUnknown_08659248
gUnknown_08659248:
	.INCBIN "baserom.gba", 0x659248, 0x65926C-0x659248

	.GLOBAL gUnknown_0865926C
gUnknown_0865926C:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=6, affineParam=0

	.GLOBAL gUnknown_08659274
gUnknown_08659274:
	.INCBIN "baserom.gba", 0x659274, 0x6592F4-0x659274

	.GLOBAL gUnknown_086592F4
gUnknown_086592F4:
	.INCBIN "baserom.gba", 0x6592F4, 0x659318-0x6592F4

	.GLOBAL gUnknown_08659318
gUnknown_08659318:
	OamData y=0, affineMode=ST_OAM_AFFINE_OFF, objMode=ST_OAM_OBJ_NORMAL, mosaic=0, bpp=ST_OAM_4BPP, shape=ST_OAM_H_RECTANGLE, x=0, matrixNum=0, size=1, tileNum=0, priority=0, paletteNum=2, affineParam=0

	.GLOBAL gUnknown_08659320
gUnknown_08659320:
	.INCBIN "baserom.gba", 0x659320, 0x6593A0-0x659320

	.GLOBAL gUncompressedGraphicsTable
gUncompressedGraphicsTable:
	.2byte 0x0016 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080B8584 @ Sprite Data 1
	.4byte gUnknown_080B889C @ OAM
	.4byte gUnknown_080B88A4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080B90A4 @ Sprite Data 1
	.4byte gUnknown_080B92E4 @ OAM
	.4byte gUnknown_080B92EC @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080B9AEC @ Sprite Data 1
	.4byte gUnknown_080B9B7C @ OAM
	.4byte gUnknown_080B9B84 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080B9C84 @ Sprite Data 1
	.4byte gUnknown_080B9DA4 @ OAM
	.4byte gUnknown_080B9DAC @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080B9FAC @ Sprite Data 1
	.4byte gUnknown_080BA1A4 @ OAM
	.4byte gUnknown_080BA1AC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080BA8AC @ Sprite Data 1
	.4byte gUnknown_080BA9CC @ OAM
	.4byte gUnknown_080BA9D4 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080BACD4 @ Sprite Data 1
	.4byte gUnknown_080BADF4 @ OAM
	.4byte gUnknown_080BADFC @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080BEDFC @ Sprite Data 1
	.4byte gUnknown_080BF03C @ OAM
	.4byte gUnknown_080BF044 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C0044 @ Sprite Data 1
	.4byte gUnknown_080C0140 @ OAM
	.4byte gUnknown_080C0148 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C0848 @ Sprite Data 1
	.4byte gUnknown_080C09F8 @ OAM
	.4byte gUnknown_080C0A00 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C2200 @ Sprite Data 1
	.4byte gUnknown_080C2320 @ OAM
	.4byte gUnknown_080C2328 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C2728 @ Sprite Data 1
	.4byte gUnknown_080C2800 @ OAM
	.4byte gUnknown_080C2808 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C3408 @ Sprite Data 1
	.4byte gUnknown_080C3648 @ OAM
	.4byte gUnknown_080C3650 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C5650 @ Sprite Data 1
	.4byte gUnknown_080C56E0 @ OAM
	.4byte gUnknown_080C56E8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C5EE8 @ Sprite Data 1
	.4byte gUnknown_080C6008 @ OAM
	.4byte gUnknown_080C6010 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C7010 @ Sprite Data 1
	.4byte gUnknown_080C70E8 @ OAM
	.4byte gUnknown_080C70F0 @ Sprite Graphics

	.2byte 0x0019 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C73F0 @ Sprite Data 1
	.4byte gUnknown_080C7774 @ OAM
	.4byte gUnknown_080C777C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C7B7C @ Sprite Data 1
	.4byte gUnknown_080C7C54 @ OAM
	.4byte gUnknown_080C7C5C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C7F5C @ Sprite Data 1
	.4byte gUnknown_080C8034 @ OAM
	.4byte gUnknown_080C803C @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C833C @ Sprite Data 1
	.4byte gUnknown_080C83A8 @ OAM
	.4byte gUnknown_080C83B0 @ Sprite Graphics

	.2byte 0x002E @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080C87B0 @ Sprite Data 1
	.4byte gUnknown_080C8E28 @ OAM
	.4byte gUnknown_080C8E30 @ Sprite Graphics

	.2byte 0x002E @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080CA530 @ Sprite Data 1
	.4byte gUnknown_080CABA8 @ OAM
	.4byte gUnknown_080CABB0 @ Sprite Graphics

	.2byte 0x002E @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080CB170 @ Sprite Data 1
	.4byte gUnknown_080CB7E8 @ OAM
	.4byte gUnknown_080CB7F0 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080CBDB0 @ Sprite Data 1
	.4byte gUnknown_080CC230 @ OAM
	.4byte gUnknown_080CC238 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080D4238 @ Sprite Data 1
	.4byte gUnknown_080D46B8 @ OAM
	.4byte gUnknown_080D46C0 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080DC6C0 @ Sprite Data 1
	.4byte gUnknown_080DCB40 @ OAM
	.4byte gUnknown_080DCB48 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080E4B48 @ Sprite Data 1
	.4byte gUnknown_080E4C68 @ OAM
	.4byte gUnknown_080E4C70 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080E6C70 @ Sprite Data 1
	.4byte gUnknown_080E6EB0 @ OAM
	.4byte gUnknown_080E6EB8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080EAEB8 @ Sprite Data 1
	.4byte gUnknown_080EB0F8 @ OAM
	.4byte gUnknown_080EB100 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080ED100 @ Sprite Data 1
	.4byte gUnknown_080ED244 @ OAM
	.4byte gUnknown_080ED24C @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080EF64C @ Sprite Data 1
	.4byte gUnknown_080EF790 @ OAM
	.4byte gUnknown_080EF798 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080F1B98 @ Sprite Data 1
	.4byte gUnknown_080F2018 @ OAM
	.4byte gUnknown_080F2020 @ Sprite Graphics

	.2byte 0x0038 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080F4020 @ Sprite Data 1
	.4byte gUnknown_080F4800 @ OAM
	.4byte gUnknown_080F4808 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080F7008 @ Sprite Data 1
	.4byte gUnknown_080F7248 @ OAM
	.4byte gUnknown_080F7250 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080F8250 @ Sprite Data 1
	.4byte gUnknown_080F8370 @ OAM
	.4byte gUnknown_080F8378 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080F8B78 @ Sprite Data 1
	.4byte gUnknown_080F8C98 @ OAM
	.4byte gUnknown_080F8CA0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080F94A0 @ Sprite Data 1
	.4byte gUnknown_080F96E0 @ OAM
	.4byte gUnknown_080F96E8 @ Sprite Graphics

	.2byte 0x0017 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FA4E8 @ Sprite Data 1
	.4byte gUnknown_080FA824 @ OAM
	.4byte gUnknown_080FA82C @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FDC2C @ Sprite Data 1
	.4byte gUnknown_080FDD28 @ OAM
	.4byte gUnknown_080FDD30 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FE0B0 @ Sprite Data 1
	.4byte gUnknown_080FE1D0 @ OAM
	.4byte gUnknown_080FE1D8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FE5D8 @ Sprite Data 1
	.4byte gUnknown_080FE6F8 @ OAM
	.4byte gUnknown_080FE700 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FEB00 @ Sprite Data 1
	.4byte gUnknown_080FED40 @ OAM
	.4byte gUnknown_080FED48 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FF548 @ Sprite Data 1
	.4byte gUnknown_080FF56C @ OAM
	.4byte gUnknown_080FF574 @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FF5F4 @ Sprite Data 1
	.4byte gUnknown_080FF858 @ OAM
	.4byte gUnknown_080FF860 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_080FFBE0 @ Sprite Data 1
	.4byte gUnknown_080FFE20 @ OAM
	.4byte gUnknown_080FFE28 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08100228 @ Sprite Data 1
	.4byte gUnknown_081002B8 @ OAM
	.4byte gUnknown_081002C0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081004C0 @ Sprite Data 1
	.4byte gUnknown_08100700 @ OAM
	.4byte gUnknown_08100708 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08100B08 @ Sprite Data 1
	.4byte gUnknown_08100CB8 @ OAM
	.4byte gUnknown_08100CC0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08100D40 @ Sprite Data 1
	.4byte gUnknown_08100F80 @ OAM
	.4byte gUnknown_08100F88 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08101788 @ Sprite Data 1
	.4byte gUnknown_081018A8 @ OAM
	.4byte gUnknown_081018B0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08101930 @ Sprite Data 1
	.4byte gUnknown_08101A50 @ OAM
	.4byte gUnknown_08101A58 @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08101AD8 @ Sprite Data 1
	.4byte gUnknown_08101CD0 @ OAM
	.4byte gUnknown_08101CD8 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08102358 @ Sprite Data 1
	.4byte gUnknown_08102430 @ OAM
	.4byte gUnknown_08102438 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08102738 @ Sprite Data 1
	.4byte gUnknown_08102858 @ OAM
	.4byte gUnknown_08102860 @ Sprite Graphics

	.2byte 0x001E @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08103860 @ Sprite Data 1
	.4byte gUnknown_08103C98 @ OAM
	.4byte gUnknown_08103CA0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081054A0 @ Sprite Data 1
	.4byte gUnknown_081054C4 @ OAM
	.4byte gUnknown_081054CC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810554C @ Sprite Data 1
	.4byte gUnknown_0810566C @ OAM
	.4byte gUnknown_08105674 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08105A74 @ Sprite Data 1
	.4byte gUnknown_08105B04 @ OAM
	.4byte gUnknown_08105B0C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08105D0C @ Sprite Data 1
	.4byte gUnknown_08105E2C @ OAM
	.4byte gUnknown_08105E34 @ Sprite Graphics

	.2byte 0x000F @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08106234 @ Sprite Data 1
	.4byte gUnknown_08106450 @ OAM
	.4byte gUnknown_08106458 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08106BD8 @ Sprite Data 1
	.4byte gUnknown_08106BFC @ OAM
	.4byte gUnknown_08106C04 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08106D04 @ Sprite Data 1
	.4byte gUnknown_08106E24 @ OAM
	.4byte gUnknown_08106E2C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810722C @ Sprite Data 1
	.4byte gUnknown_0810746C @ OAM
	.4byte gUnknown_08107474 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08108474 @ Sprite Data 1
	.4byte gUnknown_08108498 @ OAM
	.4byte gUnknown_081084A0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081086A0 @ Sprite Data 1
	.4byte gUnknown_081088E0 @ OAM
	.4byte gUnknown_081088E8 @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810C8E8 @ Sprite Data 1
	.4byte gUnknown_0810CAE0 @ OAM
	.4byte gUnknown_0810CAE8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810E6E8 @ Sprite Data 1
	.4byte gUnknown_0810E70C @ OAM
	.4byte gUnknown_0810E714 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810E914 @ Sprite Data 1
	.4byte gUnknown_0810EA34 @ OAM
	.4byte gUnknown_0810EA3C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810F23C @ Sprite Data 1
	.4byte gUnknown_0810F35C @ OAM
	.4byte gUnknown_0810F364 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810F764 @ Sprite Data 1
	.4byte gUnknown_0810F788 @ OAM
	.4byte gUnknown_0810F790 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810F890 @ Sprite Data 1
	.4byte gUnknown_0810F968 @ OAM
	.4byte gUnknown_0810F970 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0810FC70 @ Sprite Data 1
	.4byte gUnknown_0810FD48 @ OAM
	.4byte gUnknown_0810FD50 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08110050 @ Sprite Data 1
	.4byte gUnknown_081100E0 @ OAM
	.4byte gUnknown_081100E8 @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081102E8 @ Sprite Data 1
	.4byte gUnknown_081104E0 @ OAM
	.4byte gUnknown_081104E8 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08110BE8 @ Sprite Data 1
	.4byte gUnknown_08110CE4 @ OAM
	.4byte gUnknown_08110CEC @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811106C @ Sprite Data 1
	.4byte gUnknown_0811121C @ OAM
	.4byte gUnknown_08111224 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08112A24 @ Sprite Data 1
	.4byte gUnknown_08112B44 @ OAM
	.4byte gUnknown_08112B4C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08112C4C @ Sprite Data 1
	.4byte gUnknown_08112D24 @ OAM
	.4byte gUnknown_08112D2C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811392C @ Sprite Data 1
	.4byte gUnknown_08113ADC @ OAM
	.4byte gUnknown_08113AE4 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081152E4 @ Sprite Data 1
	.4byte gUnknown_08115404 @ OAM
	.4byte gUnknown_0811540C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811640C @ Sprite Data 1
	.4byte gUnknown_0811649C @ OAM
	.4byte gUnknown_081164A4 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08116CA4 @ Sprite Data 1
	.4byte gUnknown_08116E54 @ OAM
	.4byte gUnknown_08116E5C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811865C @ Sprite Data 1
	.4byte gUnknown_08118680 @ OAM
	.4byte gUnknown_08118688 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08118708 @ Sprite Data 1
	.4byte gUnknown_08118948 @ OAM
	.4byte gUnknown_08118950 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08118D50 @ Sprite Data 1
	.4byte gUnknown_08118D74 @ OAM
	.4byte gUnknown_08118D7C @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08118DFC @ Sprite Data 1
	.4byte gUnknown_08118EB0 @ OAM
	.4byte gUnknown_08118EB8 @ Sprite Graphics

	.2byte 0x0016 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08119138 @ Sprite Data 1
	.4byte gUnknown_08119450 @ OAM
	.4byte gUnknown_08119458 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08119658 @ Sprite Data 1
	.4byte gUnknown_081196E8 @ OAM
	.4byte gUnknown_081196F0 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081198F0 @ Sprite Data 1
	.4byte gUnknown_08119938 @ OAM
	.4byte gUnknown_08119940 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08119A40 @ Sprite Data 1
	.4byte gUnknown_08119A88 @ OAM
	.4byte gUnknown_08119A90 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08119B90 @ Sprite Data 1
	.4byte gUnknown_08119CB0 @ OAM
	.4byte gUnknown_08119CB8 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811A038 @ Sprite Data 1
	.4byte gUnknown_0811A1E8 @ OAM
	.4byte gUnknown_0811A1F0 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811A570 @ Sprite Data 1
	.4byte gUnknown_0811A600 @ OAM
	.4byte gUnknown_0811A608 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811A688 @ Sprite Data 1
	.4byte gUnknown_0811A718 @ OAM
	.4byte gUnknown_0811A720 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811A7A0 @ Sprite Data 1
	.4byte gUnknown_0811A830 @ OAM
	.4byte gUnknown_0811A838 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811A8B8 @ Sprite Data 1
	.4byte gUnknown_0811AA20 @ OAM
	.4byte gUnknown_0811AA28 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811AD28 @ Sprite Data 1
	.4byte gUnknown_0811AE90 @ OAM
	.4byte gUnknown_0811AE98 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811B198 @ Sprite Data 1
	.4byte gUnknown_0811B3D8 @ OAM
	.4byte gUnknown_0811B3E0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811BBE0 @ Sprite Data 1
	.4byte gUnknown_0811BC04 @ OAM
	.4byte gUnknown_0811BC0C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811BC8C @ Sprite Data 1
	.4byte gUnknown_0811BCB0 @ OAM
	.4byte gUnknown_0811BCB8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811BD38 @ Sprite Data 1
	.4byte gUnknown_0811BD5C @ OAM
	.4byte gUnknown_0811BD64 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811BDE4 @ Sprite Data 1
	.4byte gUnknown_0811BE08 @ OAM
	.4byte gUnknown_0811BE10 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811C010 @ Sprite Data 1
	.4byte gUnknown_0811C1C0 @ OAM
	.4byte gUnknown_0811C1C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811F1C8 @ Sprite Data 1
	.4byte gUnknown_0811F1EC @ OAM
	.4byte gUnknown_0811F1F4 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0811F5F4 @ Sprite Data 1
	.4byte gUnknown_0811F7A4 @ OAM
	.4byte gUnknown_0811F7AC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081257AC @ Sprite Data 1
	.4byte gUnknown_081257D0 @ OAM
	.4byte gUnknown_081257D8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08125858 @ Sprite Data 1
	.4byte gUnknown_0812587C @ OAM
	.4byte gUnknown_08125884 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08125904 @ Sprite Data 1
	.4byte gUnknown_08125928 @ OAM
	.4byte gUnknown_08125930 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081259B0 @ Sprite Data 1
	.4byte gUnknown_08125A40 @ OAM
	.4byte gUnknown_08125A48 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08125C48 @ Sprite Data 1
	.4byte gUnknown_08125DF8 @ OAM
	.4byte gUnknown_08125E00 @ Sprite Graphics

	.2byte 0x0030 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08126400 @ Sprite Data 1
	.4byte gUnknown_08126AC0 @ OAM
	.4byte gUnknown_08126AC8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08128AC8 @ Sprite Data 1
	.4byte gUnknown_08128BE8 @ OAM
	.4byte gUnknown_08128BF0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08128FF0 @ Sprite Data 1
	.4byte gUnknown_08129110 @ OAM
	.4byte gUnknown_08129118 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08129518 @ Sprite Data 1
	.4byte gUnknown_0812953C @ OAM
	.4byte gUnknown_08129544 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081295C4 @ Sprite Data 1
	.4byte gUnknown_08129804 @ OAM
	.4byte gUnknown_0812980C @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812A80C @ Sprite Data 1
	.4byte gUnknown_0812A950 @ OAM
	.4byte gUnknown_0812A958 @ Sprite Graphics

	.2byte 0x0024 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812B558 @ Sprite Data 1
	.4byte gUnknown_0812BA68 @ OAM
	.4byte gUnknown_0812BA70 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CA70 @ Sprite Data 1
	.4byte gUnknown_0812CA94 @ OAM
	.4byte gUnknown_0812CA9C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CB1C @ Sprite Data 1
	.4byte gUnknown_0812CB40 @ OAM
	.4byte gUnknown_0812CB48 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CBC8 @ Sprite Data 1
	.4byte gUnknown_0812CBEC @ OAM
	.4byte gUnknown_0812CBF4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CC74 @ Sprite Data 1
	.4byte gUnknown_0812CC98 @ OAM
	.4byte gUnknown_0812CCA0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CCE0 @ Sprite Data 1
	.4byte gUnknown_0812CD04 @ OAM
	.4byte gUnknown_0812CD0C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CD2C @ Sprite Data 1
	.4byte gUnknown_0812CD50 @ OAM
	.4byte gUnknown_0812CD58 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812CDD8 @ Sprite Data 1
	.4byte gUnknown_0812CDFC @ OAM
	.4byte gUnknown_0812CE04 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D004 @ Sprite Data 1
	.4byte gUnknown_0812D028 @ OAM
	.4byte gUnknown_0812D030 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D130 @ Sprite Data 1
	.4byte gUnknown_0812D154 @ OAM
	.4byte gUnknown_0812D15C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D1DC @ Sprite Data 1
	.4byte gUnknown_0812D200 @ OAM
	.4byte gUnknown_0812D208 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D288 @ Sprite Data 1
	.4byte gUnknown_0812D2AC @ OAM
	.4byte gUnknown_0812D2B4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D334 @ Sprite Data 1
	.4byte gUnknown_0812D358 @ OAM
	.4byte gUnknown_0812D360 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D3E0 @ Sprite Data 1
	.4byte gUnknown_0812D404 @ OAM
	.4byte gUnknown_0812D40C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D48C @ Sprite Data 1
	.4byte gUnknown_0812D4B0 @ OAM
	.4byte gUnknown_0812D4B8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D538 @ Sprite Data 1
	.4byte gUnknown_0812D55C @ OAM
	.4byte gUnknown_0812D564 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D5E4 @ Sprite Data 1
	.4byte gUnknown_0812D608 @ OAM
	.4byte gUnknown_0812D610 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D690 @ Sprite Data 1
	.4byte gUnknown_0812D6B4 @ OAM
	.4byte gUnknown_0812D6BC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D73C @ Sprite Data 1
	.4byte gUnknown_0812D760 @ OAM
	.4byte gUnknown_0812D768 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D7E8 @ Sprite Data 1
	.4byte gUnknown_0812D80C @ OAM
	.4byte gUnknown_0812D814 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D894 @ Sprite Data 1
	.4byte gUnknown_0812D8B8 @ OAM
	.4byte gUnknown_0812D8C0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D940 @ Sprite Data 1
	.4byte gUnknown_0812D964 @ OAM
	.4byte gUnknown_0812D96C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812D9EC @ Sprite Data 1
	.4byte gUnknown_0812DA10 @ OAM
	.4byte gUnknown_0812DA18 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812DA98 @ Sprite Data 1
	.4byte gUnknown_0812DABC @ OAM
	.4byte gUnknown_0812DAC4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812DB44 @ Sprite Data 1
	.4byte gUnknown_0812DB68 @ OAM
	.4byte gUnknown_0812DB70 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812DBF0 @ Sprite Data 1
	.4byte gUnknown_0812DC14 @ OAM
	.4byte gUnknown_0812DC1C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812DC9C @ Sprite Data 1
	.4byte gUnknown_0812DCC0 @ OAM
	.4byte gUnknown_0812DCC8 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812DD48 @ Sprite Data 1
	.4byte gUnknown_0812DE20 @ OAM
	.4byte gUnknown_0812DE28 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812E128 @ Sprite Data 1
	.4byte gUnknown_0812E170 @ OAM
	.4byte gUnknown_0812E178 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812E378 @ Sprite Data 1
	.4byte gUnknown_0812E39C @ OAM
	.4byte gUnknown_0812E3A4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812E5A4 @ Sprite Data 1
	.4byte gUnknown_0812E5C8 @ OAM
	.4byte gUnknown_0812E5D0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812E7D0 @ Sprite Data 1
	.4byte gUnknown_0812EA10 @ OAM
	.4byte gUnknown_0812EA18 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812FA18 @ Sprite Data 1
	.4byte gUnknown_0812FA84 @ OAM
	.4byte gUnknown_0812FA8C @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812FB8C @ Sprite Data 1
	.4byte gUnknown_0812FBF8 @ OAM
	.4byte gUnknown_0812FC00 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812FD00 @ Sprite Data 1
	.4byte gUnknown_0812FD6C @ OAM
	.4byte gUnknown_0812FD74 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0812FE74 @ Sprite Data 1
	.4byte gUnknown_0812FEBC @ OAM
	.4byte gUnknown_0812FEC4 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08130EC4 @ Sprite Data 1
	.4byte gUnknown_08130FC0 @ OAM
	.4byte gUnknown_08130FC8 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081311C8 @ Sprite Data 1
	.4byte gUnknown_081312A0 @ OAM
	.4byte gUnknown_081312A8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08131EA8 @ Sprite Data 1
	.4byte gUnknown_08131F38 @ OAM
	.4byte gUnknown_08131F40 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08132740 @ Sprite Data 1
	.4byte gUnknown_08132860 @ OAM
	.4byte gUnknown_08132868 @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08133868 @ Sprite Data 1
	.4byte gUnknown_08133A60 @ OAM
	.4byte gUnknown_08133A68 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08135668 @ Sprite Data 1
	.4byte gUnknown_08135788 @ OAM
	.4byte gUnknown_08135790 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08135B90 @ Sprite Data 1
	.4byte gUnknown_08135C20 @ OAM
	.4byte gUnknown_08135C28 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08135E28 @ Sprite Data 1
	.4byte gUnknown_08135F48 @ OAM
	.4byte gUnknown_08135F50 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08136350 @ Sprite Data 1
	.4byte gUnknown_08136500 @ OAM
	.4byte gUnknown_08136508 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08136B08 @ Sprite Data 1
	.4byte gUnknown_08136C28 @ OAM
	.4byte gUnknown_08136C30 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08137030 @ Sprite Data 1
	.4byte gUnknown_08137150 @ OAM
	.4byte gUnknown_08137158 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08137558 @ Sprite Data 1
	.4byte gUnknown_081375E8 @ OAM
	.4byte gUnknown_081375F0 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081377F0 @ Sprite Data 1
	.4byte gUnknown_081379A0 @ OAM
	.4byte gUnknown_081379A8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08137FA8 @ Sprite Data 1
	.4byte gUnknown_081381E8 @ OAM
	.4byte gUnknown_081381F0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081389F0 @ Sprite Data 1
	.4byte gUnknown_08138B10 @ OAM
	.4byte gUnknown_08138B18 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08138F18 @ Sprite Data 1
	.4byte gUnknown_08139038 @ OAM
	.4byte gUnknown_08139040 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08139440 @ Sprite Data 1
	.4byte gUnknown_081394D0 @ OAM
	.4byte gUnknown_081394D8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081396D8 @ Sprite Data 1
	.4byte gUnknown_08139918 @ OAM
	.4byte gUnknown_08139920 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0813A120 @ Sprite Data 1
	.4byte gUnknown_0813A168 @ OAM
	.4byte gUnknown_0813A170 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0813B170 @ Sprite Data 1
	.4byte gUnknown_0813B3B0 @ OAM
	.4byte gUnknown_0813B3B8 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0813EBB8 @ Sprite Data 1
	.4byte gUnknown_0813EC00 @ OAM
	.4byte gUnknown_0813EC08 @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0813FC08 @ Sprite Data 1
	.4byte gUnknown_0813FE6C @ OAM
	.4byte gUnknown_0813FE74 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08145E74 @ Sprite Data 1
	.4byte gUnknown_08145F28 @ OAM
	.4byte gUnknown_08145F30 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081460B0 @ Sprite Data 1
	.4byte gUnknown_081461D0 @ OAM
	.4byte gUnknown_081461D8 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0814E1D8 @ Sprite Data 1
	.4byte gUnknown_0814E340 @ OAM
	.4byte gUnknown_0814E348 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08150B48 @ Sprite Data 1
	.4byte gUnknown_08150BD8 @ OAM
	.4byte gUnknown_08150BE0 @ Sprite Graphics

	.2byte 0x0028 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08152BE0 @ Sprite Data 1
	.4byte gfxDKHurtOAM @ OAM
	.4byte gfxDKHurt8bpp @ Sprite Graphics

	.2byte 0x0021 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08159188 @ Sprite Data 1
	.4byte gUnknown_0815962C @ OAM
	.4byte gUnknown_08159634 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0815FE34 @ Sprite Data 1
	.4byte gUnknown_0815FFE4 @ OAM
	.4byte gUnknown_0815FFEC @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08162FEC @ Sprite Data 1
	.4byte gUnknown_08163130 @ OAM
	.4byte gUnknown_08163138 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08167938 @ Sprite Data 1
	.4byte gUnknown_0816795C @ OAM
	.4byte gUnknown_08167964 @ Sprite Graphics

	.2byte 0x001C @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08168164 @ Sprite Data 1
	.4byte gUnknown_08168554 @ OAM
	.4byte gUnknown_0816855C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0817555C @ Sprite Data 1
	.4byte gUnknown_0817570C @ OAM
	.4byte gUnknown_08175714 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08181714 @ Sprite Data 1
	.4byte gUnknown_081817EC @ OAM
	.4byte gUnknown_081817F4 @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081877F4 @ Sprite Data 1
	.4byte gUnknown_08187AC4 @ OAM
	.4byte gUnknown_08187ACC @ Sprite Graphics

	.2byte 0x0015 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0818AACC @ Sprite Data 1
	.4byte gUnknown_0818ADC0 @ OAM
	.4byte gUnknown_0818ADC8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0819EDC8 @ Sprite Data 1
	.4byte gUnknown_0819EE58 @ OAM
	.4byte gUnknown_0819EE60 @ Sprite Graphics

	.2byte 0x0016 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081A1E60 @ Sprite Data 1
	.4byte gUnknown_081A2178 @ OAM
	.4byte gUnknown_081A2180 @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081B6180 @ Sprite Data 1
	.4byte gUnknown_081B6378 @ OAM
	.4byte gUnknown_081B6380 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081B8F80 @ Sprite Data 1
	.4byte gUnknown_081B90A0 @ OAM
	.4byte gUnknown_081B90A8 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081BD0A8 @ Sprite Data 1
	.4byte gUnknown_081BD1EC @ OAM
	.4byte gUnknown_081BD1F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C19F4 @ Sprite Data 1
	.4byte gUnknown_081C1A18 @ OAM
	.4byte gUnknown_081C1A20 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C1C20 @ Sprite Data 1
	.4byte gUnknown_081C1C68 @ OAM
	.4byte gUnknown_081C1C70 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C2070 @ Sprite Data 1
	.4byte gUnknown_081C2094 @ OAM
	.4byte gUnknown_081C209C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C211C @ Sprite Data 1
	.4byte gUnknown_081C2164 @ OAM
	.4byte gUnknown_081C216C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C226C @ Sprite Data 1
	.4byte gUnknown_081C22B4 @ OAM
	.4byte gUnknown_081C22BC @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C32BC @ Sprite Data 1
	.4byte gUnknown_081C3304 @ OAM
	.4byte gUnknown_081C330C @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C430C @ Sprite Data 1
	.4byte gUnknown_081C4378 @ OAM
	.4byte gUnknown_081C4380 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081C7380 @ Sprite Data 1
	.4byte gUnknown_081C7410 @ OAM
	.4byte gUnknown_081C7418 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081CB418 @ Sprite Data 1
	.4byte gUnknown_081CB538 @ OAM
	.4byte gUnknown_081CB540 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081CD540 @ Sprite Data 1
	.4byte gUnknown_081CD564 @ OAM
	.4byte gUnknown_081CD56C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081CD96C @ Sprite Data 1
	.4byte gUnknown_081CDA8C @ OAM
	.4byte gUnknown_081CDA94 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081CFA94 @ Sprite Data 1
	.4byte gUnknown_081CFAB8 @ OAM
	.4byte gUnknown_081CFAC0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081CFEC0 @ Sprite Data 1
	.4byte gUnknown_081CFFE0 @ OAM
	.4byte gUnknown_081CFFE8 @ Sprite Graphics

	.2byte 0x000F @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D1FE8 @ Sprite Data 1
	.4byte gUnknown_081D2204 @ OAM
	.4byte gUnknown_081D220C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D360C @ Sprite Data 1
	.4byte gUnknown_081D384C @ OAM
	.4byte gUnknown_081D3854 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D4854 @ Sprite Data 1
	.4byte gUnknown_081D4A94 @ OAM
	.4byte gUnknown_081D4A9C @ Sprite Graphics

	.2byte 0x000F @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D5A9C @ Sprite Data 1
	.4byte gUnknown_081D5CB8 @ OAM
	.4byte gUnknown_081D5CC0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D70C0 @ Sprite Data 1
	.4byte gUnknown_081D71E0 @ OAM
	.4byte gUnknown_081D71E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D91E8 @ Sprite Data 1
	.4byte gUnknown_081D920C @ OAM
	.4byte gUnknown_081D9214 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081D9614 @ Sprite Data 1
	.4byte gUnknown_081D96EC @ OAM
	.4byte gUnknown_081D96F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081DF6F4 @ Sprite Data 1
	.4byte gUnknown_081DF718 @ OAM
	.4byte gUnknown_081DF720 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081DFF20 @ Sprite Data 1
	.4byte gUnknown_081DFF68 @ OAM
	.4byte gUnknown_081DFF70 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081E0070 @ Sprite Data 1
	.4byte gUnknown_081E0094 @ OAM
	.4byte gUnknown_081E009C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081E019C @ Sprite Data 1
	.4byte gUnknown_081E0274 @ OAM
	.4byte gUnknown_081E027C @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081E327C @ Sprite Data 1
	.4byte gUnknown_081E3378 @ OAM
	.4byte gUnknown_081E3380 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081E6B80 @ Sprite Data 1
	.4byte gUnknown_081E6DC0 @ OAM
	.4byte gUnknown_081E6DC8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081EADC8 @ Sprite Data 1
	.4byte gUnknown_081EAEE8 @ OAM
	.4byte gUnknown_081EAEF0 @ Sprite Graphics

	.2byte 0x0015 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_081F2EF0 @ Sprite Data 1
	.4byte gUnknown_081F31E4 @ OAM
	.4byte gUnknown_081F31EC @ Sprite Graphics

	.2byte 0x0015 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082031EC @ Sprite Data 1
	.4byte gUnknown_082034E0 @ OAM
	.4byte gUnknown_082034E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082084E8 @ Sprite Data 1
	.4byte gUnknown_0820850C @ OAM
	.4byte gUnknown_08208514 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08208914 @ Sprite Data 1
	.4byte gUnknown_08208A34 @ OAM
	.4byte gUnknown_08208A3C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08210A3C @ Sprite Data 1
	.4byte gUnknown_08210ACC @ OAM
	.4byte gUnknown_08210AD4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08213AD4 @ Sprite Data 1
	.4byte gUnknown_08213D14 @ OAM
	.4byte gUnknown_08213D1C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08223D1C @ Sprite Data 1
	.4byte gUnknown_08223D40 @ OAM
	.4byte gUnknown_08223D48 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08223D68 @ Sprite Data 1
	.4byte gUnknown_08223D8C @ OAM
	.4byte gUnknown_08223D94 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08223E14 @ Sprite Data 1
	.4byte gUnknown_08223E38 @ OAM
	.4byte gUnknown_08223E40 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08223EC0 @ Sprite Data 1
	.4byte gUnknown_08223EE4 @ OAM
	.4byte gUnknown_08223EEC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08223F6C @ Sprite Data 1
	.4byte gUnknown_08223F90 @ OAM
	.4byte gUnknown_08223F98 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08224018 @ Sprite Data 1
	.4byte gUnknown_0822403C @ OAM
	.4byte gUnknown_08224044 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08224064 @ Sprite Data 1
	.4byte gUnknown_08224088 @ OAM
	.4byte gUnknown_08224090 @ Sprite Graphics

	.2byte 0x0019 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08224190 @ Sprite Data 1
	.4byte gUnknown_08224514 @ OAM
	.4byte gUnknown_0822451C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08227D1C @ Sprite Data 1
	.4byte gUnknown_08227D40 @ OAM
	.4byte gUnknown_08227D48 @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08228D48 @ Sprite Data 1
	.4byte gUnknown_08228ED4 @ OAM
	.4byte gUnknown_08228EDC @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08230EDC @ Sprite Data 1
	.4byte gUnknown_082310D4 @ OAM
	.4byte gUnknown_082310DC @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082380DC @ Sprite Data 1
	.4byte gUnknown_082382D4 @ OAM
	.4byte gUnknown_082382DC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0823F2DC @ Sprite Data 1
	.4byte gUnknown_0823F3FC @ OAM
	.4byte gUnknown_0823F404 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08243404 @ Sprite Data 1
	.4byte gUnknown_0824356C @ OAM
	.4byte gUnknown_08243574 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0824D574 @ Sprite Data 1
	.4byte gUnknown_0824D6B8 @ OAM
	.4byte gUnknown_0824D6C0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08251EC0 @ Sprite Data 1
	.4byte gUnknown_08251FE0 @ OAM
	.4byte gUnknown_08251FE8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08259FE8 @ Sprite Data 1
	.4byte gUnknown_0825A00C @ OAM
	.4byte gUnknown_0825A014 @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0825A814 @ Sprite Data 1
	.4byte gUnknown_0825AA78 @ OAM
	.4byte gUnknown_0825AA80 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0826BA80 @ Sprite Data 1
	.4byte gUnknown_0826BAA4 @ OAM
	.4byte gUnknown_0826BAAC @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0826C2AC @ Sprite Data 1
	.4byte gUnknown_0826C33C @ OAM
	.4byte gUnknown_0826C344 @ Sprite Graphics

	.2byte 0x0013 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08270344 @ Sprite Data 1
	.4byte gUnknown_082705F0 @ OAM
	.4byte gUnknown_082705F8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08275DF8 @ Sprite Data 1
	.4byte gUnknown_08275E88 @ OAM
	.4byte gUnknown_08275E90 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08277E90 @ Sprite Data 1
	.4byte gUnknown_08277F44 @ OAM
	.4byte gUnknown_08277F4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0827CF4C @ Sprite Data 1
	.4byte gUnknown_0827CF70 @ OAM
	.4byte gUnknown_0827CF78 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0827D778 @ Sprite Data 1
	.4byte gUnknown_0827D898 @ OAM
	.4byte gUnknown_0827D8A0 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0827E8A0 @ Sprite Data 1
	.4byte gUnknown_0827E9E4 @ OAM
	.4byte gUnknown_0827E9EC @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0827FBEC @ Sprite Data 1
	.4byte gUnknown_0827FDE4 @ OAM
	.4byte gUnknown_0827FDEC @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08280BEC @ Sprite Data 1
	.4byte gUnknown_08280DE4 @ OAM
	.4byte gUnknown_08280DEC @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08281BEC @ Sprite Data 1
	.4byte gUnknown_08281D54 @ OAM
	.4byte gUnknown_08281D5C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828315C @ Sprite Data 1
	.4byte gUnknown_0828339C @ OAM
	.4byte gUnknown_082833A4 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082853A4 @ Sprite Data 1
	.4byte gUnknown_08285554 @ OAM
	.4byte gUnknown_0828555C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828855C @ Sprite Data 1
	.4byte gUnknown_08288634 @ OAM
	.4byte gUnknown_0828863C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828B63C @ Sprite Data 1
	.4byte gUnknown_0828B75C @ OAM
	.4byte gUnknown_0828B764 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828C764 @ Sprite Data 1
	.4byte gUnknown_0828C83C @ OAM
	.4byte gUnknown_0828C844 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828CE44 @ Sprite Data 1
	.4byte gUnknown_0828D084 @ OAM
	.4byte gUnknown_0828D08C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828D28C @ Sprite Data 1
	.4byte gUnknown_0828D31C @ OAM
	.4byte gUnknown_0828D324 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828DB24 @ Sprite Data 1
	.4byte gUnknown_0828DD64 @ OAM
	.4byte gUnknown_0828DD6C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828E46C @ Sprite Data 1
	.4byte gUnknown_0828E6AC @ OAM
	.4byte gUnknown_0828E6B4 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828EDB4 @ Sprite Data 1
	.4byte gUnknown_0828F114 @ OAM
	.4byte gUnknown_0828F11C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828FD1C @ Sprite Data 1
	.4byte gUnknown_0828FF5C @ OAM
	.4byte gUnknown_0828FF64 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0828FFE4 @ Sprite Data 1
	.4byte gUnknown_08290224 @ OAM
	.4byte gUnknown_0829022C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082902AC @ Sprite Data 1
	.4byte gUnknown_082904EC @ OAM
	.4byte gUnknown_082904F4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08290574 @ Sprite Data 1
	.4byte gUnknown_082907B4 @ OAM
	.4byte gUnknown_082907BC @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829083C @ Sprite Data 1
	.4byte gUnknown_08290B9C @ OAM
	.4byte gUnknown_08290BA4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082923A4 @ Sprite Data 1
	.4byte gUnknown_082925E4 @ OAM
	.4byte gUnknown_082925EC @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082935EC @ Sprite Data 1
	.4byte gUnknown_0829382C @ OAM
	.4byte gUnknown_08293834 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08293C34 @ Sprite Data 1
	.4byte gUnknown_08293F94 @ OAM
	.4byte gUnknown_08293F9C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829429C @ Sprite Data 1
	.4byte gUnknown_082944DC @ OAM
	.4byte gUnknown_082944E4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082954E4 @ Sprite Data 1
	.4byte gUnknown_08295508 @ OAM
	.4byte gUnknown_08295510 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295530 @ Sprite Data 1
	.4byte gUnknown_08295554 @ OAM
	.4byte gUnknown_0829555C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829557C @ Sprite Data 1
	.4byte gUnknown_082955A0 @ OAM
	.4byte gUnknown_082955A8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082955C8 @ Sprite Data 1
	.4byte gUnknown_082955EC @ OAM
	.4byte gUnknown_082955F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295614 @ Sprite Data 1
	.4byte gUnknown_08295638 @ OAM
	.4byte gUnknown_08295640 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295660 @ Sprite Data 1
	.4byte gUnknown_08295684 @ OAM
	.4byte gUnknown_0829568C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829578C @ Sprite Data 1
	.4byte gUnknown_082957B0 @ OAM
	.4byte gUnknown_082957B8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08295FB8 @ Sprite Data 1
	.4byte gUnknown_08295FDC @ OAM
	.4byte gUnknown_08295FE4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082967E4 @ Sprite Data 1
	.4byte gUnknown_08296808 @ OAM
	.4byte gUnknown_08296810 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297010 @ Sprite Data 1
	.4byte gUnknown_08297034 @ OAM
	.4byte gUnknown_0829703C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829713C @ Sprite Data 1
	.4byte gUnknown_08297160 @ OAM
	.4byte gUnknown_08297168 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297268 @ Sprite Data 1
	.4byte gUnknown_0829728C @ OAM
	.4byte gUnknown_08297294 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297394 @ Sprite Data 1
	.4byte gUnknown_082973B8 @ OAM
	.4byte gUnknown_082973C0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082974C0 @ Sprite Data 1
	.4byte gUnknown_082974E4 @ OAM
	.4byte gUnknown_082974EC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082975EC @ Sprite Data 1
	.4byte gUnknown_08297610 @ OAM
	.4byte gUnknown_08297618 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297718 @ Sprite Data 1
	.4byte gUnknown_0829773C @ OAM
	.4byte gUnknown_08297744 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297844 @ Sprite Data 1
	.4byte gUnknown_08297868 @ OAM
	.4byte gUnknown_08297870 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297970 @ Sprite Data 1
	.4byte gUnknown_08297994 @ OAM
	.4byte gUnknown_0829799C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297A9C @ Sprite Data 1
	.4byte gUnknown_08297AC0 @ OAM
	.4byte gUnknown_08297AC8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297BC8 @ Sprite Data 1
	.4byte gUnknown_08297BEC @ OAM
	.4byte gUnknown_08297BF4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297CF4 @ Sprite Data 1
	.4byte gUnknown_08297D18 @ OAM
	.4byte gUnknown_08297D20 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297E20 @ Sprite Data 1
	.4byte gUnknown_08297E44 @ OAM
	.4byte gUnknown_08297E4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08297F4C @ Sprite Data 1
	.4byte gUnknown_08297F70 @ OAM
	.4byte gUnknown_08297F78 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298078 @ Sprite Data 1
	.4byte gUnknown_0829809C @ OAM
	.4byte gUnknown_082980A4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082981A4 @ Sprite Data 1
	.4byte gUnknown_082981C8 @ OAM
	.4byte gUnknown_082981D0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082982D0 @ Sprite Data 1
	.4byte gUnknown_082982F4 @ OAM
	.4byte gUnknown_082982FC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082983FC @ Sprite Data 1
	.4byte gUnknown_08298420 @ OAM
	.4byte gUnknown_08298428 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298528 @ Sprite Data 1
	.4byte gUnknown_0829854C @ OAM
	.4byte gUnknown_08298554 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298654 @ Sprite Data 1
	.4byte gUnknown_08298678 @ OAM
	.4byte gUnknown_08298680 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298780 @ Sprite Data 1
	.4byte gUnknown_082987A4 @ OAM
	.4byte gUnknown_082987AC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082988AC @ Sprite Data 1
	.4byte gUnknown_082988D0 @ OAM
	.4byte gUnknown_082988D8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082989D8 @ Sprite Data 1
	.4byte gUnknown_082989FC @ OAM
	.4byte gUnknown_08298A04 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298B04 @ Sprite Data 1
	.4byte gUnknown_08298B28 @ OAM
	.4byte gUnknown_08298B30 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298C30 @ Sprite Data 1
	.4byte gUnknown_08298C54 @ OAM
	.4byte gUnknown_08298C5C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298D5C @ Sprite Data 1
	.4byte gUnknown_08298D80 @ OAM
	.4byte gUnknown_08298D88 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298E88 @ Sprite Data 1
	.4byte gUnknown_08298EAC @ OAM
	.4byte gUnknown_08298EB4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08298FB4 @ Sprite Data 1
	.4byte gUnknown_08298FD8 @ OAM
	.4byte gUnknown_08298FE0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082990E0 @ Sprite Data 1
	.4byte gUnknown_08299104 @ OAM
	.4byte gUnknown_0829910C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829920C @ Sprite Data 1
	.4byte gUnknown_08299230 @ OAM
	.4byte gUnknown_08299238 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299338 @ Sprite Data 1
	.4byte gUnknown_0829935C @ OAM
	.4byte gUnknown_08299364 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299464 @ Sprite Data 1
	.4byte gUnknown_08299488 @ OAM
	.4byte gUnknown_08299490 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299590 @ Sprite Data 1
	.4byte gUnknown_082995B4 @ OAM
	.4byte gUnknown_082995BC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082996BC @ Sprite Data 1
	.4byte gUnknown_082996E0 @ OAM
	.4byte gUnknown_082996E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082997E8 @ Sprite Data 1
	.4byte gUnknown_0829980C @ OAM
	.4byte gUnknown_08299814 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299914 @ Sprite Data 1
	.4byte gUnknown_08299938 @ OAM
	.4byte gUnknown_08299940 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08299A40 @ Sprite Data 1
	.4byte gUnknown_08299BF0 @ OAM
	.4byte gUnknown_08299BF8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829A7F8 @ Sprite Data 1
	.4byte gUnknown_0829A81C @ OAM
	.4byte gUnknown_0829A824 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829B824 @ Sprite Data 1
	.4byte gUnknown_0829BA64 @ OAM
	.4byte gUnknown_0829BA6C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829C26C @ Sprite Data 1
	.4byte gUnknown_0829C4AC @ OAM
	.4byte gUnknown_0829C4B4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829CCB4 @ Sprite Data 1
	.4byte gUnknown_0829CEF4 @ OAM
	.4byte gUnknown_0829CEFC @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829CF7C @ Sprite Data 1
	.4byte gUnknown_0829D1BC @ OAM
	.4byte gUnknown_0829D1C4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829D9C4 @ Sprite Data 1
	.4byte gUnknown_0829D9E8 @ OAM
	.4byte gUnknown_0829D9F0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829DA70 @ Sprite Data 1
	.4byte gUnknown_0829DCB0 @ OAM
	.4byte gUnknown_0829DCB8 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829ECB8 @ Sprite Data 1
	.4byte gUnknown_0829EDB4 @ OAM
	.4byte gUnknown_0829EDBC @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0829F4BC @ Sprite Data 1
	.4byte gUnknown_0829F66C @ OAM
	.4byte gUnknown_0829F674 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A0E74 @ Sprite Data 1
	.4byte gUnknown_082A0F94 @ OAM
	.4byte gUnknown_082A0F9C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A139C @ Sprite Data 1
	.4byte gUnknown_082A1474 @ OAM
	.4byte gUnknown_082A147C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A207C @ Sprite Data 1
	.4byte gUnknown_082A22BC @ OAM
	.4byte gUnknown_082A22C4 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A42C4 @ Sprite Data 1
	.4byte gUnknown_082A4354 @ OAM
	.4byte gUnknown_082A435C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A4B5C @ Sprite Data 1
	.4byte gUnknown_082A4C7C @ OAM
	.4byte gUnknown_082A4C84 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A5C84 @ Sprite Data 1
	.4byte gUnknown_082A5D5C @ OAM
	.4byte gUnknown_082A5D64 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A6064 @ Sprite Data 1
	.4byte gUnknown_082A6184 @ OAM
	.4byte gUnknown_082A618C @ Sprite Graphics

	.2byte 0x0019 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A658C @ Sprite Data 1
	.4byte gUnknown_082A6910 @ OAM
	.4byte gUnknown_082A6918 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A6C18 @ Sprite Data 1
	.4byte gUnknown_082A6CF0 @ OAM
	.4byte gUnknown_082A6CF8 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A6FF8 @ Sprite Data 1
	.4byte gUnknown_082A70AC @ OAM
	.4byte gUnknown_082A70B4 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A7334 @ Sprite Data 1
	.4byte gUnknown_082A7454 @ OAM
	.4byte gUnknown_082A745C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A785C @ Sprite Data 1
	.4byte gUnknown_082A7934 @ OAM
	.4byte gUnknown_082A793C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A7C3C @ Sprite Data 1
	.4byte gUnknown_082A7DEC @ OAM
	.4byte gUnknown_082A7DF4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082A95F4 @ Sprite Data 1
	.4byte gUnknown_082A9834 @ OAM
	.4byte gUnknown_082A983C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082AB83C @ Sprite Data 1
	.4byte gUnknown_082AB8CC @ OAM
	.4byte gUnknown_082AB8D4 @ Sprite Graphics

	.2byte 0x000D @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082AC0D4 @ Sprite Data 1
	.4byte gUnknown_082AC2A8 @ OAM
	.4byte gUnknown_082AC2B0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ADAB0 @ Sprite Data 1
	.4byte gUnknown_082ADAD4 @ OAM
	.4byte gUnknown_082ADADC @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ADBDC @ Sprite Data 1
	.4byte gUnknown_082ADE1C @ OAM
	.4byte gUnknown_082ADE24 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082AEE24 @ Sprite Data 1
	.4byte gUnknown_082AEE48 @ OAM
	.4byte gUnknown_082AEE50 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082AEF50 @ Sprite Data 1
	.4byte gUnknown_082AEF74 @ OAM
	.4byte gUnknown_082AEF7C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082AF77C @ Sprite Data 1
	.4byte gUnknown_082AF7A0 @ OAM
	.4byte gUnknown_082AF7A8 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082AFFA8 @ Sprite Data 1
	.4byte gUnknown_082B0080 @ OAM
	.4byte gUnknown_082B0088 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B3088 @ Sprite Data 1
	.4byte gUnknown_082B30AC @ OAM
	.4byte gUnknown_082B30B4 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B34B4 @ Sprite Data 1
	.4byte gUnknown_082B3544 @ OAM
	.4byte gUnknown_082B354C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B454C @ Sprite Data 1
	.4byte gUnknown_082B45DC @ OAM
	.4byte gUnknown_082B45E4 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B55E4 @ Sprite Data 1
	.4byte gUnknown_082B5674 @ OAM
	.4byte gUnknown_082B567C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B667C @ Sprite Data 1
	.4byte gUnknown_082B670C @ OAM
	.4byte gUnknown_082B6714 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B7714 @ Sprite Data 1
	.4byte gUnknown_082B787C @ OAM
	.4byte gUnknown_082B7884 @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082B8C84 @ Sprite Data 1
	.4byte gUnknown_082B8F54 @ OAM
	.4byte gUnknown_082B8F5C @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C2F5C @ Sprite Data 1
	.4byte gUnknown_082C32BC @ OAM
	.4byte gUnknown_082C32C4 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C36C4 @ Sprite Data 1
	.4byte gUnknown_082C37C0 @ OAM
	.4byte gUnknown_082C37C8 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C45C8 @ Sprite Data 1
	.4byte gUnknown_082C470C @ OAM
	.4byte gUnknown_082C4714 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C6B14 @ Sprite Data 1
	.4byte gUnknown_082C6B38 @ OAM
	.4byte gUnknown_082C6B40 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C6C40 @ Sprite Data 1
	.4byte gUnknown_082C6C64 @ OAM
	.4byte gUnknown_082C6C6C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C6D6C @ Sprite Data 1
	.4byte gUnknown_082C6D90 @ OAM
	.4byte gUnknown_082C6D98 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C6E98 @ Sprite Data 1
	.4byte gUnknown_082C6EBC @ OAM
	.4byte gUnknown_082C6EC4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C72C4 @ Sprite Data 1
	.4byte gUnknown_082C72E8 @ OAM
	.4byte gUnknown_082C72F0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C7330 @ Sprite Data 1
	.4byte gUnknown_082C7354 @ OAM
	.4byte gUnknown_082C735C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C775C @ Sprite Data 1
	.4byte gUnknown_082C7780 @ OAM
	.4byte gUnknown_082C7788 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C7B88 @ Sprite Data 1
	.4byte gUnknown_082C7BAC @ OAM
	.4byte gUnknown_082C7BB4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C7FB4 @ Sprite Data 1
	.4byte gUnknown_082C7FD8 @ OAM
	.4byte gUnknown_082C7FE0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C80E0 @ Sprite Data 1
	.4byte gUnknown_082C8104 @ OAM
	.4byte gUnknown_082C810C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C820C @ Sprite Data 1
	.4byte gUnknown_082C8230 @ OAM
	.4byte gUnknown_082C8238 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C82B8 @ Sprite Data 1
	.4byte gUnknown_082C82DC @ OAM
	.4byte gUnknown_082C82E4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C84E4 @ Sprite Data 1
	.4byte gUnknown_082C8508 @ OAM
	.4byte gUnknown_082C8510 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C8710 @ Sprite Data 1
	.4byte gUnknown_082C8734 @ OAM
	.4byte gUnknown_082C873C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082C973C @ Sprite Data 1
	.4byte gUnknown_082C9760 @ OAM
	.4byte gUnknown_082C9768 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CA768 @ Sprite Data 1
	.4byte gUnknown_082CA78C @ OAM
	.4byte gUnknown_082CA794 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CA994 @ Sprite Data 1
	.4byte gUnknown_082CA9B8 @ OAM
	.4byte gUnknown_082CA9C0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CABC0 @ Sprite Data 1
	.4byte gUnknown_082CABE4 @ OAM
	.4byte gUnknown_082CABEC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CACEC @ Sprite Data 1
	.4byte gUnknown_082CAD10 @ OAM
	.4byte gUnknown_082CAD18 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CB118 @ Sprite Data 1
	.4byte gUnknown_082CB13C @ OAM
	.4byte gUnknown_082CB144 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CB544 @ Sprite Data 1
	.4byte gUnknown_082CB568 @ OAM
	.4byte gUnknown_082CB570 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CB5B0 @ Sprite Data 1
	.4byte gUnknown_082CB5D4 @ OAM
	.4byte gUnknown_082CB5DC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CB6DC @ Sprite Data 1
	.4byte gUnknown_082CB700 @ OAM
	.4byte gUnknown_082CB708 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CB808 @ Sprite Data 1
	.4byte gUnknown_082CB82C @ OAM
	.4byte gUnknown_082CB834 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CB934 @ Sprite Data 1
	.4byte gUnknown_082CB958 @ OAM
	.4byte gUnknown_082CB960 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CBB60 @ Sprite Data 1
	.4byte gUnknown_082CBB84 @ OAM
	.4byte gUnknown_082CBB8C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CBD8C @ Sprite Data 1
	.4byte gUnknown_082CBDB0 @ OAM
	.4byte gUnknown_082CBDB8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CBFB8 @ Sprite Data 1
	.4byte gUnknown_082CBFDC @ OAM
	.4byte gUnknown_082CBFE4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CC064 @ Sprite Data 1
	.4byte gUnknown_082CC088 @ OAM
	.4byte gUnknown_082CC090 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CC490 @ Sprite Data 1
	.4byte gUnknown_082CC4B4 @ OAM
	.4byte gUnknown_082CC4BC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CC8BC @ Sprite Data 1
	.4byte gUnknown_082CC8E0 @ OAM
	.4byte gUnknown_082CC8E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CD8E8 @ Sprite Data 1
	.4byte gUnknown_082CD90C @ OAM
	.4byte gUnknown_082CD914 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CDA14 @ Sprite Data 1
	.4byte gUnknown_082CDA38 @ OAM
	.4byte gUnknown_082CDA40 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CDB40 @ Sprite Data 1
	.4byte gUnknown_082CDB64 @ OAM
	.4byte gUnknown_082CDB6C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CDC6C @ Sprite Data 1
	.4byte gUnknown_082CDC90 @ OAM
	.4byte gUnknown_082CDC98 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CDD98 @ Sprite Data 1
	.4byte gUnknown_082CDDBC @ OAM
	.4byte gUnknown_082CDDC4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CDEC4 @ Sprite Data 1
	.4byte gUnknown_082CDEE8 @ OAM
	.4byte gUnknown_082CDEF0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CE2F0 @ Sprite Data 1
	.4byte gUnknown_082CE314 @ OAM
	.4byte gUnknown_082CE31C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CE71C @ Sprite Data 1
	.4byte gUnknown_082CE740 @ OAM
	.4byte gUnknown_082CE748 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CE7C8 @ Sprite Data 1
	.4byte gUnknown_082CE7EC @ OAM
	.4byte gUnknown_082CE7F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CE8F4 @ Sprite Data 1
	.4byte gUnknown_082CE918 @ OAM
	.4byte gUnknown_082CE920 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CE9A0 @ Sprite Data 1
	.4byte gUnknown_082CE9C4 @ OAM
	.4byte gUnknown_082CE9CC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CEDCC @ Sprite Data 1
	.4byte gUnknown_082CEDF0 @ OAM
	.4byte gUnknown_082CEDF8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CF1F8 @ Sprite Data 1
	.4byte gUnknown_082CF21C @ OAM
	.4byte gUnknown_082CF224 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082CFA24 @ Sprite Data 1
	.4byte gUnknown_082CFA48 @ OAM
	.4byte gUnknown_082CFA50 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D0A50 @ Sprite Data 1
	.4byte gUnknown_082D0A74 @ OAM
	.4byte gUnknown_082D0A7C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D0B7C @ Sprite Data 1
	.4byte gUnknown_082D0BA0 @ OAM
	.4byte gUnknown_082D0BA8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D0CA8 @ Sprite Data 1
	.4byte gUnknown_082D0CCC @ OAM
	.4byte gUnknown_082D0CD4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D0DD4 @ Sprite Data 1
	.4byte gUnknown_082D0DF8 @ OAM
	.4byte gUnknown_082D0E00 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D1200 @ Sprite Data 1
	.4byte gUnknown_082D1224 @ OAM
	.4byte gUnknown_082D122C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D132C @ Sprite Data 1
	.4byte gUnknown_082D1350 @ OAM
	.4byte gUnknown_082D1358 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D13D8 @ Sprite Data 1
	.4byte gUnknown_082D13FC @ OAM
	.4byte gUnknown_082D1404 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D2404 @ Sprite Data 1
	.4byte gUnknown_082D2428 @ OAM
	.4byte gUnknown_082D2430 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D3430 @ Sprite Data 1
	.4byte gUnknown_082D3454 @ OAM
	.4byte gUnknown_082D345C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D355C @ Sprite Data 1
	.4byte gUnknown_082D3580 @ OAM
	.4byte gUnknown_082D3588 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D3688 @ Sprite Data 1
	.4byte gUnknown_082D36AC @ OAM
	.4byte gUnknown_082D36B4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D37B4 @ Sprite Data 1
	.4byte gUnknown_082D37D8 @ OAM
	.4byte gUnknown_082D37E0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D38E0 @ Sprite Data 1
	.4byte gUnknown_082D3904 @ OAM
	.4byte gUnknown_082D390C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D3D0C @ Sprite Data 1
	.4byte gUnknown_082D3D30 @ OAM
	.4byte gUnknown_082D3D38 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D4D38 @ Sprite Data 1
	.4byte gUnknown_082D4D5C @ OAM
	.4byte gUnknown_082D4D64 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D5D64 @ Sprite Data 1
	.4byte gUnknown_082D5D88 @ OAM
	.4byte gUnknown_082D5D90 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D6D90 @ Sprite Data 1
	.4byte gUnknown_082D6DB4 @ OAM
	.4byte gUnknown_082D6DBC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D6EBC @ Sprite Data 1
	.4byte gUnknown_082D6EE0 @ OAM
	.4byte gUnknown_082D6EE8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D6FE8 @ Sprite Data 1
	.4byte gUnknown_082D700C @ OAM
	.4byte gUnknown_082D7014 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D7114 @ Sprite Data 1
	.4byte gUnknown_082D7138 @ OAM
	.4byte gUnknown_082D7140 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D7240 @ Sprite Data 1
	.4byte gUnknown_082D7264 @ OAM
	.4byte gUnknown_082D726C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D766C @ Sprite Data 1
	.4byte gUnknown_082D7690 @ OAM
	.4byte gUnknown_082D7698 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D7898 @ Sprite Data 1
	.4byte gUnknown_082D78BC @ OAM
	.4byte gUnknown_082D78C4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D79C4 @ Sprite Data 1
	.4byte gUnknown_082D79E8 @ OAM
	.4byte gUnknown_082D79F0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D89F0 @ Sprite Data 1
	.4byte gUnknown_082D8A14 @ OAM
	.4byte gUnknown_082D8A1C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082D9A1C @ Sprite Data 1
	.4byte gUnknown_082D9A40 @ OAM
	.4byte gUnknown_082D9A48 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DAA48 @ Sprite Data 1
	.4byte gUnknown_082DAA6C @ OAM
	.4byte gUnknown_082DAA74 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DAE74 @ Sprite Data 1
	.4byte gUnknown_082DAE98 @ OAM
	.4byte gUnknown_082DAEA0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DB2A0 @ Sprite Data 1
	.4byte gUnknown_082DB2C4 @ OAM
	.4byte gUnknown_082DB2CC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DB3CC @ Sprite Data 1
	.4byte gUnknown_082DB3F0 @ OAM
	.4byte gUnknown_082DB3F8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DB4F8 @ Sprite Data 1
	.4byte gUnknown_082DB51C @ OAM
	.4byte gUnknown_082DB524 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DB624 @ Sprite Data 1
	.4byte gUnknown_082DB648 @ OAM
	.4byte gUnknown_082DB650 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DB750 @ Sprite Data 1
	.4byte gUnknown_082DB774 @ OAM
	.4byte gUnknown_082DB77C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DB97C @ Sprite Data 1
	.4byte gUnknown_082DB9A0 @ OAM
	.4byte gUnknown_082DB9A8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DBBA8 @ Sprite Data 1
	.4byte gUnknown_082DBBCC @ OAM
	.4byte gUnknown_082DBBD4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DBCD4 @ Sprite Data 1
	.4byte gUnknown_082DBCF8 @ OAM
	.4byte gUnknown_082DBD00 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DC500 @ Sprite Data 1
	.4byte gUnknown_082DC524 @ OAM
	.4byte gUnknown_082DC52C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DCD2C @ Sprite Data 1
	.4byte gUnknown_082DCD50 @ OAM
	.4byte gUnknown_082DCD58 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DCDD8 @ Sprite Data 1
	.4byte gUnknown_082DCDFC @ OAM
	.4byte gUnknown_082DCE04 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DD004 @ Sprite Data 1
	.4byte gUnknown_082DD028 @ OAM
	.4byte gUnknown_082DD030 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DD230 @ Sprite Data 1
	.4byte gUnknown_082DD254 @ OAM
	.4byte gUnknown_082DD25C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DD45C @ Sprite Data 1
	.4byte gUnknown_082DD480 @ OAM
	.4byte gUnknown_082DD488 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DD688 @ Sprite Data 1
	.4byte gUnknown_082DD6AC @ OAM
	.4byte gUnknown_082DD6B4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DDAB4 @ Sprite Data 1
	.4byte gUnknown_082DDAD8 @ OAM
	.4byte gUnknown_082DDAE0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DDEE0 @ Sprite Data 1
	.4byte gUnknown_082DDF04 @ OAM
	.4byte gUnknown_082DDF0C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DE30C @ Sprite Data 1
	.4byte gUnknown_082DE330 @ OAM
	.4byte gUnknown_082DE338 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DE438 @ Sprite Data 1
	.4byte gUnknown_082DE45C @ OAM
	.4byte gUnknown_082DE464 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DE564 @ Sprite Data 1
	.4byte gUnknown_082DE588 @ OAM
	.4byte gUnknown_082DE590 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DE690 @ Sprite Data 1
	.4byte gUnknown_082DE6B4 @ OAM
	.4byte gUnknown_082DE6BC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DE7BC @ Sprite Data 1
	.4byte gUnknown_082DE7E0 @ OAM
	.4byte gUnknown_082DE7E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DEBE8 @ Sprite Data 1
	.4byte gUnknown_082DEC0C @ OAM
	.4byte gUnknown_082DEC14 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DF014 @ Sprite Data 1
	.4byte gUnknown_082DF038 @ OAM
	.4byte gUnknown_082DF040 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082DF440 @ Sprite Data 1
	.4byte gUnknown_082DF464 @ OAM
	.4byte gUnknown_082DF46C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E046C @ Sprite Data 1
	.4byte gUnknown_082E0490 @ OAM
	.4byte gUnknown_082E0498 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E1498 @ Sprite Data 1
	.4byte gUnknown_082E14BC @ OAM
	.4byte gUnknown_082E14C4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E1CC4 @ Sprite Data 1
	.4byte gUnknown_082E1CE8 @ OAM
	.4byte gUnknown_082E1CF0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E20F0 @ Sprite Data 1
	.4byte gUnknown_082E2114 @ OAM
	.4byte gUnknown_082E211C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E291C @ Sprite Data 1
	.4byte gUnknown_082E2940 @ OAM
	.4byte gUnknown_082E2948 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E29C8 @ Sprite Data 1
	.4byte gUnknown_082E29EC @ OAM
	.4byte gUnknown_082E29F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E2DF4 @ Sprite Data 1
	.4byte gUnknown_082E2E18 @ OAM
	.4byte gUnknown_082E2E20 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E2F20 @ Sprite Data 1
	.4byte gUnknown_082E2F44 @ OAM
	.4byte gUnknown_082E2F4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E304C @ Sprite Data 1
	.4byte gUnknown_082E3070 @ OAM
	.4byte gUnknown_082E3078 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E3278 @ Sprite Data 1
	.4byte gUnknown_082E329C @ OAM
	.4byte gUnknown_082E32A4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E33A4 @ Sprite Data 1
	.4byte gUnknown_082E33C8 @ OAM
	.4byte gUnknown_082E33D0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E3410 @ Sprite Data 1
	.4byte gUnknown_082E3434 @ OAM
	.4byte gUnknown_082E343C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E363C @ Sprite Data 1
	.4byte gUnknown_082E3660 @ OAM
	.4byte gUnknown_082E3668 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E3868 @ Sprite Data 1
	.4byte gUnknown_082E388C @ OAM
	.4byte gUnknown_082E3894 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E3A94 @ Sprite Data 1
	.4byte gUnknown_082E3AB8 @ OAM
	.4byte gUnknown_082E3AC0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E3CC0 @ Sprite Data 1
	.4byte gUnknown_082E3CE4 @ OAM
	.4byte gUnknown_082E3CEC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E3EEC @ Sprite Data 1
	.4byte gUnknown_082E3F10 @ OAM
	.4byte gUnknown_082E3F18 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4018 @ Sprite Data 1
	.4byte gUnknown_082E403C @ OAM
	.4byte gUnknown_082E4044 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4244 @ Sprite Data 1
	.4byte gUnknown_082E4268 @ OAM
	.4byte gUnknown_082E4270 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4470 @ Sprite Data 1
	.4byte gUnknown_082E4494 @ OAM
	.4byte gUnknown_082E449C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E469C @ Sprite Data 1
	.4byte gUnknown_082E46C0 @ OAM
	.4byte gUnknown_082E46C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E48C8 @ Sprite Data 1
	.4byte gUnknown_082E48EC @ OAM
	.4byte gUnknown_082E48F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4AF4 @ Sprite Data 1
	.4byte gUnknown_082E4B18 @ OAM
	.4byte gUnknown_082E4B20 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4C20 @ Sprite Data 1
	.4byte gUnknown_082E4C44 @ OAM
	.4byte gUnknown_082E4C4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4E4C @ Sprite Data 1
	.4byte gUnknown_082E4E70 @ OAM
	.4byte gUnknown_082E4E78 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E4F78 @ Sprite Data 1
	.4byte gUnknown_082E4F9C @ OAM
	.4byte gUnknown_082E4FA4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E53A4 @ Sprite Data 1
	.4byte gUnknown_082E53C8 @ OAM
	.4byte gUnknown_082E53D0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E57D0 @ Sprite Data 1
	.4byte gUnknown_082E57F4 @ OAM
	.4byte gUnknown_082E57FC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E5BFC @ Sprite Data 1
	.4byte gUnknown_082E5C20 @ OAM
	.4byte gUnknown_082E5C28 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E6028 @ Sprite Data 1
	.4byte gUnknown_082E604C @ OAM
	.4byte gUnknown_082E6054 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E6454 @ Sprite Data 1
	.4byte gUnknown_082E6478 @ OAM
	.4byte gUnknown_082E6480 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E6580 @ Sprite Data 1
	.4byte gUnknown_082E65A4 @ OAM
	.4byte gUnknown_082E65AC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E66AC @ Sprite Data 1
	.4byte gUnknown_082E66D0 @ OAM
	.4byte gUnknown_082E66D8 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E6718 @ Sprite Data 1
	.4byte gUnknown_082E6760 @ OAM
	.4byte gUnknown_082E6768 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E6868 @ Sprite Data 1
	.4byte gUnknown_082E6940 @ OAM
	.4byte gUnknown_082E6948 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E8148 @ Sprite Data 1
	.4byte gUnknown_082E8190 @ OAM
	.4byte gUnknown_082E8198 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E8298 @ Sprite Data 1
	.4byte gUnknown_082E8304 @ OAM
	.4byte gUnknown_082E830C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E848C @ Sprite Data 1
	.4byte gUnknown_082E84D4 @ OAM
	.4byte gUnknown_082E84DC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E88DC @ Sprite Data 1
	.4byte gUnknown_082E8900 @ OAM
	.4byte gUnknown_082E8908 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E8A08 @ Sprite Data 1
	.4byte gUnknown_082E8A50 @ OAM
	.4byte gUnknown_082E8A58 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E8E58 @ Sprite Data 1
	.4byte gUnknown_082E8EA0 @ OAM
	.4byte gUnknown_082E8EA8 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E90A8 @ Sprite Data 1
	.4byte gUnknown_082E9114 @ OAM
	.4byte gUnknown_082E911C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E929C @ Sprite Data 1
	.4byte gUnknown_082E92C0 @ OAM
	.4byte gUnknown_082E92C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E94C8 @ Sprite Data 1
	.4byte gUnknown_082E94EC @ OAM
	.4byte gUnknown_082E94F4 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082E9574 @ Sprite Data 1
	.4byte gUnknown_082E964C @ OAM
	.4byte gUnknown_082E9654 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EAE54 @ Sprite Data 1
	.4byte gUnknown_082EAE78 @ OAM
	.4byte gUnknown_082EAE80 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EAF00 @ Sprite Data 1
	.4byte gUnknown_082EAF90 @ OAM
	.4byte gUnknown_082EAF98 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EB198 @ Sprite Data 1
	.4byte gUnknown_082EB1BC @ OAM
	.4byte gUnknown_082EB1C4 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EB244 @ Sprite Data 1
	.4byte gUnknown_082EB2B0 @ OAM
	.4byte gUnknown_082EB2B8 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EBAB8 @ Sprite Data 1
	.4byte gUnknown_082EBB00 @ OAM
	.4byte gUnknown_082EBB08 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EBC08 @ Sprite Data 1
	.4byte gUnknown_082EBC2C @ OAM
	.4byte gUnknown_082EBC34 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EBE34 @ Sprite Data 1
	.4byte gUnknown_082EBE58 @ OAM
	.4byte gUnknown_082EBE60 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EC060 @ Sprite Data 1
	.4byte gUnknown_082EC0CC @ OAM
	.4byte gUnknown_082EC0D4 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EC154 @ Sprite Data 1
	.4byte gUnknown_082EC1E4 @ OAM
	.4byte gUnknown_082EC1EC @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EC26C @ Sprite Data 1
	.4byte gUnknown_082EC2D8 @ OAM
	.4byte gUnknown_082EC2E0 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EC5E0 @ Sprite Data 1
	.4byte gUnknown_082EC748 @ OAM
	.4byte gUnknown_082EC750 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EC9D0 @ Sprite Data 1
	.4byte gUnknown_082ECB38 @ OAM
	.4byte gUnknown_082ECB40 @ Sprite Graphics

	.2byte 0x000D @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ECDC0 @ Sprite Data 1
	.4byte gUnknown_082ECF94 @ OAM
	.4byte gUnknown_082ECF9C @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED13C @ Sprite Data 1
	.4byte gUnknown_082ED280 @ OAM
	.4byte gUnknown_082ED288 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED4C8 @ Sprite Data 1
	.4byte gUnknown_082ED4EC @ OAM
	.4byte gUnknown_082ED4F4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED574 @ Sprite Data 1
	.4byte gUnknown_082ED5BC @ OAM
	.4byte gUnknown_082ED5C4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED644 @ Sprite Data 1
	.4byte gUnknown_082ED668 @ OAM
	.4byte gUnknown_082ED670 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED770 @ Sprite Data 1
	.4byte gUnknown_082ED794 @ OAM
	.4byte gUnknown_082ED79C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED89C @ Sprite Data 1
	.4byte gUnknown_082ED8C0 @ OAM
	.4byte gUnknown_082ED8C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082ED9C8 @ Sprite Data 1
	.4byte gUnknown_082ED9EC @ OAM
	.4byte gUnknown_082ED9F4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EDAF4 @ Sprite Data 1
	.4byte gUnknown_082EDB18 @ OAM
	.4byte gUnknown_082EDB20 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EDC20 @ Sprite Data 1
	.4byte gUnknown_082EDC44 @ OAM
	.4byte gUnknown_082EDC4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EDCCC @ Sprite Data 1
	.4byte gUnknown_082EDCF0 @ OAM
	.4byte gUnknown_082EDCF8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EDDF8 @ Sprite Data 1
	.4byte gUnknown_082EDE1C @ OAM
	.4byte gUnknown_082EDE24 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EDF24 @ Sprite Data 1
	.4byte gUnknown_082EDF48 @ OAM
	.4byte gUnknown_082EDF50 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE050 @ Sprite Data 1
	.4byte gUnknown_082EE074 @ OAM
	.4byte gUnknown_082EE07C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE0FC @ Sprite Data 1
	.4byte gUnknown_082EE120 @ OAM
	.4byte gUnknown_082EE128 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE168 @ Sprite Data 1
	.4byte gUnknown_082EE18C @ OAM
	.4byte gUnknown_082EE194 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE214 @ Sprite Data 1
	.4byte gUnknown_082EE25C @ OAM
	.4byte gUnknown_082EE264 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE464 @ Sprite Data 1
	.4byte gUnknown_082EE4AC @ OAM
	.4byte gUnknown_082EE4B4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE6B4 @ Sprite Data 1
	.4byte gUnknown_082EE6FC @ OAM
	.4byte gUnknown_082EE704 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EE904 @ Sprite Data 1
	.4byte gUnknown_082EE94C @ OAM
	.4byte gUnknown_082EE954 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EEB54 @ Sprite Data 1
	.4byte gUnknown_082EEB9C @ OAM
	.4byte gUnknown_082EEBA4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EEDA4 @ Sprite Data 1
	.4byte gUnknown_082EEDEC @ OAM
	.4byte gUnknown_082EEDF4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EEEF4 @ Sprite Data 1
	.4byte gUnknown_082EEF3C @ OAM
	.4byte gUnknown_082EEF44 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EF144 @ Sprite Data 1
	.4byte gUnknown_082EF18C @ OAM
	.4byte gUnknown_082EF194 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EF394 @ Sprite Data 1
	.4byte gUnknown_082EF3DC @ OAM
	.4byte gUnknown_082EF3E4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EF5E4 @ Sprite Data 1
	.4byte gUnknown_082EF62C @ OAM
	.4byte gUnknown_082EF634 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EF734 @ Sprite Data 1
	.4byte gUnknown_082EF77C @ OAM
	.4byte gUnknown_082EF784 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EF804 @ Sprite Data 1
	.4byte gUnknown_082EF924 @ OAM
	.4byte gUnknown_082EF92C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFB2C @ Sprite Data 1
	.4byte gUnknown_082EFB50 @ OAM
	.4byte gUnknown_082EFB58 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFBD8 @ Sprite Data 1
	.4byte gUnknown_082EFBFC @ OAM
	.4byte gUnknown_082EFC04 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFC44 @ Sprite Data 1
	.4byte gUnknown_082EFC68 @ OAM
	.4byte gUnknown_082EFC70 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFC90 @ Sprite Data 1
	.4byte gUnknown_082EFCB4 @ OAM
	.4byte gUnknown_082EFCBC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFCDC @ Sprite Data 1
	.4byte gUnknown_082EFD00 @ OAM
	.4byte gUnknown_082EFD08 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFD88 @ Sprite Data 1
	.4byte gUnknown_082EFDAC @ OAM
	.4byte gUnknown_082EFDB4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFDD4 @ Sprite Data 1
	.4byte gUnknown_082EFDF8 @ OAM
	.4byte gUnknown_082EFE00 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFE20 @ Sprite Data 1
	.4byte gUnknown_082EFE44 @ OAM
	.4byte gUnknown_082EFE4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFE6C @ Sprite Data 1
	.4byte gUnknown_082EFE90 @ OAM
	.4byte gUnknown_082EFE98 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFEB8 @ Sprite Data 1
	.4byte gUnknown_082EFF24 @ OAM
	.4byte gUnknown_082EFF2C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFF8C @ Sprite Data 1
	.4byte gUnknown_082EFFB0 @ OAM
	.4byte gUnknown_082EFFB8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082EFFD8 @ Sprite Data 1
	.4byte gUnknown_082EFFFC @ OAM
	.4byte gUnknown_082F0004 @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0024 @ Sprite Data 1
	.4byte gUnknown_082F01B0 @ OAM
	.4byte gUnknown_082F01B8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0318 @ Sprite Data 1
	.4byte gUnknown_082F033C @ OAM
	.4byte gUnknown_082F0344 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0364 @ Sprite Data 1
	.4byte gUnknown_082F043C @ OAM
	.4byte gUnknown_082F0444 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0744 @ Sprite Data 1
	.4byte gUnknown_082F0768 @ OAM
	.4byte gUnknown_082F0770 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0790 @ Sprite Data 1
	.4byte gUnknown_082F07B4 @ OAM
	.4byte gUnknown_082F07BC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F07DC @ Sprite Data 1
	.4byte gUnknown_082F0800 @ OAM
	.4byte gUnknown_082F0808 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0828 @ Sprite Data 1
	.4byte gUnknown_082F084C @ OAM
	.4byte gUnknown_082F0854 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0874 @ Sprite Data 1
	.4byte gUnknown_082F0898 @ OAM
	.4byte gUnknown_082F08A0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0920 @ Sprite Data 1
	.4byte gUnknown_082F0944 @ OAM
	.4byte gUnknown_082F094C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F096C @ Sprite Data 1
	.4byte gUnknown_082F0990 @ OAM
	.4byte gUnknown_082F0998 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0A18 @ Sprite Data 1
	.4byte gUnknown_082F0A60 @ OAM
	.4byte gUnknown_082F0A68 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0AE8 @ Sprite Data 1
	.4byte gUnknown_082F0B30 @ OAM
	.4byte gUnknown_082F0B38 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0BB8 @ Sprite Data 1
	.4byte gUnknown_082F0BDC @ OAM
	.4byte gUnknown_082F0BE4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0C64 @ Sprite Data 1
	.4byte gUnknown_082F0C88 @ OAM
	.4byte gUnknown_082F0C90 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0CD0 @ Sprite Data 1
	.4byte gUnknown_082F0CF4 @ OAM
	.4byte gUnknown_082F0CFC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F0D7C @ Sprite Data 1
	.4byte gUnknown_082F0DA0 @ OAM
	.4byte gUnknown_082F0DA8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F11A8 @ Sprite Data 1
	.4byte gUnknown_082F11CC @ OAM
	.4byte gUnknown_082F11D4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F15D4 @ Sprite Data 1
	.4byte gUnknown_082F15F8 @ OAM
	.4byte gUnknown_082F1600 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F1680 @ Sprite Data 1
	.4byte gUnknown_082F1710 @ OAM
	.4byte gUnknown_082F1718 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F1898 @ Sprite Data 1
	.4byte gUnknown_082F1928 @ OAM
	.4byte gUnknown_082F1930 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F1AB0 @ Sprite Data 1
	.4byte gUnknown_082F1B40 @ OAM
	.4byte gUnknown_082F1B48 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F1CC8 @ Sprite Data 1
	.4byte gUnknown_082F1CEC @ OAM
	.4byte gUnknown_082F1CF4 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F1DF4 @ Sprite Data 1
	.4byte gUnknown_082F1E60 @ OAM
	.4byte gUnknown_082F1E68 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F1FE8 @ Sprite Data 1
	.4byte gUnknown_082F200C @ OAM
	.4byte gUnknown_082F2014 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2094 @ Sprite Data 1
	.4byte gUnknown_082F20B8 @ OAM
	.4byte gUnknown_082F20C0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2140 @ Sprite Data 1
	.4byte gUnknown_082F2164 @ OAM
	.4byte gUnknown_082F216C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F21EC @ Sprite Data 1
	.4byte gUnknown_082F2210 @ OAM
	.4byte gUnknown_082F2218 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2298 @ Sprite Data 1
	.4byte gUnknown_082F22BC @ OAM
	.4byte gUnknown_082F22C4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2344 @ Sprite Data 1
	.4byte gUnknown_082F2368 @ OAM
	.4byte gUnknown_082F2370 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F23F0 @ Sprite Data 1
	.4byte gUnknown_082F2414 @ OAM
	.4byte gUnknown_082F241C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F261C @ Sprite Data 1
	.4byte gUnknown_082F2640 @ OAM
	.4byte gUnknown_082F2648 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2848 @ Sprite Data 1
	.4byte gUnknown_082F286C @ OAM
	.4byte gUnknown_082F2874 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2A74 @ Sprite Data 1
	.4byte gUnknown_082F2A98 @ OAM
	.4byte gUnknown_082F2AA0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2CA0 @ Sprite Data 1
	.4byte gUnknown_082F2CC4 @ OAM
	.4byte gUnknown_082F2CCC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F2ECC @ Sprite Data 1
	.4byte gUnknown_082F2EF0 @ OAM
	.4byte gUnknown_082F2EF8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F30F8 @ Sprite Data 1
	.4byte gUnknown_082F311C @ OAM
	.4byte gUnknown_082F3124 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F3324 @ Sprite Data 1
	.4byte gUnknown_082F3348 @ OAM
	.4byte gUnknown_082F3350 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F3550 @ Sprite Data 1
	.4byte gUnknown_082F3574 @ OAM
	.4byte gUnknown_082F357C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F377C @ Sprite Data 1
	.4byte gUnknown_082F37A0 @ OAM
	.4byte gUnknown_082F37A8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F37C8 @ Sprite Data 1
	.4byte gUnknown_082F37EC @ OAM
	.4byte gUnknown_082F37F4 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F38F4 @ Sprite Data 1
	.4byte gUnknown_082F39F0 @ OAM
	.4byte gUnknown_082F39F8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F3D78 @ Sprite Data 1
	.4byte gUnknown_082F3FB8 @ OAM
	.4byte gUnknown_082F3FC0 @ Sprite Graphics

	.2byte 0x0034 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F43C0 @ Sprite Data 1
	.4byte gUnknown_082F4B10 @ OAM
	.4byte gUnknown_082F4B18 @ Sprite Graphics

	.2byte 0x000F @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F4D18 @ Sprite Data 1
	.4byte gUnknown_082F4F34 @ OAM
	.4byte gUnknown_082F4F3C @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F513C @ Sprite Data 1
	.4byte gUnknown_082F52A4 @ OAM
	.4byte gUnknown_082F52AC @ Sprite Graphics

	.2byte 0x001C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F57AC @ Sprite Data 1
	.4byte gUnknown_082F5B9C @ OAM
	.4byte gUnknown_082F5BA4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F67A4 @ Sprite Data 1
	.4byte gUnknown_082F67C8 @ OAM
	.4byte gUnknown_082F67D0 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F6850 @ Sprite Data 1
	.4byte gUnknown_082F6AD8 @ OAM
	.4byte gUnknown_082F6AE0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F8EE0 @ Sprite Data 1
	.4byte gUnknown_082F8F04 @ OAM
	.4byte gUnknown_082F8F0C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F8F8C @ Sprite Data 1
	.4byte gUnknown_082F8FB0 @ OAM
	.4byte gUnknown_082F8FB8 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F9038 @ Sprite Data 1
	.4byte gUnknown_082F917C @ OAM
	.4byte gUnknown_082F9184 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F9A84 @ Sprite Data 1
	.4byte gUnknown_082F9B14 @ OAM
	.4byte gUnknown_082F9B1C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082F9C9C @ Sprite Data 1
	.4byte gUnknown_082F9E4C @ OAM
	.4byte gUnknown_082F9E54 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082FA454 @ Sprite Data 1
	.4byte gUnknown_082FA5BC @ OAM
	.4byte gUnknown_082FA5C4 @ Sprite Graphics

	.2byte 0x001A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_082FCDC4 @ Sprite Data 1
	.4byte gUnknown_082FD16C @ OAM
	.4byte gUnknown_082FD174 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08303974 @ Sprite Data 1
	.4byte gUnknown_08303A94 @ OAM
	.4byte gUnknown_08303A9C @ Sprite Graphics

	.2byte 0x002B @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08305A9C @ Sprite Data 1
	.4byte gUnknown_083060A8 @ OAM
	.4byte gUnknown_083060B0 @ Sprite Graphics

	.2byte 0x003A @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0830E0B0 @ Sprite Data 1
	.4byte gUnknown_0830E8D8 @ OAM
	.4byte gUnknown_0830E8E0 @ Sprite Graphics

	.2byte 0x0028 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0833E8E0 @ Sprite Data 1
	.4byte gUnknown_0833EE80 @ OAM
	.4byte gUnknown_0833EE88 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08342E88 @ Sprite Data 1
	.4byte gUnknown_08342EAC @ OAM
	.4byte gUnknown_08342EB4 @ Sprite Graphics

	.2byte 0x0013 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08342FB4 @ Sprite Data 1
	.4byte gUnknown_08343260 @ OAM
	.4byte gUnknown_08343268 @ Sprite Graphics

	.2byte 0x0013 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08347E68 @ Sprite Data 1
	.4byte gUnknown_08348114 @ OAM
	.4byte gUnknown_0834811C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0834CD1C @ Sprite Data 1
	.4byte gUnknown_0834CD40 @ OAM
	.4byte gUnknown_0834CD48 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0834D148 @ Sprite Data 1
	.4byte gUnknown_0834D244 @ OAM
	.4byte gUnknown_0834D24C @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0834EE4C @ Sprite Data 1
	.4byte gUnknown_0834EF48 @ OAM
	.4byte gUnknown_0834EF50 @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08350B50 @ Sprite Data 1
	.4byte gUnknown_08350DB4 @ OAM
	.4byte gUnknown_08350DBC @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083551BC @ Sprite Data 1
	.4byte gUnknown_0835563C @ OAM
	.4byte gUnknown_08355644 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0835D644 @ Sprite Data 1
	.4byte gUnknown_0835DAC4 @ OAM
	.4byte gUnknown_0835DACC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08365ACC @ Sprite Data 1
	.4byte gUnknown_08365AF0 @ OAM
	.4byte gUnknown_08365AF8 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08365EF8 @ Sprite Data 1
	.4byte gUnknown_08366378 @ OAM
	.4byte gUnknown_08366380 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0836E380 @ Sprite Data 1
	.4byte gUnknown_0836E4A0 @ OAM
	.4byte gUnknown_0836E4A8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083704A8 @ Sprite Data 1
	.4byte gUnknown_083706E8 @ OAM
	.4byte gUnknown_083706F0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083746F0 @ Sprite Data 1
	.4byte gUnknown_08374930 @ OAM
	.4byte gUnknown_08374938 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08376938 @ Sprite Data 1
	.4byte gUnknown_08376B78 @ OAM
	.4byte gUnknown_08376B80 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0837AB80 @ Sprite Data 1
	.4byte gUnknown_0837ACA0 @ OAM
	.4byte gUnknown_0837ACA8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0837CCA8 @ Sprite Data 1
	.4byte gUnknown_0837CEE8 @ OAM
	.4byte gUnknown_0837CEF0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08380EF0 @ Sprite Data 1
	.4byte gUnknown_08381010 @ OAM
	.4byte gUnknown_08381018 @ Sprite Graphics

	.2byte 0x0033 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08383018 @ Sprite Data 1
	.4byte gUnknown_08383744 @ OAM
	.4byte gUnknown_0838374C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0838434C @ Sprite Data 1
	.4byte gUnknown_083844FC @ OAM
	.4byte gUnknown_08384504 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08387504 @ Sprite Data 1
	.4byte gUnknown_08387864 @ OAM
	.4byte gUnknown_0838786C @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0838D86C @ Sprite Data 1
	.4byte gUnknown_0838DB3C @ OAM
	.4byte gUnknown_0838DB44 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08392B44 @ Sprite Data 1
	.4byte gUnknown_08392C64 @ OAM
	.4byte gUnknown_08392C6C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08394C6C @ Sprite Data 1
	.4byte gUnknown_08394EAC @ OAM
	.4byte gUnknown_08394EB4 @ Sprite Graphics

	.2byte 0x001C @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083A4EB4 @ Sprite Data 1
	.4byte gUnknown_083A52A4 @ OAM
	.4byte gUnknown_083A52AC @ Sprite Graphics

	.2byte 0x001F @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083C12AC @ Sprite Data 1
	.4byte gUnknown_083C1708 @ OAM
	.4byte gUnknown_083C1710 @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083DE710 @ Sprite Data 1
	.4byte gUnknown_083DE89C @ OAM
	.4byte gUnknown_083DE8A4 @ Sprite Graphics

	.2byte 0x0016 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083E14A4 @ Sprite Data 1
	.4byte gUnknown_083E17BC @ OAM
	.4byte gUnknown_083E17C4 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083E6FC4 @ Sprite Data 1
	.4byte gUnknown_083E712C @ OAM
	.4byte gUnknown_083E7134 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083E8934 @ Sprite Data 1
	.4byte gUnknown_083E8A30 @ OAM
	.4byte gUnknown_083E8A38 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083EA638 @ Sprite Data 1
	.4byte gUnknown_083EA734 @ OAM
	.4byte gUnknown_083EA73C @ Sprite Graphics

	.2byte 0x0040 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083EC33C @ Sprite Data 1
	.4byte gUnknown_083ECC3C @ OAM
	.4byte gUnknown_083ECC44 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083F4C44 @ Sprite Data 1
	.4byte gUnknown_083F4E84 @ OAM
	.4byte gUnknown_083F4E8C @ Sprite Graphics

	.2byte 0x0044 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083F8E8C @ Sprite Data 1
	.4byte gUnknown_083F981C @ OAM
	.4byte gUnknown_083F9824 @ Sprite Graphics

	.2byte 0x0022 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_083FE024 @ Sprite Data 1
	.4byte gUnknown_083FE4EC @ OAM
	.4byte gUnknown_083FE4F4 @ Sprite Graphics

	.2byte 0x001C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084064F4 @ Sprite Data 1
	.4byte gUnknown_084068E4 @ OAM
	.4byte gUnknown_084068EC @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0840A8EC @ Sprite Data 1
	.4byte gUnknown_0840A9E8 @ OAM
	.4byte gUnknown_0840A9F0 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0840C5F0 @ Sprite Data 1
	.4byte gUnknown_0840C734 @ OAM
	.4byte gUnknown_0840C73C @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0840D93C @ Sprite Data 1
	.4byte gUnknown_0840D9A8 @ OAM
	.4byte gUnknown_0840D9B0 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0840E5B0 @ Sprite Data 1
	.4byte gUnknown_0840E6F4 @ OAM
	.4byte gUnknown_0840E6FC @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0840F8FC @ Sprite Data 1
	.4byte gUnknown_0840FC5C @ OAM
	.4byte gUnknown_0840FC64 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08415C64 @ Sprite Data 1
	.4byte gUnknown_08415EA4 @ OAM
	.4byte gUnknown_08415EAC @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08419EAC @ Sprite Data 1
	.4byte gUnknown_0841A0EC @ OAM
	.4byte gUnknown_0841A0F4 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0841E0F4 @ Sprite Data 1
	.4byte gUnknown_0841E454 @ OAM
	.4byte gUnknown_0841E45C @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0842445C @ Sprite Data 1
	.4byte gUnknown_08424558 @ OAM
	.4byte gUnknown_08424560 @ Sprite Graphics

	.2byte 0x001A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08426160 @ Sprite Data 1
	.4byte gUnknown_08426508 @ OAM
	.4byte gUnknown_08426510 @ Sprite Graphics

	.2byte 0x0015 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0842CD10 @ Sprite Data 1
	.4byte gUnknown_0842D004 @ OAM
	.4byte gUnknown_0842D00C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0843240C @ Sprite Data 1
	.4byte gUnknown_084325BC @ OAM
	.4byte gUnknown_084325C4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084355C4 @ Sprite Data 1
	.4byte gUnknown_08435804 @ OAM
	.4byte gUnknown_0843580C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0843980C @ Sprite Data 1
	.4byte gUnknown_08439A4C @ OAM
	.4byte gUnknown_08439A54 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0843DA54 @ Sprite Data 1
	.4byte gUnknown_0843DED4 @ OAM
	.4byte gUnknown_0843DEDC @ Sprite Graphics

	.2byte 0x001E @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08445EDC @ Sprite Data 1
	.4byte gUnknown_08446314 @ OAM
	.4byte gUnknown_0844631C @ Sprite Graphics

	.2byte 0x0017 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0844DB1C @ Sprite Data 1
	.4byte gUnknown_0844DE58 @ OAM
	.4byte gUnknown_0844DE60 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08453A60 @ Sprite Data 1
	.4byte gUnknown_08453CA0 @ OAM
	.4byte gUnknown_08453CA8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08457CA8 @ Sprite Data 1
	.4byte gUnknown_08457D38 @ OAM
	.4byte gUnknown_08457D40 @ Sprite Graphics

	.2byte 0x000D @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08458D40 @ Sprite Data 1
	.4byte gUnknown_08458F14 @ OAM
	.4byte gUnknown_08458F1C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0845C31C @ Sprite Data 1
	.4byte gUnknown_0845C43C @ OAM
	.4byte gUnknown_0845C444 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0845E444 @ Sprite Data 1
	.4byte gUnknown_0845E564 @ OAM
	.4byte gUnknown_0845E56C @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0846056C @ Sprite Data 1
	.4byte gUnknown_084608CC @ OAM
	.4byte gUnknown_084608D4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084668D4 @ Sprite Data 1
	.4byte gUnknown_08466B14 @ OAM
	.4byte gUnknown_08466B1C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0846AB1C @ Sprite Data 1
	.4byte gUnknown_0846ACCC @ OAM
	.4byte gUnknown_0846ACD4 @ Sprite Graphics

	.2byte 0x000D @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0846DCD4 @ Sprite Data 1
	.4byte gUnknown_0846DEA8 @ OAM
	.4byte gUnknown_0846DEB0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084712B0 @ Sprite Data 1
	.4byte gUnknown_084714F0 @ OAM
	.4byte gUnknown_084714F8 @ Sprite Graphics

	.2byte 0x0024 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084754F8 @ Sprite Data 1
	.4byte gUnknown_08475A08 @ OAM
	.4byte gUnknown_08475A10 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0847EA10 @ Sprite Data 1
	.4byte gUnknown_0847EB78 @ OAM
	.4byte gUnknown_0847EB80 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08481380 @ Sprite Data 1
	.4byte gUnknown_084816E0 @ OAM
	.4byte gUnknown_084816E8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084876E8 @ Sprite Data 1
	.4byte gUnknown_08487808 @ OAM
	.4byte gUnknown_08487810 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08489810 @ Sprite Data 1
	.4byte gUnknown_08489B70 @ OAM
	.4byte gUnknown_08489B78 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0848FB78 @ Sprite Data 1
	.4byte gUnknown_0848FB9C @ OAM
	.4byte gUnknown_0848FBA4 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0848FFA4 @ Sprite Data 1
	.4byte gUnknown_084900A0 @ OAM
	.4byte gUnknown_084900A8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08491CA8 @ Sprite Data 1
	.4byte gUnknown_08491EE8 @ OAM
	.4byte gUnknown_08491EF0 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08495EF0 @ Sprite Data 1
	.4byte gUnknown_084960A0 @ OAM
	.4byte gUnknown_084960A8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084990A8 @ Sprite Data 1
	.4byte gUnknown_084992E8 @ OAM
	.4byte gUnknown_084992F0 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0849D2F0 @ Sprite Data 1
	.4byte gUnknown_0849D380 @ OAM
	.4byte gUnknown_0849D388 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0849E388 @ Sprite Data 1
	.4byte gUnknown_0849E4A8 @ OAM
	.4byte gUnknown_0849E4B0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084A04B0 @ Sprite Data 1
	.4byte gUnknown_084A05D0 @ OAM
	.4byte gUnknown_084A05D8 @ Sprite Graphics

	.2byte 0x000F @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084A25D8 @ Sprite Data 1
	.4byte gUnknown_084A27F4 @ OAM
	.4byte gUnknown_084A27FC @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084A63FC @ Sprite Data 1
	.4byte gUnknown_084A6684 @ OAM
	.4byte gUnknown_084A668C @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084AAE8C @ Sprite Data 1
	.4byte gUnknown_084AB30C @ OAM
	.4byte gUnknown_084AB314 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084AB714 @ Sprite Data 1
	.4byte gUnknown_084AB8C4 @ OAM
	.4byte gUnknown_084AB8CC @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084ABCCC @ Sprite Data 1
	.4byte gUnknown_084ABE34 @ OAM
	.4byte gUnknown_084ABE3C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084ADE3C @ Sprite Data 1
	.4byte gUnknown_084ADF5C @ OAM
	.4byte gUnknown_084ADF64 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084AFF64 @ Sprite Data 1
	.4byte gUnknown_084B0060 @ OAM
	.4byte gUnknown_084B0068 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084B1C68 @ Sprite Data 1
	.4byte gUnknown_084B1EA8 @ OAM
	.4byte gUnknown_084B1EB0 @ Sprite Graphics

	.2byte 0x0017 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084B5EB0 @ Sprite Data 1
	.4byte gUnknown_084B61EC @ OAM
	.4byte gUnknown_084B61F4 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084BBDF4 @ Sprite Data 1
	.4byte gUnknown_084BC274 @ OAM
	.4byte gUnknown_084BC27C @ Sprite Graphics

	.2byte 0x001A @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084C427C @ Sprite Data 1
	.4byte gUnknown_084C4624 @ OAM
	.4byte gUnknown_084C462C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084DE62C @ Sprite Data 1
	.4byte gUnknown_084DE7DC @ OAM
	.4byte gUnknown_084DE7E4 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084E17E4 @ Sprite Data 1
	.4byte gUnknown_084E1904 @ OAM
	.4byte gUnknown_084E190C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084E390C @ Sprite Data 1
	.4byte gUnknown_084E3B4C @ OAM
	.4byte gUnknown_084E3B54 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084E7B54 @ Sprite Data 1
	.4byte gUnknown_084E7C50 @ OAM
	.4byte gUnknown_084E7C58 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084E9858 @ Sprite Data 1
	.4byte gUnknown_084E9954 @ OAM
	.4byte gUnknown_084E995C @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084EB55C @ Sprite Data 1
	.4byte gUnknown_084EB7E4 @ OAM
	.4byte gUnknown_084EB7EC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084EFFEC @ Sprite Data 1
	.4byte gUnknown_084F010C @ OAM
	.4byte gUnknown_084F0114 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084F2114 @ Sprite Data 1
	.4byte gUnknown_084F2210 @ OAM
	.4byte gUnknown_084F2218 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084F3E18 @ Sprite Data 1
	.4byte gUnknown_084F3F38 @ OAM
	.4byte gUnknown_084F3F40 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084F5F40 @ Sprite Data 1
	.4byte gUnknown_084F61C8 @ OAM
	.4byte gUnknown_084F61D0 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084FA9D0 @ Sprite Data 1
	.4byte gUnknown_084FAACC @ OAM
	.4byte gUnknown_084FAAD4 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084FC6D4 @ Sprite Data 1
	.4byte gUnknown_084FC7D0 @ OAM
	.4byte gUnknown_084FC7D8 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_084FE3D8 @ Sprite Data 1
	.4byte gUnknown_084FE660 @ OAM
	.4byte gUnknown_084FE668 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08502E68 @ Sprite Data 1
	.4byte gUnknown_08502F64 @ OAM
	.4byte gUnknown_08502F6C @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08504B6C @ Sprite Data 1
	.4byte gUnknown_08504C68 @ OAM
	.4byte gUnknown_08504C70 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08506870 @ Sprite Data 1
	.4byte gUnknown_08506AB0 @ OAM
	.4byte gUnknown_08506AB8 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0850AAB8 @ Sprite Data 1
	.4byte gUnknown_0850AB90 @ OAM
	.4byte gUnknown_0850AB98 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0850C398 @ Sprite Data 1
	.4byte gUnknown_0850C5D8 @ OAM
	.4byte gUnknown_0850C5E0 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085105E0 @ Sprite Data 1
	.4byte gUnknown_085106DC @ OAM
	.4byte gUnknown_085106E4 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085122E4 @ Sprite Data 1
	.4byte gUnknown_085123E0 @ OAM
	.4byte gUnknown_085123E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08513FE8 @ Sprite Data 1
	.4byte gUnknown_0851400C @ OAM
	.4byte gUnknown_08514014 @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08514214 @ Sprite Data 1
	.4byte gUnknown_08514478 @ OAM
	.4byte gUnknown_08514480 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08518880 @ Sprite Data 1
	.4byte gUnknown_085188C8 @ OAM
	.4byte gUnknown_085188D0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085190D0 @ Sprite Data 1
	.4byte gUnknown_085191F0 @ OAM
	.4byte gUnknown_085191F8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0851B1F8 @ Sprite Data 1
	.4byte gUnknown_0851B438 @ OAM
	.4byte gUnknown_0851B440 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0851F440 @ Sprite Data 1
	.4byte gUnknown_0851F560 @ OAM
	.4byte gUnknown_0851F568 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08521568 @ Sprite Data 1
	.4byte gUnknown_08521688 @ OAM
	.4byte gUnknown_08521690 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08523690 @ Sprite Data 1
	.4byte gUnknown_085238D0 @ OAM
	.4byte gUnknown_085238D8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085278D8 @ Sprite Data 1
	.4byte gUnknown_08527B18 @ OAM
	.4byte gUnknown_08527B20 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0852BB20 @ Sprite Data 1
	.4byte gUnknown_0852BD60 @ OAM
	.4byte gUnknown_0852BD68 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0852FD68 @ Sprite Data 1
	.4byte gUnknown_0852FFA8 @ OAM
	.4byte gUnknown_0852FFB0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08533FB0 @ Sprite Data 1
	.4byte gUnknown_085341F0 @ OAM
	.4byte gUnknown_085341F8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08537DF8 @ Sprite Data 1
	.4byte gUnknown_08538038 @ OAM
	.4byte gUnknown_08538040 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0853C040 @ Sprite Data 1
	.4byte gUnknown_0853C3A0 @ OAM
	.4byte gUnknown_0853C3A8 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085423A8 @ Sprite Data 1
	.4byte gUnknown_08542414 @ OAM
	.4byte gUnknown_0854241C @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0854301C @ Sprite Data 1
	.4byte gUnknown_0854337C @ OAM
	.4byte gUnknown_08543384 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08549384 @ Sprite Data 1
	.4byte gUnknown_08549534 @ OAM
	.4byte gUnknown_0854953C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0854C53C @ Sprite Data 1
	.4byte gUnknown_0854C77C @ OAM
	.4byte gUnknown_0854C784 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08550784 @ Sprite Data 1
	.4byte gUnknown_085509C4 @ OAM
	.4byte gUnknown_085509CC @ Sprite Graphics

	.2byte 0x001A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085549CC @ Sprite Data 1
	.4byte gUnknown_08554D74 @ OAM
	.4byte gUnknown_08554D7C @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0855B57C @ Sprite Data 1
	.4byte gUnknown_0855B84C @ OAM
	.4byte gUnknown_0855B854 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08560854 @ Sprite Data 1
	.4byte gUnknown_08560ADC @ OAM
	.4byte gUnknown_08560AE4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085652E4 @ Sprite Data 1
	.4byte gUnknown_08565524 @ OAM
	.4byte gUnknown_0856552C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0856952C @ Sprite Data 1
	.4byte gUnknown_0856976C @ OAM
	.4byte gUnknown_08569774 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0856D774 @ Sprite Data 1
	.4byte gUnknown_0856D924 @ OAM
	.4byte gUnknown_0856D92C @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0857092C @ Sprite Data 1
	.4byte gUnknown_08570AB8 @ OAM
	.4byte gUnknown_08570AC0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085736C0 @ Sprite Data 1
	.4byte gUnknown_085737E0 @ OAM
	.4byte gUnknown_085737E8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085757E8 @ Sprite Data 1
	.4byte gUnknown_08575908 @ OAM
	.4byte gUnknown_08575910 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08577910 @ Sprite Data 1
	.4byte gUnknown_08577A30 @ OAM
	.4byte gUnknown_08577A38 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08579A38 @ Sprite Data 1
	.4byte gUnknown_08579C78 @ OAM
	.4byte gUnknown_08579C80 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0857A480 @ Sprite Data 1
	.4byte gUnknown_0857A5A0 @ OAM
	.4byte gUnknown_0857A5A8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0857ADA8 @ Sprite Data 1
	.4byte gUnknown_0857AFE8 @ OAM
	.4byte gUnknown_0857AFF0 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0857BFF0 @ Sprite Data 1
	.4byte gUnknown_0857C350 @ OAM
	.4byte gUnknown_0857C358 @ Sprite Graphics

	.2byte 0x0025 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0857DB58 @ Sprite Data 1
	.4byte gUnknown_0857E08C @ OAM
	.4byte gUnknown_0857E094 @ Sprite Graphics

	.2byte 0x0041 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08580094 @ Sprite Data 1
	.4byte gUnknown_085809B8 @ OAM
	.4byte gUnknown_085809C0 @ Sprite Graphics

	.2byte 0x002A @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085829C0 @ Sprite Data 1
	.4byte gUnknown_08582FA8 @ OAM
	.4byte gUnknown_08582FB0 @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08583BB0 @ Sprite Data 1
	.4byte gUnknown_08583E80 @ OAM
	.4byte gUnknown_08583E88 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08585088 @ Sprite Data 1
	.4byte gUnknown_085852C8 @ OAM
	.4byte gUnknown_085852D0 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085862D0 @ Sprite Data 1
	.4byte gUnknown_08586630 @ OAM
	.4byte gUnknown_08586638 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08587E38 @ Sprite Data 1
	.4byte gUnknown_085882B8 @ OAM
	.4byte gUnknown_085882C0 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085902C0 @ Sprite Data 1
	.4byte gUnknown_08590740 @ OAM
	.4byte gUnknown_08590748 @ Sprite Graphics

	.2byte 0x0038 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08592748 @ Sprite Data 1
	.4byte gUnknown_08592F28 @ OAM
	.4byte gUnknown_08592F30 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08595730 @ Sprite Data 1
	.4byte gUnknown_08595970 @ OAM
	.4byte gUnknown_08595978 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08596978 @ Sprite Data 1
	.4byte gUnknown_08596A98 @ OAM
	.4byte gUnknown_08596AA0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085972A0 @ Sprite Data 1
	.4byte gUnknown_085973C0 @ OAM
	.4byte gUnknown_085973C8 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08597BC8 @ Sprite Data 1
	.4byte gUnknown_08597E08 @ OAM
	.4byte gUnknown_08597E10 @ Sprite Graphics

	.2byte 0x0020 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08598C10 @ Sprite Data 1
	.4byte gUnknown_08599090 @ OAM
	.4byte gUnknown_08599098 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0859B098 @ Sprite Data 1
	.4byte gUnknown_0859B3F8 @ OAM
	.4byte gUnknown_0859B400 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0859CC00 @ Sprite Data 1
	.4byte gUnknown_0859CE40 @ OAM
	.4byte gUnknown_0859CE48 @ Sprite Graphics

	.2byte 0x001B @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0859DD48 @ Sprite Data 1
	.4byte gUnknown_0859E114 @ OAM
	.4byte gUnknown_0859E11C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0859FC1C @ Sprite Data 1
	.4byte gUnknown_0859FD3C @ OAM
	.4byte gUnknown_0859FD44 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A0544 @ Sprite Data 1
	.4byte gUnknown_085A0568 @ OAM
	.4byte gUnknown_085A0570 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A0770 @ Sprite Data 1
	.4byte gUnknown_085A0794 @ OAM
	.4byte gUnknown_085A079C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A099C @ Sprite Data 1
	.4byte gUnknown_085A09C0 @ OAM
	.4byte gUnknown_085A09C8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A0BC8 @ Sprite Data 1
	.4byte gUnknown_085A0C58 @ OAM
	.4byte gUnknown_085A0C60 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A1060 @ Sprite Data 1
	.4byte gUnknown_085A10A8 @ OAM
	.4byte gUnknown_085A10B0 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A11B0 @ Sprite Data 1
	.4byte gUnknown_085A121C @ OAM
	.4byte gUnknown_085A1224 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A1E24 @ Sprite Data 1
	.4byte gUnknown_085A1F44 @ OAM
	.4byte gUnknown_085A1F4C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A274C @ Sprite Data 1
	.4byte gUnknown_085A298C @ OAM
	.4byte gUnknown_085A2994 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A3994 @ Sprite Data 1
	.4byte gUnknown_085A3BD4 @ OAM
	.4byte gUnknown_085A3BDC @ Sprite Graphics

	.2byte 0x0078 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A4BDC @ Sprite Data 1
	.4byte gUnknown_085A5CBC @ OAM
	.4byte gUnknown_085A5CC4 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A74C4 @ Sprite Data 1
	.4byte gUnknown_085A7674 @ OAM
	.4byte gUnknown_085A767C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A827C @ Sprite Data 1
	.4byte gUnknown_085A842C @ OAM
	.4byte gUnknown_085A8434 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A8A34 @ Sprite Data 1
	.4byte gUnknown_085A8BE4 @ OAM
	.4byte gUnknown_085A8BEC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A91EC @ Sprite Data 1
	.4byte gUnknown_085A930C @ OAM
	.4byte gUnknown_085A9314 @ Sprite Graphics

	.2byte 0x000D @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085A9B14 @ Sprite Data 1
	.4byte gUnknown_085A9CE8 @ OAM
	.4byte gUnknown_085A9CF0 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AA070 @ Sprite Data 1
	.4byte gUnknown_085AA220 @ OAM
	.4byte gUnknown_085AA228 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AAE28 @ Sprite Data 1
	.4byte gUnknown_085AB068 @ OAM
	.4byte gUnknown_085AB070 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085ABF70 @ Sprite Data 1
	.4byte gUnknown_085AC1B0 @ OAM
	.4byte gUnknown_085AC1B8 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AD1B8 @ Sprite Data 1
	.4byte gUnknown_085AD224 @ OAM
	.4byte gUnknown_085AD22C @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AD3AC @ Sprite Data 1
	.4byte gUnknown_085AD67C @ OAM
	.4byte gUnknown_085AD684 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AE084 @ Sprite Data 1
	.4byte gUnknown_085AE0A8 @ OAM
	.4byte gUnknown_085AE0B0 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AE1B0 @ Sprite Data 1
	.4byte gUnknown_085AE510 @ OAM
	.4byte gUnknown_085AE518 @ Sprite Graphics

	.2byte 0x0018 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085AFD18 @ Sprite Data 1
	.4byte gUnknown_085B0078 @ OAM
	.4byte gUnknown_085B0080 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B1880 @ Sprite Data 1
	.4byte gUnknown_085B18A4 @ OAM
	.4byte gUnknown_085B18AC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B192C @ Sprite Data 1
	.4byte gUnknown_085B1A4C @ OAM
	.4byte gUnknown_085B1A54 @ Sprite Graphics

	.2byte 0x0024 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B2254 @ Sprite Data 1
	.4byte gUnknown_085B2764 @ OAM
	.4byte gUnknown_085B276C @ Sprite Graphics

	.2byte 0x0017 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B496C @ Sprite Data 1
	.4byte gUnknown_085B4CA8 @ OAM
	.4byte gUnknown_085B4CB0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B60B0 @ Sprite Data 1
	.4byte gUnknown_085B61D0 @ OAM
	.4byte gUnknown_085B61D8 @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B81D8 @ Sprite Data 1
	.4byte gUnknown_085B8364 @ OAM
	.4byte gUnknown_085B836C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B8E6C @ Sprite Data 1
	.4byte gUnknown_085B8F44 @ OAM
	.4byte gUnknown_085B8F4C @ Sprite Graphics

	.2byte 0x0057 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085B954C @ Sprite Data 1
	.4byte gUnknown_085BA188 @ OAM
	.4byte gUnknown_085BA190 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085BC190 @ Sprite Data 1
	.4byte gUnknown_085BC3D0 @ OAM
	.4byte gUnknown_085BC3D8 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085BD3D8 @ Sprite Data 1
	.4byte gUnknown_085BD588 @ OAM
	.4byte gUnknown_085BD590 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085BE190 @ Sprite Data 1
	.4byte gUnknown_085BE2B0 @ OAM
	.4byte gUnknown_085BE2B8 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085BF2B8 @ Sprite Data 1
	.4byte gUnknown_085BF3B4 @ OAM
	.4byte gUnknown_085BF3BC @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C01BC @ Sprite Data 1
	.4byte gUnknown_085C02DC @ OAM
	.4byte gUnknown_085C02E4 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C12E4 @ Sprite Data 1
	.4byte gUnknown_085C1404 @ OAM
	.4byte gUnknown_085C140C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C240C @ Sprite Data 1
	.4byte gUnknown_085C2454 @ OAM
	.4byte gUnknown_085C245C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C255C @ Sprite Data 1
	.4byte gUnknown_085C2580 @ OAM
	.4byte gUnknown_085C2588 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2608 @ Sprite Data 1
	.4byte gUnknown_085C262C @ OAM
	.4byte gUnknown_085C2634 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C26B4 @ Sprite Data 1
	.4byte gUnknown_085C26D8 @ OAM
	.4byte gUnknown_085C26E0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2760 @ Sprite Data 1
	.4byte gUnknown_085C2784 @ OAM
	.4byte gUnknown_085C278C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C280C @ Sprite Data 1
	.4byte gUnknown_085C2830 @ OAM
	.4byte gUnknown_085C2838 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2858 @ Sprite Data 1
	.4byte gUnknown_085C28A0 @ OAM
	.4byte gUnknown_085C28A8 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C29A8 @ Sprite Data 1
	.4byte gUnknown_085C29F0 @ OAM
	.4byte gUnknown_085C29F8 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2AF8 @ Sprite Data 1
	.4byte gUnknown_085C2BAC @ OAM
	.4byte gUnknown_085C2BB4 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2E34 @ Sprite Data 1
	.4byte gUnknown_085C2EE8 @ OAM
	.4byte gUnknown_085C2EF0 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C2F90 @ Sprite Data 1
	.4byte gUnknown_085C3218 @ OAM
	.4byte gUnknown_085C3220 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C7220 @ Sprite Data 1
	.4byte gUnknown_085C7244 @ OAM
	.4byte gUnknown_085C724C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C764C @ Sprite Data 1
	.4byte gUnknown_085C7670 @ OAM
	.4byte gUnknown_085C7678 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085C7A78 @ Sprite Data 1
	.4byte gUnknown_085C7D00 @ OAM
	.4byte gUnknown_085C7D08 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CBD08 @ Sprite Data 1
	.4byte gUnknown_085CBD2C @ OAM
	.4byte gUnknown_085CBD34 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CC134 @ Sprite Data 1
	.4byte gUnknown_085CC158 @ OAM
	.4byte gUnknown_085CC160 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CC960 @ Sprite Data 1
	.4byte gUnknown_085CC984 @ OAM
	.4byte gUnknown_085CC98C @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD18C @ Sprite Data 1
	.4byte gUnknown_085CD414 @ OAM
	.4byte gUnknown_085CD41C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CD81C @ Sprite Data 1
	.4byte gUnknown_085CD840 @ OAM
	.4byte gUnknown_085CD848 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE048 @ Sprite Data 1
	.4byte gUnknown_085CE06C @ OAM
	.4byte gUnknown_085CE074 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CE874 @ Sprite Data 1
	.4byte gUnknown_085CE898 @ OAM
	.4byte gUnknown_085CE8A0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF0A0 @ Sprite Data 1
	.4byte gUnknown_085CF0C4 @ OAM
	.4byte gUnknown_085CF0CC @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085CF8CC @ Sprite Data 1
	.4byte gUnknown_085CF9C8 @ OAM
	.4byte gUnknown_085CF9D0 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D00D0 @ Sprite Data 1
	.4byte gUnknown_085D01CC @ OAM
	.4byte gUnknown_085D01D4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D08D4 @ Sprite Data 1
	.4byte gUnknown_085D08F8 @ OAM
	.4byte gUnknown_085D0900 @ Sprite Graphics

	.2byte 0x0030 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D0A00 @ Sprite Data 1
	.4byte gfxMainLevelIconPicsOAM @ OAM
	.4byte gfxMainLevelIconPics4bpp @ Sprite Graphics

	.2byte 0x002A @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085D70C8 @ Sprite Data 1
	.4byte gUnknown_085D76B0 @ OAM
	.4byte gUnknown_085D76B8 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DCAB8 @ Sprite Data 1
	.4byte gUnknown_085DCB6C @ OAM
	.4byte gUnknown_085DCB74 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DCC34 @ Sprite Data 1
	.4byte gUnknown_085DCCC4 @ OAM
	.4byte gUnknown_085DCCCC @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DCECC @ Sprite Data 1
	.4byte gUnknown_085DCF80 @ OAM
	.4byte gUnknown_085DCF88 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DD108 @ Sprite Data 1
	.4byte gUnknown_085DD150 @ OAM
	.4byte gUnknown_085DD158 @ Sprite Graphics

	.2byte 0x0023 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DD258 @ Sprite Data 1
	.4byte gUnknown_085DD744 @ OAM
	.4byte gUnknown_085DD74C @ Sprite Graphics

	.2byte 0x001E @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DD9EC @ Sprite Data 1
	.4byte gUnknown_085DDE24 @ OAM
	.4byte gUnknown_085DDE2C @ Sprite Graphics

	.2byte 0x001E @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x0810 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DE06C @ Sprite Data 1
	.4byte gUnknown_085DE4A4 @ OAM
	.4byte gUnknown_085DE4AC @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DE92C @ Sprite Data 1
	.4byte gUnknown_085DEA94 @ OAM
	.4byte gUnknown_085DEA9C @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DED1C @ Sprite Data 1
	.4byte gUnknown_085DEFA4 @ OAM
	.4byte gUnknown_085DEFAC @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DF3AC @ Sprite Data 1
	.4byte gUnknown_085DF634 @ OAM
	.4byte gUnknown_085DF63C @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085DFA3C @ Sprite Data 1
	.4byte gUnknown_085DFCC4 @ OAM
	.4byte gUnknown_085DFCCC @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E00CC @ Sprite Data 1
	.4byte gUnknown_085E015C @ OAM
	.4byte gUnknown_085E0164 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0564 @ Sprite Data 1
	.4byte gUnknown_085E05F4 @ OAM
	.4byte gUnknown_085E05FC @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E063C @ Sprite Data 1
	.4byte gUnknown_085E0684 @ OAM
	.4byte gUnknown_085E068C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E078C @ Sprite Data 1
	.4byte gUnknown_085E07D4 @ OAM
	.4byte gUnknown_085E07DC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E08DC @ Sprite Data 1
	.4byte gUnknown_085E0900 @ OAM
	.4byte gUnknown_085E0908 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0988 @ Sprite Data 1
	.4byte gUnknown_085E09AC @ OAM
	.4byte gUnknown_085E09B4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0A34 @ Sprite Data 1
	.4byte gUnknown_085E0A7C @ OAM
	.4byte gUnknown_085E0A84 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0AC4 @ Sprite Data 1
	.4byte gUnknown_085E0B0C @ OAM
	.4byte gUnknown_085E0B14 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0C14 @ Sprite Data 1
	.4byte gUnknown_085E0C5C @ OAM
	.4byte gUnknown_085E0C64 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0D64 @ Sprite Data 1
	.4byte gUnknown_085E0D88 @ OAM
	.4byte gUnknown_085E0D90 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0E10 @ Sprite Data 1
	.4byte gUnknown_085E0E34 @ OAM
	.4byte gUnknown_085E0E3C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E0EBC @ Sprite Data 1
	.4byte gUnknown_085E0F04 @ OAM
	.4byte gUnknown_085E0F0C @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E100C @ Sprite Data 1
	.4byte gUnknown_085E1054 @ OAM
	.4byte gUnknown_085E105C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E115C @ Sprite Data 1
	.4byte gUnknown_085E1180 @ OAM
	.4byte gUnknown_085E1188 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E1208 @ Sprite Data 1
	.4byte gUnknown_085E122C @ OAM
	.4byte gUnknown_085E1234 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E12B4 @ Sprite Data 1
	.4byte gUnknown_085E1344 @ OAM
	.4byte gUnknown_085E134C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E1B4C @ Sprite Data 1
	.4byte gUnknown_085E1C24 @ OAM
	.4byte gUnknown_085E1C2C @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E1F2C @ Sprite Data 1
	.4byte gUnknown_085E2004 @ OAM
	.4byte gUnknown_085E200C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E230C @ Sprite Data 1
	.4byte gUnknown_085E2330 @ OAM
	.4byte gUnknown_085E2338 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2438 @ Sprite Data 1
	.4byte gUnknown_085E245C @ OAM
	.4byte gUnknown_085E2464 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E24A4 @ Sprite Data 1
	.4byte gUnknown_085E24C8 @ OAM
	.4byte gUnknown_085E24D0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2510 @ Sprite Data 1
	.4byte gUnknown_085E2534 @ OAM
	.4byte gUnknown_085E253C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E257C @ Sprite Data 1
	.4byte gUnknown_085E25A0 @ OAM
	.4byte gUnknown_085E25A8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E25E8 @ Sprite Data 1
	.4byte gUnknown_085E260C @ OAM
	.4byte gUnknown_085E2614 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2654 @ Sprite Data 1
	.4byte gUnknown_085E2678 @ OAM
	.4byte gUnknown_085E2680 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E26C0 @ Sprite Data 1
	.4byte gUnknown_085E26E4 @ OAM
	.4byte gUnknown_085E26EC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E272C @ Sprite Data 1
	.4byte gUnknown_085E2750 @ OAM
	.4byte gUnknown_085E2758 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2798 @ Sprite Data 1
	.4byte gUnknown_085E27BC @ OAM
	.4byte gUnknown_085E27C4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2804 @ Sprite Data 1
	.4byte gUnknown_085E2828 @ OAM
	.4byte gUnknown_085E2830 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2870 @ Sprite Data 1
	.4byte gUnknown_085E2AF8 @ OAM
	.4byte gUnknown_085E2B00 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E2F00 @ Sprite Data 1
	.4byte gUnknown_085E3188 @ OAM
	.4byte gUnknown_085E3190 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E3590 @ Sprite Data 1
	.4byte gUnknown_085E3818 @ OAM
	.4byte gUnknown_085E3820 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E8020 @ Sprite Data 1
	.4byte gUnknown_085E8044 @ OAM
	.4byte gUnknown_085E804C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E844C @ Sprite Data 1
	.4byte gUnknown_085E8470 @ OAM
	.4byte gUnknown_085E8478 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E8878 @ Sprite Data 1
	.4byte gUnknown_085E889C @ OAM
	.4byte gUnknown_085E88A4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E8CA4 @ Sprite Data 1
	.4byte gUnknown_085E8CC8 @ OAM
	.4byte gUnknown_085E8CD0 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085E90D0 @ Sprite Data 1
	.4byte gUnknown_085E9358 @ OAM
	.4byte gUnknown_085E9360 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EAB60 @ Sprite Data 1
	.4byte gUnknown_085EAB84 @ OAM
	.4byte gUnknown_085EAB8C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EAC8C @ Sprite Data 1
	.4byte gUnknown_085EAD1C @ OAM
	.4byte gUnknown_085EAD24 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EAF24 @ Sprite Data 1
	.4byte gUnknown_085EAF48 @ OAM
	.4byte gUnknown_085EAF50 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EAFD0 @ Sprite Data 1
	.4byte gUnknown_085EB0A8 @ OAM
	.4byte gUnknown_085EB0B0 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EB3B0 @ Sprite Data 1
	.4byte gUnknown_085EB488 @ OAM
	.4byte gUnknown_085EB490 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EB790 @ Sprite Data 1
	.4byte gUnknown_085EB820 @ OAM
	.4byte gUnknown_085EB828 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EBA28 @ Sprite Data 1
	.4byte gUnknown_085EBC68 @ OAM
	.4byte gUnknown_085EBC70 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085ECC70 @ Sprite Data 1
	.4byte gUnknown_085ECC94 @ OAM
	.4byte gUnknown_085ECC9C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085ED49C @ Sprite Data 1
	.4byte gUnknown_085ED4C0 @ OAM
	.4byte gUnknown_085ED4C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EDCC8 @ Sprite Data 1
	.4byte gUnknown_085EDCEC @ OAM
	.4byte gUnknown_085EDCF4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EE4F4 @ Sprite Data 1
	.4byte gUnknown_085EE518 @ OAM
	.4byte gUnknown_085EE520 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EED20 @ Sprite Data 1
	.4byte gUnknown_085EED44 @ OAM
	.4byte gUnknown_085EED4C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EF54C @ Sprite Data 1
	.4byte gUnknown_085EF570 @ OAM
	.4byte gUnknown_085EF578 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085EFD78 @ Sprite Data 1
	.4byte gUnknown_085EFD9C @ OAM
	.4byte gUnknown_085EFDA4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F05A4 @ Sprite Data 1
	.4byte gUnknown_085F05C8 @ OAM
	.4byte gUnknown_085F05D0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F0DD0 @ Sprite Data 1
	.4byte gUnknown_085F0DF4 @ OAM
	.4byte gUnknown_085F0DFC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F15FC @ Sprite Data 1
	.4byte gUnknown_085F1620 @ OAM
	.4byte gUnknown_085F1628 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F1E28 @ Sprite Data 1
	.4byte gUnknown_085F1E70 @ OAM
	.4byte gUnknown_085F1E78 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F2278 @ Sprite Data 1
	.4byte gUnknown_085F229C @ OAM
	.4byte gUnknown_085F22A4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F2324 @ Sprite Data 1
	.4byte gUnknown_085F2348 @ OAM
	.4byte gUnknown_085F2350 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F23D0 @ Sprite Data 1
	.4byte gUnknown_085F24A8 @ OAM
	.4byte gUnknown_085F24B0 @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F2AB0 @ Sprite Data 1
	.4byte gUnknown_085F2D80 @ OAM
	.4byte gUnknown_085F2D88 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F2F88 @ Sprite Data 1
	.4byte gUnknown_085F3138 @ OAM
	.4byte gUnknown_085F3140 @ Sprite Graphics

	.2byte 0x0017 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F3940 @ Sprite Data 1
	.4byte gUnknown_085F3C7C @ OAM
	.4byte gUnknown_085F3C84 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F4084 @ Sprite Data 1
	.4byte gUnknown_085F41A4 @ OAM
	.4byte gUnknown_085F41AC @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F49AC @ Sprite Data 1
	.4byte gfxTitleScreenPressStartOAM @ OAM
	.4byte gfxTitleScreenPressStart4bpp @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F4BD8 @ Sprite Data 1
	.4byte gUnknown_085F4CD4 @ OAM
	.4byte gUnknown_085F4CDC @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F4EDC @ Sprite Data 1
	.4byte gUnknown_085F4F6C @ OAM
	.4byte gUnknown_085F4F74 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F5174 @ Sprite Data 1
	.4byte gUnknown_085F5294 @ OAM
	.4byte gUnknown_085F529C @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F569C @ Sprite Data 1
	.4byte gUnknown_085F58DC @ OAM
	.4byte gUnknown_085F58E4 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F60E4 @ Sprite Data 1
	.4byte gUnknown_085F612C @ OAM
	.4byte gUnknown_085F6134 @ Sprite Graphics

	.2byte 0x000D @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F61B4 @ Sprite Data 1
	.4byte gUnknown_085F6388 @ OAM
	.4byte gUnknown_085F6390 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F6910 @ Sprite Data 1
	.4byte gUnknown_085F6B50 @ OAM
	.4byte gUnknown_085F6B58 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F7358 @ Sprite Data 1
	.4byte gUnknown_085F73E8 @ OAM
	.4byte gUnknown_085F73F0 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F77F0 @ Sprite Data 1
	.4byte gUnknown_085F79A0 @ OAM
	.4byte gUnknown_085F79A8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F85A8 @ Sprite Data 1
	.4byte gUnknown_085F86C8 @ OAM
	.4byte gUnknown_085F86D0 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085F8ED0 @ Sprite Data 1
	.4byte gUnknown_085F9110 @ OAM
	.4byte gUnknown_085F9118 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085FA118 @ Sprite Data 1
	.4byte gUnknown_085FA358 @ OAM
	.4byte gUnknown_085FA360 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085FB360 @ Sprite Data 1
	.4byte gfxFileLettersOAM @ OAM
	.4byte gfxFileLetters4bpp @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085FB554 @ Sprite Data 1
	.4byte gUnknown_085FB7DC @ OAM
	.4byte gUnknown_085FB7E4 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_085FEFE4 @ Sprite Data 1
	.4byte gUnknown_085FF26C @ OAM
	.4byte gUnknown_085FF274 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08600E74 @ Sprite Data 1
	.4byte gfxFileFrameNewGameBottomOAM @ OAM
	.4byte gfxFileFrameNewGameBottom4bpp @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08602D04 @ Sprite Data 1
	.4byte gfxFileFrameNewGameTopOAM @ OAM
	.4byte gfxFileFrameNewGameTop4bpp @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08606794 @ Sprite Data 1
	.4byte gUnknown_08606A1C @ OAM
	.4byte gUnknown_08606A24 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0860A224 @ Sprite Data 1
	.4byte gfxFileFrameNormalBottomOAM @ OAM
	.4byte gfxFileFrameNormalBottom4bpp @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0860C0B4 @ Sprite Data 1
	.4byte gfxFileFrameNormalTopOAM @ OAM
	.4byte gfxFileFrameNormalTop4bpp @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0860FB44 @ Sprite Data 1
	.4byte gUnknown_0860FDCC @ OAM
	.4byte gUnknown_0860FDD4 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086119D4 @ Sprite Data 1
	.4byte gUnknown_08611A40 @ OAM
	.4byte gUnknown_08611A48 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08612648 @ Sprite Data 1
	.4byte gfxFileInfoBoxOAM @ OAM
	.4byte gfxFileInfoBox4bpp @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08613EBC @ Sprite Data 1
	.4byte gfxEReaderLogoOAM @ OAM
	.4byte gfxEReaderLogo4bpp @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861430C @ Sprite Data 1
	.4byte gUnknown_08614330 @ OAM
	.4byte gUnknown_08614338 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08614738 @ Sprite Data 1
	.4byte gfxExpertOAM @ OAM
	.4byte gfxExpert4bpp @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08614B64 @ Sprite Data 1
	.4byte gfxOptionMenuEraseDataButtonsOAM @ OAM
	.4byte gfxOptionMenuEraseDataButtons4bpp @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0800 @ Y position
	.2byte 0x0040 @ Skip 4 pixels count?
	.2byte 0x0200 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08615BB4 @ Sprite Data 1
	.4byte gfxFileBackgroundOAM @ OAM
	.4byte gfxFileBackground4bpp @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08616C04 @ Sprite Data 1
	.4byte gUnknown_08616C28 @ OAM
	.4byte gUnknown_08616C30 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08617030 @ Sprite Data 1
	.4byte gUnknown_08617078 @ OAM
	.4byte gUnknown_08617080 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0040 @ Y position
	.2byte 0x0002 @ Skip 4 pixels count?
	.2byte 0x0010 @ Total tiles
	.2byte 0x1008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08617180 @ Sprite Data 1
	.4byte gUnknown_086172E8 @ OAM
	.4byte gUnknown_086172F0 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08617570 @ Sprite Data 1
	.4byte gfxPlusMainOAM @ OAM
	.4byte gfxPlusMain4bpp @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086176C0 @ Sprite Data 1
	.4byte gUnknown_08617828 @ OAM
	.4byte gUnknown_08617830 @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08617970 @ Sprite Data 1
	.4byte gUnknown_08617AFC @ OAM
	.4byte gUnknown_08617B04 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte sMMDKSpriteTemplate @ Sprite Data 1
	.4byte gfxMMDKOAM @ OAM
	.4byte gfxMMDK4bpp @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08617DB4 @ Sprite Data 1
	.4byte gUnknown_08617F1C @ OAM
	.4byte gUnknown_08617F24 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08618064 @ Sprite Data 1
	.4byte gUnknown_086180AC @ OAM
	.4byte gUnknown_086180B4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086181B4 @ Sprite Data 1
	.4byte gUnknown_086183F4 @ OAM
	.4byte gUnknown_086183FC @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086187FC @ Sprite Data 1
	.4byte gUnknown_086188F8 @ OAM
	.4byte gUnknown_08618900 @ Sprite Graphics

	.2byte 0x0007 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08619000 @ Sprite Data 1
	.4byte gUnknown_086190FC @ OAM
	.4byte gUnknown_08619104 @ Sprite Graphics

	.2byte 0x000A @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08619804 @ Sprite Data 1
	.4byte gUnknown_0861996C @ OAM
	.4byte gUnknown_08619974 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08619AB4 @ Sprite Data 1
	.4byte gUnknown_08619AD8 @ OAM
	.4byte gUnknown_08619AE0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08619B60 @ Sprite Data 1
	.4byte gUnknown_08619C80 @ OAM
	.4byte gUnknown_08619C88 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861AC88 @ Sprite Data 1
	.4byte gUnknown_0861ADA8 @ OAM
	.4byte gUnknown_0861ADB0 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861AE30 @ Sprite Data 1
	.4byte gUnknown_0861AF08 @ OAM
	.4byte gUnknown_0861AF10 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861B210 @ Sprite Data 1
	.4byte gUnknown_0861B2A0 @ OAM
	.4byte gUnknown_0861B2A8 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861B4A8 @ Sprite Data 1
	.4byte gUnknown_0861B55C @ OAM
	.4byte gUnknown_0861B564 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861B7E4 @ Sprite Data 1
	.4byte gUnknown_0861BA24 @ OAM
	.4byte gUnknown_0861BA2C @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861BE2C @ Sprite Data 1
	.4byte gUnknown_0861BEBC @ OAM
	.4byte gUnknown_0861BEC4 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861C0C4 @ Sprite Data 1
	.4byte gUnknown_0861C154 @ OAM
	.4byte gUnknown_0861C15C @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861C35C @ Sprite Data 1
	.4byte gUnknown_0861C47C @ OAM
	.4byte gUnknown_0861C484 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861C884 @ Sprite Data 1
	.4byte gUnknown_0861C95C @ OAM
	.4byte gUnknown_0861C964 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861CC64 @ Sprite Data 1
	.4byte gUnknown_0861CE14 @ OAM
	.4byte gUnknown_0861CE1C @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861D41C @ Sprite Data 1
	.4byte gUnknown_0861D488 @ OAM
	.4byte gUnknown_0861D490 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861D610 @ Sprite Data 1
	.4byte gUnknown_0861D67C @ OAM
	.4byte gUnknown_0861D684 @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861D804 @ Sprite Data 1
	.4byte gUnknown_0861DA68 @ OAM
	.4byte gUnknown_0861DA70 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0861DE70 @ Sprite Data 1
	.4byte gUnknown_0861E0B0 @ OAM
	.4byte gUnknown_0861E0B8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086200B8 @ Sprite Data 1
	.4byte gUnknown_086201D8 @ OAM
	.4byte gUnknown_086201E0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086211E0 @ Sprite Data 1
	.4byte gUnknown_08621300 @ OAM
	.4byte gUnknown_08621308 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08622308 @ Sprite Data 1
	.4byte gUnknown_08622548 @ OAM
	.4byte gUnknown_08622550 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08622950 @ Sprite Data 1
	.4byte gUnknown_08622974 @ OAM
	.4byte gUnknown_0862297C @ Sprite Graphics

	.2byte 0x0011 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086229FC @ Sprite Data 1
	.4byte gUnknown_08622C60 @ OAM
	.4byte gUnknown_08622C68 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08624E68 @ Sprite Data 1
	.4byte gUnknown_08624EF8 @ OAM
	.4byte gUnknown_08624F00 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08625100 @ Sprite Data 1
	.4byte gUnknown_08625340 @ OAM
	.4byte gUnknown_08625348 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08625748 @ Sprite Data 1
	.4byte gUnknown_086258F8 @ OAM
	.4byte gUnknown_08625900 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08625F00 @ Sprite Data 1
	.4byte gUnknown_08626140 @ OAM
	.4byte gUnknown_08626148 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08626948 @ Sprite Data 1
	.4byte gUnknown_086269D8 @ OAM
	.4byte gUnknown_086269E0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08626BE0 @ Sprite Data 1
	.4byte gUnknown_08626D00 @ OAM
	.4byte gUnknown_08626D08 @ Sprite Graphics

	.2byte 0x000E @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08627108 @ Sprite Data 1
	.4byte gUnknown_08627300 @ OAM
	.4byte gUnknown_08627308 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08627588 @ Sprite Data 1
	.4byte gUnknown_08627660 @ OAM
	.4byte gUnknown_08627668 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08627968 @ Sprite Data 1
	.4byte gUnknown_08627BA8 @ OAM
	.4byte gUnknown_08627BB0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08627FB0 @ Sprite Data 1
	.4byte gUnknown_086280D0 @ OAM
	.4byte gUnknown_086280D8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08628358 @ Sprite Data 1
	.4byte gUnknown_086283E8 @ OAM
	.4byte gUnknown_086283F0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086285F0 @ Sprite Data 1
	.4byte gUnknown_08628710 @ OAM
	.4byte gUnknown_08628718 @ Sprite Graphics

	.2byte 0x000B @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08628B18 @ Sprite Data 1
	.4byte gUnknown_08628CA4 @ OAM
	.4byte gUnknown_08628CAC @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862922C @ Sprite Data 1
	.4byte gUnknown_08629304 @ OAM
	.4byte gUnknown_0862930C @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862960C @ Sprite Data 1
	.4byte gUnknown_086297BC @ OAM
	.4byte gUnknown_086297C4 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08629DC4 @ Sprite Data 1
	.4byte gUnknown_08629EE4 @ OAM
	.4byte gUnknown_08629EEC @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0020 @ Y position
	.2byte 0x0001 @ Skip 4 pixels count?
	.2byte 0x0008 @ Total tiles
	.2byte 0x0808 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08629FAC @ Sprite Data 1
	.4byte gUnknown_0862A060 @ OAM
	.4byte gUnknown_0862A068 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862A108 @ Sprite Data 1
	.4byte gUnknown_0862A348 @ OAM
	.4byte gUnknown_0862A350 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862A750 @ Sprite Data 1
	.4byte gUnknown_0862A7E0 @ OAM
	.4byte gUnknown_0862A7E8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862A9E8 @ Sprite Data 1
	.4byte gUnknown_0862AB08 @ OAM
	.4byte gUnknown_0862AB10 @ Sprite Graphics

	.2byte 0x0006 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862AF10 @ Sprite Data 1
	.4byte gUnknown_0862AFE8 @ OAM
	.4byte gUnknown_0862AFF0 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862B2F0 @ Sprite Data 1
	.4byte gUnknown_0862B4A0 @ OAM
	.4byte gUnknown_0862B4A8 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862BAA8 @ Sprite Data 1
	.4byte gUnknown_0862BBC8 @ OAM
	.4byte gUnknown_0862BBD0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862CBD0 @ Sprite Data 1
	.4byte gUnknown_0862CCF0 @ OAM
	.4byte gUnknown_0862CCF8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862D0F8 @ Sprite Data 1
	.4byte gUnknown_0862D11C @ OAM
	.4byte gUnknown_0862D124 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862D1A4 @ Sprite Data 1
	.4byte gUnknown_0862D1C8 @ OAM
	.4byte gUnknown_0862D1D0 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862D250 @ Sprite Data 1
	.4byte gUnknown_0862D2BC @ OAM
	.4byte gUnknown_0862D2C4 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862D444 @ Sprite Data 1
	.4byte gUnknown_0862D4B0 @ OAM
	.4byte gUnknown_0862D4B8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862D638 @ Sprite Data 1
	.4byte gUnknown_0862D65C @ OAM
	.4byte gUnknown_0862D664 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862D864 @ Sprite Data 1
	.4byte gUnknown_0862D8F4 @ OAM
	.4byte gUnknown_0862D8FC @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862DCFC @ Sprite Data 1
	.4byte gUnknown_0862DD8C @ OAM
	.4byte gUnknown_0862DD94 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862E194 @ Sprite Data 1
	.4byte gUnknown_0862E2B4 @ OAM
	.4byte gUnknown_0862E2BC @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862E4BC @ Sprite Data 1
	.4byte gUnknown_0862E54C @ OAM
	.4byte gUnknown_0862E554 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862E754 @ Sprite Data 1
	.4byte gUnknown_0862E778 @ OAM
	.4byte gUnknown_0862E780 @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862E980 @ Sprite Data 1
	.4byte gUnknown_0862E9C8 @ OAM
	.4byte gUnknown_0862E9D0 @ Sprite Graphics

	.2byte 0x001E @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862EBD0 @ Sprite Data 1
	.4byte gUnknown_0862F008 @ OAM
	.4byte gUnknown_0862F010 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0862FC10 @ Sprite Data 1
	.4byte gUnknown_0862FE50 @ OAM
	.4byte gUnknown_0862FE58 @ Sprite Graphics

	.2byte 0x0012 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0863FE58 @ Sprite Data 1
	.4byte gUnknown_086400E0 @ OAM
	.4byte gUnknown_086400E8 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08640DE8 @ Sprite Data 1
	.4byte gUnknown_08640F2C @ OAM
	.4byte gUnknown_08640F34 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08642134 @ Sprite Data 1
	.4byte gUnknown_086421E8 @ OAM
	.4byte gUnknown_086421F0 @ Sprite Graphics

	.2byte 0x0009 @ X Position
	.2byte 0x1000 @ Y position
	.2byte 0x0080 @ Skip 4 pixels count?
	.2byte 0x0400 @ Total tiles
	.2byte 0x4040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08642BF0 @ Sprite Data 1
	.4byte gUnknown_08642D34 @ OAM
	.4byte gUnknown_08642D3C @ Sprite Graphics

	.2byte 0x000F @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0864BD3C @ Sprite Data 1
	.4byte gUnknown_0864BF58 @ OAM
	.4byte gUnknown_0864BF60 @ Sprite Graphics

	.2byte 0x0014 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0864CC60 @ Sprite Data 1
	.4byte gUnknown_0864CF30 @ OAM
	.4byte gUnknown_0864CF38 @ Sprite Graphics

	.2byte 0x000C @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0864D138 @ Sprite Data 1
	.4byte gUnknown_0864D2E8 @ OAM
	.4byte gUnknown_0864D2F0 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0864DAF0 @ Sprite Data 1
	.4byte gUnknown_0864DC10 @ OAM
	.4byte gUnknown_0864DC18 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0864EC18 @ Sprite Data 1
	.4byte gUnknown_0864ED38 @ OAM
	.4byte gUnknown_0864ED40 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0864FD40 @ Sprite Data 1
	.4byte gUnknown_0864FE60 @ OAM
	.4byte gUnknown_0864FE68 @ Sprite Graphics

	.2byte 0x0008 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08650E68 @ Sprite Data 1
	.4byte gUnknown_08650F88 @ OAM
	.4byte gUnknown_08650F90 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08651F90 @ Sprite Data 1
	.4byte gUnknown_08651FFC @ OAM
	.4byte gUnknown_08652004 @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08652184 @ Sprite Data 1
	.4byte gUnknown_086521F0 @ OAM
	.4byte gUnknown_086521F8 @ Sprite Graphics

	.2byte 0x001A @ X Position
	.2byte 0x0400 @ Y position
	.2byte 0x0020 @ Skip 4 pixels count?
	.2byte 0x0100 @ Total tiles
	.2byte 0x2040 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08652378 @ Sprite Data 1
	.4byte gUnknown_08652720 @ OAM
	.4byte gUnknown_08652728 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08654B28 @ Sprite Data 1
	.4byte gUnknown_08654BDC @ OAM
	.4byte gUnknown_08654BE4 @ Sprite Graphics

	.2byte 0x0010 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086553E4 @ Sprite Data 1
	.4byte gUnknown_08655624 @ OAM
	.4byte gUnknown_0865562C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08656A2C @ Sprite Data 1
	.4byte gUnknown_08656A50 @ OAM
	.4byte gUnknown_08656A58 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08656C58 @ Sprite Data 1
	.4byte gUnknown_08656C7C @ OAM
	.4byte gUnknown_08656C84 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08656E84 @ Sprite Data 1
	.4byte gUnknown_08656EA8 @ OAM
	.4byte gUnknown_08656EB0 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0200 @ Y position
	.2byte 0x0010 @ Skip 4 pixels count?
	.2byte 0x0080 @ Total tiles
	.2byte 0x2020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086570B0 @ Sprite Data 1
	.4byte gUnknown_086570D4 @ OAM
	.4byte gUnknown_086570DC @ Sprite Graphics

	.2byte 0x0002 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086572DC @ Sprite Data 1
	.4byte gUnknown_08657324 @ OAM
	.4byte gUnknown_0865732C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0865742C @ Sprite Data 1
	.4byte gUnknown_08657450 @ OAM
	.4byte gUnknown_08657458 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086574D8 @ Sprite Data 1
	.4byte gUnknown_086574FC @ OAM
	.4byte gUnknown_08657504 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08657584 @ Sprite Data 1
	.4byte gUnknown_086575A8 @ OAM
	.4byte gUnknown_086575B0 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0100 @ Y position
	.2byte 0x0008 @ Skip 4 pixels count?
	.2byte 0x0040 @ Total tiles
	.2byte 0x1020 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08657630 @ Sprite Data 1
	.4byte gUnknown_086576C0 @ OAM
	.4byte gUnknown_086576C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08657AC8 @ Sprite Data 1
	.4byte gUnknown_08657AEC @ OAM
	.4byte gUnknown_08657AF4 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08657B74 @ Sprite Data 1
	.4byte gUnknown_08657B98 @ OAM
	.4byte gUnknown_08657BA0 @ Sprite Graphics

	.2byte 0x0005 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08657C20 @ Sprite Data 1
	.4byte gUnknown_08657CD4 @ OAM
	.4byte gUnknown_08657CDC @ Sprite Graphics

	.2byte 0x0003 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08657F5C @ Sprite Data 1
	.4byte gUnknown_08657FC8 @ OAM
	.4byte gUnknown_08657FD0 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08658150 @ Sprite Data 1
	.4byte gUnknown_086581E0 @ OAM
	.4byte gUnknown_086581E8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x1010 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08658268 @ Sprite Data 1
	.4byte gUnknown_0865828C @ OAM
	.4byte gUnknown_08658294 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08658314 @ Sprite Data 1
	.4byte gUnknown_086583A4 @ OAM
	.4byte gUnknown_086583AC @ Sprite Graphics

	.2byte 0x0015 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086585AC @ Sprite Data 1
	.4byte gUnknown_086588A0 @ OAM
	.4byte gUnknown_086588A8 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08658C28 @ Sprite Data 1
	.4byte gUnknown_08658CB8 @ OAM
	.4byte gUnknown_08658CC0 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08658EC0 @ Sprite Data 1
	.4byte gUnknown_08658F50 @ OAM
	.4byte gUnknown_08658F58 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08658FD8 @ Sprite Data 1
	.4byte gUnknown_08658FFC @ OAM
	.4byte gUnknown_08659004 @ Sprite Graphics

	.2byte 0x0004 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x2008 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08659084 @ Sprite Data 1
	.4byte gUnknown_08659114 @ OAM
	.4byte gUnknown_0865911C @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_0865919C @ Sprite Data 1
	.4byte gUnknown_086591C0 @ OAM
	.4byte gUnknown_086591C8 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_08659248 @ Sprite Data 1
	.4byte gUnknown_0865926C @ OAM
	.4byte gUnknown_08659274 @ Sprite Graphics

	.2byte 0x0001 @ X Position
	.2byte 0x0080 @ Y position
	.2byte 0x0004 @ Skip 4 pixels count?
	.2byte 0x0020 @ Total tiles
	.2byte 0x0820 @ Graphics Size in Bytes
	.2byte 0x0000 @ unused
	.4byte gUnknown_086592F4 @ Sprite Data 1
	.4byte gUnknown_08659318 @ OAM
	.4byte gUnknown_08659320 @ Sprite Graphics


	.GLOBAL gUnknown_0865F610
gUnknown_0865F610:
	.INCBIN "baserom.gba", 0x65F610, 0x65F700-0x65F610

	.GLOBAL gUnknown_0865F700
gUnknown_0865F700:
	.INCBIN "baserom.gba", 0x65F700, 0x65F7F0-0x65F700

	.GLOBAL gUnknown_0865F7F0
gUnknown_0865F7F0:
	.INCBIN "baserom.gba", 0x65F7F0, 0x65F8E0-0x65F7F0

	.GLOBAL gUnknown_0865F8E0
gUnknown_0865F8E0:
	.INCBIN "baserom.gba", 0x65F8E0, 0x65F9D0-0x65F8E0

	.GLOBAL gUnknown_0865F9D0
gUnknown_0865F9D0:
	.INCBIN "baserom.gba", 0x65F9D0, 0x65FAC0-0x65F9D0

	.GLOBAL gUnknown_0865FAC0
gUnknown_0865FAC0:
	.INCBIN "baserom.gba", 0x65FAC0, 0x65FBB0-0x65FAC0

	.GLOBAL gUnknown_0865FBB0
gUnknown_0865FBB0:
	.INCBIN "baserom.gba", 0x65FBB0, 0x65FCA0-0x65FBB0

	.GLOBAL gUnknown_0865FCA0
gUnknown_0865FCA0:
	.INCBIN "baserom.gba", 0x65FCA0, 0x65FD90-0x65FCA0

	.GLOBAL gUnknown_0865FD90
gUnknown_0865FD90:
	.INCBIN "baserom.gba", 0x65FD90, 0x65FE80-0x65FD90

	.GLOBAL gUnknown_0865FE80
gUnknown_0865FE80:
	.INCBIN "baserom.gba", 0x65FE80, 0x6600D8-0x65FE80

	.GLOBAL gUnknown_086600D8
gUnknown_086600D8:
	.INCBIN "baserom.gba", 0x6600D8, 0x660118-0x6600D8

	.GLOBAL gUnknown_08660118
gUnknown_08660118:
	.INCBIN "baserom.gba", 0x660118, 0x660188-0x660118

	.GLOBAL gUnknown_08660188
gUnknown_08660188:
	.INCBIN "baserom.gba", 0x660188, 0x660228-0x660188

	.GLOBAL gUnknown_08660228
gUnknown_08660228:
	.INCBIN "baserom.gba", 0x660228, 0x6602C0-0x660228

	.GLOBAL gUnknown_086602C0
gUnknown_086602C0:
	.INCBIN "baserom.gba", 0x6602C0, 0x660310-0x6602C0

	.GLOBAL gUnknown_08660310
gUnknown_08660310:
	.INCBIN "baserom.gba", 0x660310, 0x660380-0x660310

	.GLOBAL gUnknown_08660380
gUnknown_08660380:
	.INCBIN "baserom.gba", 0x660380, 0x660420-0x660380

	.GLOBAL gUnknown_08660420
gUnknown_08660420:
	.INCBIN "baserom.gba", 0x660420, 0x6604B8-0x660420

	.GLOBAL gUnknown_086604B8
gUnknown_086604B8:
	.INCBIN "baserom.gba", 0x6604B8, 0x660A68-0x6604B8

	.GLOBAL gUnknown_08660A68
gUnknown_08660A68:
	.INCBIN "baserom.gba", 0x660A68, 0x660E4C-0x660A68

	.GLOBAL gUnknown_08660E4C
gUnknown_08660E4C:
	.INCBIN "baserom.gba", 0x660E4C, 0x660E8C-0x660E4C

	.GLOBAL gUnknown_08660E8C
gUnknown_08660E8C:
	.INCBIN "baserom.gba", 0x660E8C, 0x660EA8-0x660E8C

	.GLOBAL gUnknown_08660EA8
gUnknown_08660EA8:
	.INCBIN "baserom.gba", 0x660EA8, 0x661378-0x660EA8

	.GLOBAL gUnknown_08661378
gUnknown_08661378:
	.INCBIN "baserom.gba", 0x661378, 0x6613B8-0x661378

	.GLOBAL gUnknown_086613B8
gUnknown_086613B8:
	.INCBIN "baserom.gba", 0x6613B8, 0x661EB8-0x6613B8

	.GLOBAL gUnknown_08661EB8
gUnknown_08661EB8:
	.INCBIN "baserom.gba", 0x661EB8, 0x6622A8-0x661EB8

	.GLOBAL gUnknown_086622A8
gUnknown_086622A8:
	.INCBIN "baserom.gba", 0x6622A8, 0x662778-0x6622A8

	.GLOBAL gUnknown_08662778
gUnknown_08662778:
	.INCBIN "baserom.gba", 0x662778, 0x662A00-0x662778

	.GLOBAL gUnknown_08662A00
gUnknown_08662A00:
	.INCBIN "baserom.gba", 0x662A00, 0x662C30-0x662A00

	.GLOBAL gUnknown_08662C30
gUnknown_08662C30:
	.INCBIN "baserom.gba", 0x662C30, 0x662C44-0x662C30

	.GLOBAL gUnknown_08662C44
gUnknown_08662C44:
	.INCBIN "baserom.gba", 0x662C44, 0x662C5C-0x662C44

	.GLOBAL gUnknown_08662C5C
gUnknown_08662C5C:
	.INCBIN "baserom.gba", 0x662C5C, 0x662C7C-0x662C5C

	.GLOBAL gUnknown_08662C7C
gUnknown_08662C7C:
	.INCBIN "baserom.gba", 0x662C7C, 0x662CA4-0x662C7C

	.GLOBAL gUnknown_08662CA4
gUnknown_08662CA4:
	.INCBIN "baserom.gba", 0x662CA4, 0x663174-0x662CA4

	.GLOBAL gUnknown_08663174
gUnknown_08663174:
	.INCBIN "baserom.gba", 0x663174, 0x663444-0x663174

	.GLOBAL gUnknown_08663444
gUnknown_08663444:
	.INCBIN "baserom.gba", 0x663444, 0x663464-0x663444

	.GLOBAL gUnknown_08663464
gUnknown_08663464:
	.INCBIN "baserom.gba", 0x663464, 0x663488-0x663464

	.GLOBAL gUnknown_08663488
gUnknown_08663488:
	.INCBIN "baserom.gba", 0x663488, 0x663568-0x663488

	.GLOBAL gUnknown_08663568
gUnknown_08663568:
	.INCBIN "baserom.gba", 0x663568, 0x663648-0x663568

	.GLOBAL gUnknown_08663648
gUnknown_08663648:
	.INCBIN "baserom.gba", 0x663648, 0x663728-0x663648

	.GLOBAL gUnknown_08663728
gUnknown_08663728:
	.INCBIN "baserom.gba", 0x663728, 0x663734-0x663728

	.GLOBAL gUnknown_08663734
gUnknown_08663734:
	.INCBIN "baserom.gba", 0x663734, 0x663748-0x663734

	.GLOBAL gUnknown_08663748
gUnknown_08663748:
	.INCBIN "baserom.gba", 0x663748, 0x663768-0x663748

	.GLOBAL gUnknown_08663768
gUnknown_08663768:
	.INCBIN "baserom.gba", 0x663768, 0x6637A0-0x663768

	.GLOBAL gUnknown_086637A0
gUnknown_086637A0:
	.INCBIN "baserom.gba", 0x6637A0, 0x663C70-0x6637A0

	.GLOBAL gUnknown_08663C70
gUnknown_08663C70:
	.4byte 0x00B40107

	.GLOBAL gUnknown_08663C74
gUnknown_08663C74:
	.4byte 0x00B40107

	.GLOBAL gUnknown_08663C78
gUnknown_08663C78:
	.4byte 0x00B40107

	.GLOBAL gUnknown_08663C7C
gUnknown_08663C7C:
	.4byte 0x00B40107
	
	.GLOBAL gUnknown_08663C80
gUnknown_08663C80:
	.4byte 0xFED4FED4

	.GLOBAL gUnknown_08663C84
gUnknown_08663C84:
	.4byte 0x00000000

	.GLOBAL gUnknown_08663C88
gUnknown_08663C88:
	.4byte gUnknown_03001C50
	.4byte gUnknown_0815FE34
	.4byte gUnknown_0815FFE4
	.4byte gUnknown_0815FFEC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080636A4
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08167938
	.4byte gUnknown_0816795C
	.4byte gUnknown_08167964
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062844
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08168164
	.4byte gUnknown_08168554
	.4byte gUnknown_0816855C
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062844
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_0815FE34
	.4byte gUnknown_0815FFE4
	.4byte gUnknown_0815FFEC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062844	
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_0815FE34
	.4byte gUnknown_0815FFE4
	.4byte gUnknown_0815FFEC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0C
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063708
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08230EDC
	.4byte gUnknown_082310D4
	.4byte gUnknown_082310DC
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x0E
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063784
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_081BD0A8
	.4byte gUnknown_081BD1EC
	.4byte gUnknown_081BD1F4
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x09
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063818
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_0823F2DC
	.4byte gUnknown_0823F3FC
	.4byte gUnknown_0823F404
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x08
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063860	
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_0823F2DC
	.4byte gUnknown_0823F3FC
	.4byte gUnknown_0823F404
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x08
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063860
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08167938
	.4byte gUnknown_0816795C
	.4byte gUnknown_08167964
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063960
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08168164
	.4byte gUnknown_08168554
	.4byte gUnknown_0816855C
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080636A0
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08167938
	.4byte gUnknown_0816795C
	.4byte gUnknown_08167964
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x01
	.byte 0x40
	.byte 0x20
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063990
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08168164
	.4byte gUnknown_08168554
	.4byte gUnknown_0816855C
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x1C
	.byte 0x40
	.byte 0x40
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080639CC
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08150B48
	.4byte gUnknown_08150BD8
	.4byte gUnknown_08150BE0
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x04
	.byte 0x20
	.byte 0x40
	.4byte 0x00000200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062B94
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08152BE0
	.4byte gfxDKHurtOAM
	.4byte gfxDKHurt8bpp
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x28
	.byte 0x40
	.byte 0x20
	.4byte 0x00000200
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062B94
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_0813A120
	.4byte gUnknown_0813A168
	.4byte gUnknown_0813A170
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x02
	.byte 0x20
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_0813B170
	.4byte gUnknown_0813B3B0
	.4byte gUnknown_0813B3B8
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x10
	.byte 0x40
	.byte 0x20
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08224190
	.4byte gUnknown_08224514
	.4byte gUnknown_0822451C
	.2byte 0x0800
	.2byte 0x0200
	.byte 0x40
	.byte 0x19
	.byte 0x40
	.byte 0x20
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08227D1C
	.4byte gUnknown_08227D40
	.4byte gUnknown_08227D48
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x01
	.byte 0x40
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08062C48
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08228D48
	.4byte gUnknown_08228ED4
	.4byte gUnknown_08228EDC
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x0B
	.byte 0x40
	.byte 0x40
	.4byte 0x00000202
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_080638E0
	
	.4byte gUnknown_03001C50
	.4byte gUnknown_08251EC0
	.4byte gUnknown_08251FE0
	.4byte gUnknown_08251FE8
	.2byte 0x1000
	.2byte 0x0400
	.byte 0x80
	.byte 0x08
	.byte 0x40
	.byte 0x40
	.4byte 0x00020202
	.4byte gUnknown_08663C80
	.4byte gUnknown_08663C84
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte sub_0806369C
	.4byte sub_08063928

	.GLOBAL gUnknown_08664120
gUnknown_08664120:
	.INCBIN "baserom.gba", 0x664120, 0x6641E8-0x664120

	.GLOBAL gUnknown_086641E8
gUnknown_086641E8:
	.INCBIN "baserom.gba", 0x6641E8, 0x664610-0x6641E8

	.GLOBAL gUnknown_08664610
gUnknown_08664610:
	.INCBIN "baserom.gba", 0x664610, 0x664698-0x664610

	.GLOBAL gUnknown_08664698
gUnknown_08664698:
	.INCBIN "baserom.gba", 0x664698, 0x6647BC-0x664698

	.GLOBAL gUnknown_086647BC
gUnknown_086647BC:
	.INCBIN "baserom.gba", 0x6647BC, 0x6648A8-0x6647BC

	.GLOBAL gUnknown_086648A8
gUnknown_086648A8:
	.INCBIN "baserom.gba", 0x6648A8, 0x664A68-0x6648A8

	.GLOBAL gUnknown_08664A68
gUnknown_08664A68:
	.INCBIN "baserom.gba", 0x664A68, 0x664C28-0x664A68

	.GLOBAL gUnknown_08664C28
gUnknown_08664C28:
	.INCBIN "baserom.gba", 0x664C28, 0x664DE8-0x664C28

	.GLOBAL gUnknown_08664DE8
gUnknown_08664DE8:
	.INCBIN "baserom.gba", 0x664DE8, 0x664E90-0x664DE8

	.GLOBAL gUnknown_08664E90
gUnknown_08664E90:
	.INCBIN "baserom.gba", 0x664E90, 0x664F38-0x664E90

	.GLOBAL gUnknown_08664F38
gUnknown_08664F38:
	.INCBIN "baserom.gba", 0x664F38, 0x664FE4-0x664F38

	.GLOBAL gUnknown_08664FE4
gUnknown_08664FE4:
	.INCBIN "baserom.gba", 0x664FE4, 0x66508C-0x664FE4

	.GLOBAL gUnknown_0866508C
gUnknown_0866508C:
	.INCBIN "baserom.gba", 0x66508C, 0x6651C4-0x66508C

	.GLOBAL gUnknown_086651C4
gUnknown_086651C4:
	.INCBIN "baserom.gba", 0x6651C4, 0x6656FC-0x6651C4

	.GLOBAL gUnknown_086656FC
gUnknown_086656FC:
	.INCBIN "baserom.gba", 0x6656FC, 0x665844-0x6656FC

	.GLOBAL gUnknown_08665844
gUnknown_08665844:
	.INCBIN "baserom.gba", 0x665844, 0x66587C-0x665844

	.GLOBAL gUnknown_0866587C
gUnknown_0866587C:
	.INCBIN "baserom.gba", 0x66587C, 0x665886-0x66587C

	.GLOBAL gUnknown_08665886
gUnknown_08665886:
	.INCBIN "baserom.gba", 0x665886, 0x665968-0x665886

	.GLOBAL gUnknown_08665968
gUnknown_08665968:
	.INCBIN "baserom.gba", 0x665968, 0x6660E0-0x665968

	.GLOBAL gUnknown_086660E0
gUnknown_086660E0:
	.INCBIN "baserom.gba", 0x6660E0, 0x668D38-0x6660E0

	.GLOBAL gUnknown_08668D38
gUnknown_08668D38:
	.INCBIN "baserom.gba", 0x668D38, 0x6691BC-0x668D38

	.GLOBAL gUnknown_086691BC
gUnknown_086691BC:
	.INCBIN "baserom.gba", 0x6691BC, 0x66945C-0x6691BC

	.GLOBAL gUnknown_0866945C
gUnknown_0866945C:
	.INCBIN "baserom.gba", 0x66945C, 0x6694D4-0x66945C

	.GLOBAL gUnknown_086694D4
gUnknown_086694D4:
	.INCBIN "baserom.gba", 0x6694D4, 0x66954C-0x6694D4

	.GLOBAL gUnknown_0866954C
gUnknown_0866954C:
	.INCBIN "baserom.gba", 0x66954C, 0x66958C-0x66954C

	.GLOBAL gUnknown_0866958C
gUnknown_0866958C:
	.INCBIN "baserom.gba", 0x66958C, 0x6695D8-0x66958C

	.GLOBAL gUnknown_086695D8
gUnknown_086695D8:
	.INCBIN "baserom.gba", 0x6695D8, 0x669A80-0x6695D8

	.GLOBAL gUnknown_08669A80
gUnknown_08669A80:
	.INCBIN "baserom.gba", 0x669A80, 0x669D6C-0x669A80

	.GLOBAL gUnknown_08669D6C
gUnknown_08669D6C:
	.INCBIN "baserom.gba", 0x669D6C, 0x669DAC-0x669D6C

	.GLOBAL gUnknown_08669DAC
gUnknown_08669DAC:
	.INCBIN "baserom.gba", 0x669DAC, 0x706FC8-0x669DAC

	.GLOBAL gUnknown_08706FC8
gUnknown_08706FC8:
	.INCBIN "baserom.gba", 0x706FC8, 0x707E30-0x706FC8

	.GLOBAL gUnknown_08707E30
gUnknown_08707E30:
	.INCBIN "baserom.gba", 0x707E30, 0x7140B8-0x707E30

	.GLOBAL gUnknown_087140B8
gUnknown_087140B8:
	.INCBIN "baserom.gba", 0x7140B8, 0x723440-0x7140B8

	.GLOBAL gUnknown_08723440
gUnknown_08723440:
	.INCBIN "baserom.gba", 0x723440, 0x7326E8-0x723440

	.GLOBAL gUnknown_087326E8
gUnknown_087326E8:
	.INCBIN "baserom.gba", 0x7326E8, 0x75A154-0x7326E8

	.GLOBAL gUnknown_0875A154
gUnknown_0875A154:
	.INCBIN "baserom.gba", 0x75A154, 0x771D24-0x75A154

	.GLOBAL gUnknown_08771D24
gUnknown_08771D24:
	.INCBIN "baserom.gba", 0x771D24, 0x796104-0x771D24

	.GLOBAL gUnknown_08796104
gUnknown_08796104:
	.INCBIN "baserom.gba", 0x796104, 0x7AC8DC-0x796104

	.GLOBAL gUnknown_087AC8DC
gUnknown_087AC8DC:
	.INCBIN "baserom.gba", 0x7AC8DC, 0x7AFAA0-0x7AC8DC

	.GLOBAL gUnknown_087AFAA0
gUnknown_087AFAA0:
	.INCBIN "baserom.gba", 0x7AFAA0, 0x7AFC08-0x7AFAA0
	
	.GLOBAL gDKPlusLeftovers
gDKPlusLeftovers:
	.INCBIN "assets/unused/DKPlusLeftoverData.bin"
	
	.GLOBAL gMainMenuData
gMainMenuData:
	.INCBIN "assets/menu/MainMenuData.bin"

	.GLOBAL gLevelSelectData
gLevelSelectData:
	.INCBIN "assets/level_select/LevelSelectData.bin"
	
	.GLOBAL gLevelSelectWorldOneBG 	
gLevelSelectWorldOneBG:
	.INCBIN "assets/level_select/LevelSelectWorldOneBG.bin"

	.GLOBAL gLevelSelectWorldTwoBG 	
gLevelSelectWorldTwoBG:
	.INCBIN "assets/level_select/LevelSelectWorldTwoBG.bin"	
	
	.GLOBAL gLevelSelectWorldThreeBG 	
gLevelSelectWorldThreeBG:
	.INCBIN "assets/level_select/LevelSelectWorldThreeBG.bin"

	.GLOBAL gLevelSelectWorldFourBG 	
gLevelSelectWorldFourBG:
	.INCBIN "assets/level_select/LevelSelectWorldFourBG.bin"

	.GLOBAL gLevelSelectWorldFiveBG 	
gLevelSelectWorldFiveBG:
	.INCBIN "assets/level_select/LevelSelectWorldFiveBG.bin"

	.GLOBAL gLevelSelectWorldSixBG 	
gLevelSelectWorldSixBG:
	.INCBIN "assets/level_select/LevelSelectWorldSixBG.bin"
	
	.GLOBAL gLevelSelectDKBossBG
gLevelSelectDKBossBG:
	.INCBIN "assets/level_select/LevelSelectDKBossBG.bin"

	.GLOBAL gLevelSelectPlusData
gLevelSelectPlusData:
	.INCBIN "assets/level_select_plus/LevelSelectPlusData.bin"
	
	.GLOBAL gLevelSelectWorldOnePlusBG
gLevelSelectWorldOnePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldOnePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldTwoPlusBG
gLevelSelectWorldTwoPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldTwoPlusBG.bin"
	
	.GLOBAL gLevelSelectWorldThreePlusBG
gLevelSelectWorldThreePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldThreePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldFourPlusBG
gLevelSelectWorldFourPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldFourPlusBG.bin"
	
	.GLOBAL gLevelSelectWorldFivePlusBG
gLevelSelectWorldFivePlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldFivePlusBG.bin"
	
	.GLOBAL gLevelSelectWorldSixPlusBG
gLevelSelectWorldSixPlusBG:
	.INCBIN "assets/level_select_plus/LevelSelectWorldSixPlusBG.bin"

	.GLOBAL gLevelSelectDKPlusBossBG
gLevelSelectDKPlusBossBG:
	.INCBIN "assets/level_select_plus/LevelSelectDKPlusBossBG.bin"

	.GLOBAL gExpertLevelMenuData
gExpertLevelMenuData:
	.INCBIN "assets/menu/ExpertLevelMenuData.bin"

	.GLOBAL gEWorldMenuData1
gEWorldMenuData1:
	.INCBIN "assets/menu/EWorldMenuData1.bin"

	.GLOBAL gWorldOneBossClearData1
gWorldOneBossClearData1:
	.INCBIN "baserom.gba", 0x7E21D0, 0x7E4B48-0x7E21D0

	.GLOBAL gWorldOneBossClearData2
gWorldOneBossClearData2:
	.INCBIN "baserom.gba", 0x7E4B48, 0x7E88DC-0x7E4B48

	.GLOBAL gWorldTwoBossClearData1
gWorldTwoBossClearData1:
	.INCBIN "baserom.gba", 0x7E88DC, 0x7EB618-0x7E88DC

	.GLOBAL gWorldTwoBossClearData2
gWorldTwoBossClearData2:
	.INCBIN "baserom.gba", 0x7EB618, 0x7EF674-0x7EB618

	.GLOBAL gWorldThreeBossClearData1
gWorldThreeBossClearData1:
	.INCBIN "baserom.gba", 0x7EF674, 0x7F1714-0x7EF674

	.GLOBAL gWorldThreeBossClearData2
gWorldThreeBossClearData2:
	.INCBIN "baserom.gba", 0x7F1714, 0x7F52DC-0x7F1714

	.GLOBAL gWorldFourBossClearData1
gWorldFourBossClearData1:
	.INCBIN "baserom.gba", 0x7F52DC, 0x7F6CF0-0x7F52DC

	.GLOBAL gWorldFourBossClearData2
gWorldFourBossClearData2:
	.INCBIN "baserom.gba", 0x7F6CF0, 0x7FB054-0x7F6CF0

	.GLOBAL gWorldFiveBossClearData1
gWorldFiveBossClearData1:
	.INCBIN "baserom.gba", 0x7FB054, 0x7FD5AC-0x7FB054

	.GLOBAL gWorldFiveBossClearData2
gWorldFiveBossClearData2:
	.INCBIN "baserom.gba", 0x7FD5AC, 0x801ABC-0x7FD5AC

	.GLOBAL gWorldSixBossClearData1
gWorldSixBossClearData1:
	.INCBIN "baserom.gba", 0x801ABC, 0x8034AC-0x801ABC

	.GLOBAL gWorldSixBossClearData2
gWorldSixBossClearData2:
	.INCBIN "baserom.gba", 0x8034AC, 0x8076D4-0x8034AC

	.GLOBAL gWorldOnePlusBossClearData1
gWorldOnePlusBossClearData1:
	.INCBIN "baserom.gba", 0x8076D4, 0x8095E0-0x8076D4

	.GLOBAL gWorldOnePlusBossClearData2
gWorldOnePlusBossClearData2:
	.INCBIN "baserom.gba", 0x8095E0, 0x80D09C-0x8095E0

	.GLOBAL gWorldTwoPlusBossClearData1
gWorldTwoPlusBossClearData1:
	.INCBIN "baserom.gba", 0x80D09C, 0x80F0A4-0x80D09C

	.GLOBAL gWorldTwoPlusBossClearData2
gWorldTwoPlusBossClearData2:
	.INCBIN "baserom.gba", 0x80F0A4, 0x8133F0-0x80F0A4

	.GLOBAL gWorldThreePlusBossClearData1
gWorldThreePlusBossClearData1:
	.INCBIN "baserom.gba", 0x8133F0, 0x814E6C-0x8133F0

	.GLOBAL gWorldThreePlusBossClearData2
gWorldThreePlusBossClearData2:
	.INCBIN "baserom.gba", 0x814E6C, 0x8184BC-0x814E6C

	.GLOBAL gWorldFourPlusBossClearData1
gWorldFourPlusBossClearData1:
	.INCBIN "baserom.gba", 0x8184BC, 0x81A270-0x8184BC

	.GLOBAL gWorldFourPlusBossClearData2
gWorldFourPlusBossClearData2:
	.INCBIN "baserom.gba", 0x81A270, 0x81E02C-0x81A270

	.GLOBAL gWorldFivePlusBossClearData1
gWorldFivePlusBossClearData1:
	.INCBIN "baserom.gba", 0x81E02C, 0x81FE98-0x81E02C

	.GLOBAL gWorldFivePlusBossClearData2
gWorldFivePlusBossClearData2:
	.INCBIN "baserom.gba", 0x81FE98, 0x823B74-0x81FE98

	.GLOBAL gWorldSixPlusBossClearData1
gWorldSixPlusBossClearData1:
	.INCBIN "baserom.gba", 0x823B74, 0x825F04-0x823B74

	.GLOBAL gWorldSixPlusBossClearData2
gWorldSixPlusBossClearData2:
	.INCBIN "baserom.gba", 0x825F04, 0x829B18-0x825F04

	.GLOBAL gGameOverData
gGameOverData:
	.INCBIN "assets/menu/GameOverData.bin"

	.GLOBAL gWorldOneStartData
gWorldOneStartData:
	.INCBIN "baserom.gba", 0x82B4C4, 0x82EF0C-0x82B4C4

	.GLOBAL gWorldTwoStartData
gWorldTwoStartData:
	.INCBIN "baserom.gba", 0x82EF0C, 0x832F40-0x82EF0C
	
	.GLOBAL gWorldThreeStartData
gWorldThreeStartData:
	.INCBIN "baserom.gba", 0x832F40, 0x8369B4-0x832F40
	
	.GLOBAL gWorldFourStartData
gWorldFourStartData:
	.INCBIN "baserom.gba", 0x8369B4, 0x83A2FC-0x8369B4
	
	.GLOBAL gWorldFiveStartData
gWorldFiveStartData:
	.INCBIN "baserom.gba", 0x83A2FC, 0x83E274-0x83A2FC
	
	.GLOBAL gWorldSixStartData
gWorldSixStartData:
	.INCBIN "baserom.gba", 0x83E274, 0x841E1C-0x83E274

	.GLOBAL gWorldOnePlusStartData
gWorldOnePlusStartData:
	.INCBIN "baserom.gba", 0x841E1C, 0x84585C-0x841E1C

	.GLOBAL gWorldTwoPlusStartData
gWorldTwoPlusStartData:
	.INCBIN "baserom.gba", 0x84585C, 0x849A84-0x84585C
	
	.GLOBAL gWorldThreePlusStartData
gWorldThreePlusStartData:
	.INCBIN "baserom.gba", 0x849A84, 0x84DCEC-0x849A84
	
	.GLOBAL gWorldFourPlusStartData
gWorldFourPlusStartData:
	.INCBIN "baserom.gba", 0x84DCEC, 0x851C58-0x84DCEC
	
	.GLOBAL gWorldFivePlusStartData
gWorldFivePlusStartData:
	.INCBIN "baserom.gba", 0x851C58, 0x855FE0-0x851C58
	
	.GLOBAL gWorldSixPlusStartData
gWorldSixPlusStartData:
	.INCBIN "baserom.gba", 0x855FE0, 0x85A088-0x855FE0

	.GLOBAL gLevelResultsData
gLevelResultsData:
	.INCBIN "baserom.gba", 0x85A088, 0x85C4C4-0x85A088

	.GLOBAL gBonusStopArrowData
gBonusStopArrowData:
	.INCBIN "assets/bonus/BonusStopArrowData.bin"

	.GLOBAL gBonusStopArrowBackgroundData
gBonusStopArrowBackgroundData:
	.INCBIN "assets/bonus/BonusStopArrowBackground.bin"

	.GLOBAL gBonusSwapBoxesData
gBonusSwapBoxesData:
	.INCBIN "assets/bonus/BonusSwapBoxesData.bin"

	.GLOBAL gBonusSwapBoxesBackgroundData
gBonusSwapBoxesBackgroundData:
	.INCBIN "assets/bonus/BonusSwapBoxesBackground.bin"

	.GLOBAL gNintendoSoftwareTechnologyLogo
gNintendoSoftwareTechnologyLogo:
	.INCBIN "assets/NSTLogo.bin"

	.GLOBAL gTitleScreenLeftData
gTitleScreenLeftData:
	.INCBIN "assets/title/TitleScreenLeft.bin"

	.GLOBAL gTitleScreenRightData
gTitleScreenRightData:
	.INCBIN "assets/title/TitleScreenRight.bin"

	.GLOBAL gTitleMarioDKEyes
gTitleMarioDKEyes:
	.INCBIN "assets/title/TitleMarioDKEyes.bin"

	.GLOBAL gUnusedOptionsMenuData
gUnusedOptionsMenuData:
	.INCBIN "assets/unused/EarlyOptionsMenu.bin"
	
	.GLOBAL gOptionsMenuData
gOptionsMenuData:
	.INCBIN "assets/menu/OptionsMenuData.bin"

	.GLOBAL gUnusedToadDKCutscene
gUnusedToadDKCutscene:
	.INCBIN "baserom.gba", 0x879AB4, 0x87D89C-0x879AB4

	.GLOBAL gUnusedToadMarioCutscene
gUnusedToadMarioCutsceneGFX:
	.INCBIN "baserom.gba", 0x87D89C, 0x880D90-0x87D89C

@ Intro Cutscene

	.GLOBAL gUnknown_08880D90
gUnknown_08880D90:
	.INCBIN "baserom.gba", 0x880D90, 0x8867F0-0x880D90
	
	.GLOBAL gUnknown_088867F0
gUnknown_088867F0:
	.INCBIN "baserom.gba", 0x8867F0, 0x88C3A0-0x8867F0
	
	.GLOBAL gUnknown_0888C3A0
gUnknown_0888C3A0:
	.INCBIN "baserom.gba", 0x88C3A0, 0x891CE4-0x88C3A0
	
	.GLOBAL gUnknown_08891CE4
gUnknown_08891CE4:
	.INCBIN "baserom.gba", 0x891CE4, 0x89782C-0x891CE4
	
	.GLOBAL gUnknown_0889782C
gUnknown_0889782C:
	.INCBIN "baserom.gba", 0x89782C, 0x89BF4C-0x89782C
	
	.GLOBAL gUnknown_0889BF4C
gUnknown_0889BF4C:
	.INCBIN "baserom.gba", 0x89BF4C, 0x8A19A8-0x89BF4C
	
	.GLOBAL gUnknown_088A19A8
gUnknown_088A19A8:
	.INCBIN "baserom.gba", 0x8A19A8, 0x8A6070-0x8A19A8
	
	.GLOBAL gUnknown_088A6070
gUnknown_088A6070:
	.INCBIN "baserom.gba", 0x8A6070, 0x8AA5D8-0x8A6070
	
	.GLOBAL gUnknown_088AA5D8
gUnknown_088AA5D8:
	.INCBIN "baserom.gba", 0x8AA5D8, 0x8AEA00-0x8AA5D8
	
	.GLOBAL gUnknown_088AEA00
gUnknown_088AEA00:
	.INCBIN "baserom.gba", 0x8AEA00, 0x8B3EB0-0x8AEA00
	
	.GLOBAL gUnknown_088B3EB0
gUnknown_088B3EB0:
	.INCBIN "baserom.gba", 0x8B3EB0, 0x8B7C4C-0x8B3EB0
	
	.GLOBAL gUnknown_088B7C4C
gUnknown_088B7C4C:
	.INCBIN "baserom.gba", 0x8B7C4C, 0x8BC7FC-0x8B7C4C
	
	.GLOBAL gUnknown_088BC7FC
gUnknown_088BC7FC:
	.INCBIN "baserom.gba", 0x8BC7FC, 0x8C09AC-0x8BC7FC
	
	.GLOBAL gUnknown_088C09AC
gUnknown_088C09AC:
	.INCBIN "baserom.gba", 0x8C09AC, 0x8C53EC-0x8C09AC
	
	.GLOBAL gUnknown_088C53EC
gUnknown_088C53EC:
	.INCBIN "baserom.gba", 0x8C53EC, 0x8C962C-0x8C53EC
	
	.GLOBAL gUnknown_088C962C
gUnknown_088C962C:
	.INCBIN "baserom.gba", 0x8C962C, 0x8CE9D4-0x8C962C
	
	.GLOBAL gUnknown_088CE9D4
gUnknown_088CE9D4:
	.INCBIN "baserom.gba", 0x8CE9D4, 0x8D3034-0x8CE9D4
	
	.GLOBAL gUnknown_088D3034
gUnknown_088D3034:
	.INCBIN "baserom.gba", 0x8D3034, 0x8DA250-0x8D3034
	
	.GLOBAL gUnknown_088DA250
gUnknown_088DA250:
	.INCBIN "baserom.gba", 0x8DA250, 0x8DCB4C-0x8DA250
	
	.GLOBAL gUnknown_088DCB4C
gUnknown_088DCB4C:
	.INCBIN "baserom.gba", 0x8DCB4C, 0x8DF5A8-0x8DCB4C
	
@ New Game Cutscene

	.GLOBAL gUnknown_08DF5A8
gUnknown_08DF5A8:
	.INCBIN "baserom.gba", 0x8DF5A8, 0x8E44F4-0x8DF5A8

	.GLOBAL gUnknown_08E44F4
gUnknown_08E44F4:
	.INCBIN "baserom.gba", 0x8E44F4, 0x8E95F8-0x8E44F4

	.GLOBAL gUnknown_08E95F8
gUnknown_088E95F8:
	.INCBIN "baserom.gba", 0x8E95F8, 0x8EEC30-0x8E95F8

	.GLOBAL gUnknown_08EEC30
gUnknown_08EEC30:
	.INCBIN "baserom.gba", 0x8EEC30, 0x8F45C8-0x8EEC30

	.GLOBAL gUnknown_08F45C8
gUnknown_08F45C8:
	.INCBIN "baserom.gba", 0x8F45C8, 0x8F8B8C-0x8F45C8

	.GLOBAL gUnknown_08F8B8C
gUnknown_08F8B8C:
	.INCBIN "baserom.gba", 0x8F8B8C, 0x8FCBE4-0x8F8B8C

	.GLOBAL gUnknown_08FCBE4
gUnknown_08FCBE4:
	.INCBIN "baserom.gba", 0x8FCBE4, 0x901234-0x8FCBE4

	.GLOBAL gUnknown_0901234
gUnknown_0901234:
	.INCBIN "baserom.gba", 0x901234, 0x9052C8-0x901234

	.GLOBAL gUnknown_09052C8
gUnknown_09052C8:
	.INCBIN "baserom.gba", 0x9052C8, 0x908A30-0x9052C8
	
@ Pre DK-Boss 1
	
	.GLOBAL gUnknown_08908A30
gUnknown_08908A30:
	.INCBIN "baserom.gba", 0x908A30, 0x90D474-0x908A30
	
	.GLOBAL gUnknown_0890D474
gUnknown_0890D474:
	.INCBIN "baserom.gba", 0x90D474, 0x912138-0x90D474
	
	.GLOBAL gUnknown_08912138
gUnknown_08912138:
	.INCBIN "baserom.gba", 0x912138, 0x91720C-0x912138
	
	.GLOBAL gUnknown_0891720C
gUnknown_0891720C:
	.INCBIN "baserom.gba", 0x91720C, 0x91C114-0x91720C
	
	.GLOBAL gUnknown_0891C114
gUnknown_0891C114:
	.INCBIN "baserom.gba", 0x91C114, 0x920C64-0x91C114
	
	.GLOBAL gUnknown_08920C64
gUnknown_08920C64:
	.INCBIN "baserom.gba", 0x920C64, 0x925B24-0x920C64
	
	.GLOBAL gUnknown_08925B24
gUnknown_08925B24:
	.INCBIN "baserom.gba", 0x925B24, 0x92B040-0x925B24
	
	.GLOBAL gUnknown_0892B040
gUnknown_0892B040:
	.INCBIN "baserom.gba", 0x92B040, 0x93064C-0x92B040
	
	.GLOBAL gUnknown_0893064C
gUnknown_0893064C:
	.INCBIN "baserom.gba", 0x93064C, 0x9355B8-0x93064C
	
	.GLOBAL gUnknown_089355B8
gUnknown_089355B8:
	.INCBIN "baserom.gba", 0x9355B8, 0x93A2C8-0x9355B8
	
	.GLOBAL gUnknown_0893A2C8
gUnknown_0893A2C8:
	.INCBIN "baserom.gba", 0x93A2C8, 0x93E960-0x93A2C8
	
	.GLOBAL gUnknown_0893E960
gUnknown_0893E960:
	.INCBIN "baserom.gba", 0x93E960, 0x942D4C-0x93E960
	
	.GLOBAL gUnknown_08942D4C
gUnknown_08942D4C:
	.INCBIN "baserom.gba", 0x942D4C, 0x947130-0x942D4C
	
	.GLOBAL gUnknown_08947130
gUnknown_08947130:
	.INCBIN "baserom.gba", 0x947130, 0x94B710-0x947130
	
@ Post Credits 1
	
	.GLOBAL gUnknown_0894B710
gUnknown_0894B710:
	.INCBIN "baserom.gba", 0x94B710, 0x94EB78-0x94B710
	
	.GLOBAL gUnknown_0894EB78
gUnknown_0894EB78:
	.INCBIN "baserom.gba", 0x94EB78, 0x950464-0x94EB78
	
	.GLOBAL gUnknown_08950464
gUnknown_08950464:
	.INCBIN "baserom.gba", 0x950464, 0x9526B0-0x950464
	
	.GLOBAL gUnknown_089526B0
gUnknown_089526B0:
	.INCBIN "baserom.gba", 0x9526B0, 0x9548DC-0x9526B0
	
	.GLOBAL gUnknown_089548DC
gUnknown_089548DC:
	.INCBIN "baserom.gba", 0x9548DC, 0x959B10-0x9548DC
	
	.GLOBAL gUnknown_08959B10
gUnknown_08959B10:
	.INCBIN "baserom.gba", 0x959B10, 0x95F0B0-0x959B10
	
	.GLOBAL gUnknown_0895F0B0
gUnknown_0895F0B0:
	.INCBIN "baserom.gba", 0x95F0B0, 0x964974-0x95F0B0
	
	.GLOBAL gUnknown_08964974
gUnknown_08964974:
	.INCBIN "baserom.gba", 0x964974, 0x969AB4-0x964974
	
	.GLOBAL gUnknown_08969AB4
gUnknown_08969AB4:
	.INCBIN "baserom.gba", 0x969AB4, 0x96E724-0x969AB4
	
	.GLOBAL gUnknown_0896E724
gUnknown_0896E724:
	.INCBIN "baserom.gba", 0x96E724, 0x97423C-0x96E724
	
	.GLOBAL gUnknown_0897423C
gUnknown_0897423C:
	.INCBIN "baserom.gba", 0x97423C, 0x979C5C-0x97423C
	
	.GLOBAL gUnknown_08979C5C
gUnknown_08979C5C:
	.INCBIN "baserom.gba", 0x979C5C, 0x97E3B8-0x979C5C
	
@ Movie 6
	
	.GLOBAL gUnknown_0897E3B8
gUnknown_0897E3B8:
	.INCBIN "baserom.gba", 0x97E3B8, 0x982F18-0x97E3B8
	
	.GLOBAL gUnknown_08982F18
gUnknown_08982F18:
	.INCBIN "baserom.gba", 0x982F18, 0x987BAC-0x982F18
	
	.GLOBAL gUnknown_08987BAC
gUnknown_08987BAC:
	.INCBIN "baserom.gba", 0x987BAC, 0x98CA8C-0x987BAC
	
	.GLOBAL gUnknown_0898CA8C
gUnknown_0898CA8C:
	.INCBIN "baserom.gba", 0x98CA8C, 0x991B54-0x98CA8C
	
	.GLOBAL gUnknown_08991B54
gUnknown_08991B54:
	.INCBIN "baserom.gba", 0x991B54, 0x996D1C-0x991B54
	
	.GLOBAL gUnknown_08996D1C
gUnknown_08996D1C:
	.INCBIN "baserom.gba", 0x996D1C, 0x99BDE0-0x996D1C
	
	.GLOBAL gUnknown_0899BDE0
gUnknown_0899BDE0:
	.INCBIN "baserom.gba", 0x99BDE0, 0x9A041C-0x99BDE0
	
@ Pre Credits 2
	
	.GLOBAL gUnknown_089A041C
gUnknown_089A041C:
	.INCBIN "baserom.gba", 0x9A041C, 0x9A4F0C-0x9A041C
	
	.GLOBAL gUnknown_089A4F0C
gUnknown_089A4F0C:
	.INCBIN "baserom.gba", 0x9A4F0C, 0x9A9FB4-0x9A4F0C
	
	.GLOBAL gUnknown_089A9FB4
gUnknown_089A9FB4:
	.INCBIN "baserom.gba", 0x9A9FB4, 0x9ADFE8-0x9A9FB4
	
	.GLOBAL gUnknown_089ADFE8
gUnknown_089ADFE8:
	.INCBIN "baserom.gba", 0x9ADFE8, 0x9B2CD4-0x9ADFE8
	
	.GLOBAL gUnknown_089B2CD4
gUnknown_089B2CD4:
	.INCBIN "baserom.gba", 0x9B2CD4, 0x9B7674-0x9B2CD4
	
	.GLOBAL gUnknown_089B7674
gUnknown_089B7674:
	.INCBIN "baserom.gba", 0x9B7674, 0x9BB908-0x9B7674
	
	.GLOBAL gUnknown_089BB908
gUnknown_089BB908:
	.INCBIN "baserom.gba", 0x9BB908, 0x9C0348-0x9BB908
	
	.GLOBAL gUnknown_089C0348
gUnknown_089C0348:
	.INCBIN "baserom.gba", 0x9C0348, 0x9C4B54-0x9C0348
	
	.GLOBAL gUnknown_089C4B54
gUnknown_089C4B54:
	.INCBIN "baserom.gba", 0x9C4B54, 0x9C51F4-0x9C4B54
	
	.GLOBAL gUnknown_089C51F4
gUnknown_089C51F4:
	.INCBIN "baserom.gba", 0x9C51F4, 0x9C605C-0x9C51F4
	
@ Credits 2
	
	.GLOBAL gCredits2ProducerExecAdvisor
gCredits2ProducerExecAdvisor:
	.INCBIN "baserom.gba", 0x9C605C, 0x9C9258-0x9C605C
	
	.GLOBAL gCredits2GameDirector
gCredits2GameDirector:
	.INCBIN "baserom.gba", 0x9C9258, 0x9CB340-0x9C9258
	
	.GLOBAL gCredits2GameDesignSupport
gCredits2GameDesignSupport:
	.INCBIN "baserom.gba", 0x9CB340, 0x9CDCC0-0x9CB340
	
	.GLOBAL gCredits2EngineeringDirector
gCredits2EngineeringDirector:
	.INCBIN "baserom.gba", 0x9CDCC0, 0x9D1128-0x9CDCC0
	
	.GLOBAL gCredits2Engineers
gCredits2Engineers:
	.INCBIN "baserom.gba", 0x9D1128, 0x9D44B0-0x9D1128
	
	.GLOBAL gCredits2EngineeringSpecialistManager
gCredits2EngineeringSpecialistManager:
	.INCBIN "baserom.gba", 0x9D44B0, 0x9D7414-0x9D44B0
	
	.GLOBAL gCredits2ArtDirector
gCredits2ArtDirector:
	.INCBIN "baserom.gba", 0x9D7414, 0x9D9780-0x9D7414
	
	.GLOBAL gCredits2ArtSupport
gCredits2ArtSupport:
	.INCBIN "baserom.gba", 0x9D9780, 0x9DC310-0x9D9780
	
	.GLOBAL gCredits2AudioDirectorSupport
gCredits2AudioDirectorSupport:
	.INCBIN "baserom.gba", 0x9DC310, 0x9DF098-0x9DC310
	
	.GLOBAL gCredits2NetworkOfficeManagerAssistant
gCredits2NetworkOfficeManagerAssistant:
	.INCBIN "baserom.gba", 0x9DF098, 0x9E2730-0x9DF098
	
	.GLOBAL gCredits2GameDesignAssociate
gCredits2GameDesignAssociate:
	.INCBIN "baserom.gba", 0x9E2730, 0x9E45A0-0x9E2730
	
	.GLOBAL gCredits2NintendoCoLtd
gCredits2NintendoCoLtd:
	.INCBIN "baserom.gba", 0x9E45A0, 0x9E4F74-0x9E45A0
	
	.GLOBAL gCredits2ExecutiveProducer
gCredits2ExecutiveProducer:
	.INCBIN "baserom.gba", 0x9E4F74, 0x9E7DB4-0x9E4F74
	
	.GLOBAL gCredits2AssociateProducers
gCredits2AssociateProducers:
	.INCBIN "baserom.gba", 0x9E7DB4, 0x9EA140-0x9E7DB4
	
	.GLOBAL gCredits2ArtSupervisor
gCredits2ArtSupervisor:
	.INCBIN "baserom.gba", 0x9EA140, 0x9EC068-0x9EA140
	
	.GLOBAL gCredits2Advisors
gCredits2Advisors:
	.INCBIN "baserom.gba", 0x9EC068, 0x9EEDC4-0x9EC068
	
	.GLOBAL gCredits2NOAInc
gCredits2NOA:
	.INCBIN "baserom.gba", 0x9EEDC4, 0x9EF814-0x9EEDC4
	
	.GLOBAL gCredits2ProductCoordinators
gCredits2ProductCoordinators:
	.INCBIN "baserom.gba", 0x9EF814, 0x9F20A8-0x9EF814
	
	.GLOBAL gCredits2PackagingManualArt
gCredits2PackagingManualArt:
	.INCBIN "baserom.gba", 0x9F20A8, 0x9F4F24-0x9F20A8
	
	.GLOBAL gCredits2NOAProductTesting
gCredits2NOAProductTesting:
	.INCBIN "baserom.gba", 0x9F4F24, 0x9F89F0-0x9F4F24
	
	.GLOBAL gCredits2SpecialThanks1
gCredits2SpecialThanks1:
	.INCBIN "baserom.gba", 0x9F89F0, 0x9FB964-0x9F89F0
	
	.GLOBAL gCredits2SpecialThanks2
gCredits2SpecialThanks2:
	.INCBIN "baserom.gba", 0x9FB964, 0x9FEBEC-0x9FB964
	
	.GLOBAL gCredits2SpecialThanks3
gCredits2SpecialThanks3:
	.INCBIN "baserom.gba", 0x9FEBEC, 0xA0287C-0x9FEBEC
	
	.GLOBAL gCredits2VoiceOfMario
gCredits2VoiceOfMario:
	.INCBIN "baserom.gba", 0xA0287C, 0xA056A4-0xA0287C
	
	.GLOBAL gCredits2ThanksForPlaying
gCredits2ThanksForPlaying:
	.INCBIN "baserom.gba", 0xA056A4, 0xA0C18C-0xA056A4
	
	.GLOBAL gCredits2EndAllRightsReserved
gCredits2EndAllRightsReserved:
	.INCBIN "baserom.gba", 0xA0C18C, 0xA0D0B4-0xA0C18C
	
@ Credits 1
	
	.GLOBAL gCreditsNSTCorp
gCreditsNSTCorp:
	.INCBIN "baserom.gba", 0xA0D0B4, 0xA0DD50-0xA0D0B4
	
	.GLOBAL gCreditsProducerExecAdvisor
gCreditsProducerExecAdvisor:
	.INCBIN "baserom.gba", 0xA0DD50, 0xA0ED38-0xA0DD50
	
	.GLOBAL gCreditsGameDirector
gCreditsGameDirector:
	.INCBIN "baserom.gba", 0xA0ED38, 0xA0FA50-0xA0ED38
	
	.GLOBAL gCreditsGameDesignSupport
gCreditsGameDesignSupport:
	.INCBIN "baserom.gba", 0xA0FA50, 0xA10B78-0xA0FA50
	
	.GLOBAL gCreditsEngineeringDirector
gCreditsEngineeringDirector:
	.INCBIN "baserom.gba", 0xA10B78, 0xA118C0-0xA10B78
	
	.GLOBAL gCreditsEngineers
gCreditsEngineers:
	.INCBIN "baserom.gba", 0xA118C0, 0xA125F0-0xA118C0

	.GLOBAL gCreditsEngineeringSpecialistManager
gCreditsEngineeringSpecialistManager:
	.INCBIN "baserom.gba", 0xA125F0, 0xA13688-0xA125F0

	.GLOBAL gCreditsArtDirector
gCreditsArtDirector:
	.INCBIN "baserom.gba", 0xA13688, 0xA14340-0xA13688

	.GLOBAL gCreditsArtSupport
gCreditsArtSupport:
	.INCBIN "baserom.gba", 0xA14340, 0xA15554-0xA14340

	.GLOBAL gCreditsAudioDirectorSupport
gCreditsAudioDirectorSupport:
	.INCBIN "baserom.gba", 0xA15554, 0xA166E8-0xA15554

	.GLOBAL gCreditsNetworkOfficeManagerAssistant
gCreditsNetworkOfficeManagerAssistant:
	.INCBIN "baserom.gba", 0xA166E8, 0xA179FC-0xA166E8

	.GLOBAL gCreditsGameDesignAssociate
gCreditsGameDesignAssociate:
	.INCBIN "baserom.gba", 0xA179FC, 0xA187B0-0xA179FC

	.GLOBAL gCreditsNintendoCoLtd
gCreditsNintendoCoLtd:
	.INCBIN "baserom.gba", 0xA187B0, 0xA190EC-0xA187B0

	.GLOBAL gCreditsExecutiveProducer
gCreditsExecutiveProducer:
	.INCBIN "baserom.gba", 0xA190EC, 0xA1A0A0-0xA190EC

	.GLOBAL gCreditsAssociateProducers
gCreditsAssociateProducers:
	.INCBIN "baserom.gba", 0xA1A0A0, 0xA1AFF4-0xA1A0A0

	.GLOBAL gCreditsArtSupervisor
gCreditsArtSupervisor:
	.INCBIN "baserom.gba", 0xA1AFF4, 0xA1BC60-0xA1AFF4

	.GLOBAL gCreditsAdvisors
gCreditsAdvisors:
	.INCBIN "baserom.gba", 0xA1BC60, 0xA1CA4C-0xA1BC60

	.GLOBAL gCreditsNOAInc
gCreditsNOA:
	.INCBIN "baserom.gba", 0xA1CA4C, 0xA1D3C8-0xA1CA4C

	.GLOBAL gCreditsProductCoordinators
gCreditsProductCoordinators:
	.INCBIN "baserom.gba", 0xA1D3C8, 0xA1E78C-0xA1D3C8

	.GLOBAL gCreditsPackagingManualArt
gCreditsPackagingManualArt:
	.INCBIN "baserom.gba", 0xA1E78C, 0xA1F8CC-0xA1E78C

	.GLOBAL gCreditsNOAProductTesting
gCreditsNOAProductTesting:
	.INCBIN "baserom.gba", 0xA1F8CC, 0xA21124-0xA1F8CC

	.GLOBAL gCreditsSpecialThanks1
gCreditsSpecialThanks1:
	.INCBIN "baserom.gba", 0xA21124, 0xA22BCC-0xA21124

	.GLOBAL gCreditsSpecialThanks2
gCreditsSpecialThanks2:
	.INCBIN "baserom.gba", 0xA22BCC, 0xA24620-0xA22BCC

	.GLOBAL gCreditsSpecialThanks3
gCreditsSpecialThanks3:
	.INCBIN "baserom.gba", 0xA24620, 0xA2603C-0xA24620

	.GLOBAL gCreditsVoiceOfMario
gCreditsVoiceOfMario:
	.INCBIN "baserom.gba", 0xA2603C, 0xA26F88-0xA2603C

	.GLOBAL gCreditsThanksForPlaying
gCreditsThanksForPlaying:
	.INCBIN "baserom.gba", 0xA26F88, 0xA27880-0xA26F88

	.GLOBAL gCreditsAllRightsReserved
gCreditsAllRightsReserved:
	.INCBIN "baserom.gba", 0xA27880, 0xA28710-0xA27880
	
@ Unused Plus Worlds Unlocked Screen	

	.GLOBAL gUnusedPlusWorldsUnlocked
gUnusedPlusWorldsUnlocked:
	.INCBIN "assets/cutscene/UnusedPlusWorldsUnlocked.bin"

@ World Data

	.GLOBAL gWorldOneData
gWorldOneData:
	.INCBIN "assets/level/data/WorldOneData.bin"

	.GLOBAL gWorldTwoData
gWorldTwoData:
	.INCBIN "assets/level/data/WorldTwoData.bin"

	.GLOBAL gWorldThreeData
gWorldThreeData:
	.INCBIN "assets/level/data/WorldThreeData.bin"

	.GLOBAL gWorldFourData
gWorldFourData:
	.INCBIN "assets/level/data/WorldFourData.bin"

	.GLOBAL gWorldFiveData
gWorldFiveData:
	.INCBIN "assets/level/data/WorldFiveData.bin"

	.GLOBAL gWorldSixData
gWorldSixData:
	.INCBIN "assets/level/data/WorldSixData.bin"

	.GLOBAL gBossLevelData
gBossLevelData:
	.INCBIN "assets/level/data/BossLevelData.bin"
	
@ Level Backgrounds

	.GLOBAL gWorldOneHorizontalBG
gWorldOneHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_horizontal.bin"

	.GLOBAL gWorldOneVerticalBG
gWorldOneVerticalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_vertical.bin"

	.GLOBAL gWorldOneMiniMarioBG
gWorldOneMiniMarioBG:
	.INCBIN  "assets/level/backgrounds/world_one/world_one_mini_mario.bin"

	.GLOBAL gWorldOneBossBG
gWorldOneBossBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_boss.bin"

	.GLOBAL gWorldTwoHorizontalBG
gWorldTwoHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_horizontal.bin"

	.GLOBAL gWorldTwoVerticalBG
gWorldTwoVerticalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_vertical.bin"

	.GLOBAL gWorldTwoMiniMarioBG
gWorldTwoMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_mini_mario.bin"

	.GLOBAL gWorldTwoBossBG
gWorldTwoBossBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_boss.bin"

	.GLOBAL gWorldThreeHorizontalBG
gWorldThreeHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_horizontal.bin"

	.GLOBAL gWorldThreeVerticalBG
gWorldThreeVerticalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_vertical.bin"

	.GLOBAL gWorldThreeMiniMarioBG
gWorldThreeMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_mini_mario.bin"

	.GLOBAL gWorldThreeBossBG
gWorldThreeBossBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_boss.bin"

	.GLOBAL gWorldFourHorizontalBG
gWorldFourHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_horizontal.bin"

	.GLOBAL gWorldFourVerticalBG
gWorldFourVerticalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_vertical.bin"

	.GLOBAL gWorldFourMiniMarioBG
gWorldFourMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_mini_mario.bin"

	.GLOBAL gWorldFourBossBG
gWorldFourBossBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_boss.bin"

	.GLOBAL gWorldFiveHorizontalBG
gWorldFiveHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_horizontal.bin"

	.GLOBAL gWorldFiveVerticalBG
gWorldFiveVerticalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_vertical.bin"

	.GLOBAL gWorldFiveMiniMarioBG
gWorldFiveMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_mini_mario.bin"

	.GLOBAL gWorldFiveBossBG
gWorldFiveBossBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_boss.bin"

	.GLOBAL gWorldSixHorizontalBG
gWorldSixHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_horizontal.bin"

	.GLOBAL gWorldSixVerticalBG
gWorldSixVerticalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_vertical.bin"

	.GLOBAL gWorldSixMiniMarioBG
gWorldSixMiniMarioBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_mini_mario.bin"

	.GLOBAL gWorldSixBossBG
gWorldSixBossBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_boss.bin"

	.GLOBAL gDKBossBG
gDKBossBG:
	.INCBIN "assets/level/backgrounds/boss/dk_boss.bin"

	.GLOBAL gDKBossPlusBG
gDKBossPlusBG:
	.INCBIN "assets/level/backgrounds/boss/dk_boss_plus.bin"

	.GLOBAL gWorldOnePlusHorizontalBG
gWorldOnePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_plus_horizontal.bin"

	.GLOBAL gWorldOnePlusVerticalBG
gWorldOnePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_one/world_one_plus_vertical.bin"

	.GLOBAL gWorldTwoPlusHorizontalBG
gWorldTwoPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_plus_horizontal.bin"

	.GLOBAL gWorldTwoPlusVerticalBG
gWorldTwoPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_two/world_two_plus_vertical.bin"

	.GLOBAL gWorldThreePlusHorizontalBG
gWorldThreePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_horizontal.bin"

	.GLOBAL gWorldThreePlusVerticalBG
gWorldThreePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_vertical.bin"

	.GLOBAL gWorldThreePlusBossBG
gWorldThreePlusBossBG:
	.INCBIN "assets/level/backgrounds/world_three/world_three_plus_boss.bin"

	.GLOBAL gWorldFourPlusHorizontalBG
gWorldFourPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_plus_horizontal.bin"

	.GLOBAL gWorldFourPlusVerticalBG
gWorldFourPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_four/world_four_plus_vertical.bin"

	.GLOBAL gWorldFivePlusHorizontalBG
gWorldFivePlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_plus_horizontal.bin"

	.GLOBAL gWorldFivePlusVerticalBG
gWorldFivePlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_five/world_five_plus_vertical.bin"

	.GLOBAL gWorldSixPlusHorizontalBG
gWorldSixPlusHorizontalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_plus_horizontal.bin"

	.GLOBAL gWorldSixPlusVerticalBG
gWorldSixPlusVerticalBG:
	.INCBIN "assets/level/backgrounds/world_six/world_six_plus_vertical.bin"
	
@ Related to level intro camera panning/side of level the player enters from

	.GLOBAL gUnknown_08AF43E4
gUnknown_08AF43E4:
	.INCBIN "assets/level/gUnknown_08AF43E4.bin"
	
@ Levels

	.GLOBAL gLevel11A
gLevel11A:
	.INCBIN "assets/level/level_data/world_one/1_1A.bin"
	
	.GLOBAL gLevel11B
gLevel11B:
	.INCBIN "assets/level/level_data/world_one/1_1B.bin"
	
	.GLOBAL gLevel11Tutorial
gLevel11Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_1_tutorial.bin"
	
	
	.GLOBAL gLevel12A
gLevel12A:
	.INCBIN "assets/level/level_data/world_one/1_2A.bin"
	
	.GLOBAL gLevel12B
gLevel12B:
	.INCBIN "assets/level/level_data/world_one/1_2B.bin"
	
	.GLOBAL gLevel12Tutorial
gLevel12Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_2_tutorial.bin"
	

	.GLOBAL gLevel13A
gLevel13A:
	.INCBIN "assets/level/level_data/world_one/1_3A.bin"
	
	.GLOBAL gLevel13B
gLevel13B:
	.INCBIN "assets/level/level_data/world_one/1_3B.bin"
	
	.GLOBAL gLevel13Tutorial
gLevel13Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_3_tutorial.bin"
	
	
	.GLOBAL gLevel14A
gLevel14A:
	.INCBIN "assets/level/level_data/world_one/1_4A.bin"
	
	.GLOBAL gLevel14B
gLevel14B:
	.INCBIN "assets/level/level_data/world_one/1_4B.bin"
	
	.GLOBAL gLevel14Tutorial
gLevel14Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_4_tutorial.bin"
	
	
	.GLOBAL gLevel15A
gLevel15A:
	.INCBIN "assets/level/level_data/world_one/1_5A.bin"
	
	.GLOBAL gLevel15B
gLevel15B:
	.INCBIN "assets/level/level_data/world_one/1_5B.bin"
	
	.GLOBAL gLevel15Tutorial
gLevel15Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_5_tutorial.bin"
	
	
	.GLOBAL gLevel16A
gLevel16A:
	.INCBIN "assets/level/level_data/world_one/1_6A.bin"
	
	.GLOBAL gLevel16B
gLevel16B:
	.INCBIN "assets/level/level_data/world_one/1_6B.bin"

	.GLOBAL gLevel16Tutorial
gLevel16Tutorial:
	.INCBIN "assets/level/level_data/world_one/1_6_tutorial.bin"


	.GLOBAL gLevel1MM
gLevel1MM:
	.INCBIN "assets/level/level_data/world_one/1_mm.bin"
	
	.GLOBAL gLevel1DK
gLevel1DK:
	.INCBIN "assets/level/level_data/world_one/1_DK.bin"

	.GLOBAL gLevel1MMTutorial
gLevel1MMTutorial:
	.INCBIN "assets/level/level_data/world_one/1_mm_tutorial.bin"
	
@ World 2
	
	.GLOBAL gLevel21A
gLevel21A:
	.INCBIN "assets/level/level_data/world_two/2_1A.bin"

	.GLOBAL gLevel21B
gLevel21B:
	.INCBIN "assets/level/level_data/world_two/2_1B.bin"
	
	.GLOBAL gLevel21Tutorial
gLevel21Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_1_tutorial.bin"


	.GLOBAL gLevel22A
gLevel22A:
	.INCBIN "assets/level/level_data/world_two/2_2A.bin"
	
	.GLOBAL gLevel22B
gLevel22B:
	.INCBIN "assets/level/level_data/world_two/2_2B.bin"

	.GLOBAL gLevel22Tutorial
gLevel22Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_2_tutorial.bin"
	

	.GLOBAL gLevel23A
gLevel23A:
	.INCBIN "assets/level/level_data/world_two/2_3A.bin"
	
	.GLOBAL gLevel23B
gLevel23B:
	.INCBIN "assets/level/level_data/world_two/2_3B.bin"

	.GLOBAL gLevel23Tutorial
gLevel23Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_3_tutorial.bin"
	
	
	.GLOBAL gLevel24A
gLevel24A:
	.INCBIN "assets/level/level_data/world_two/2_4A.bin"
	
	.GLOBAL gLevel24B
gLevel24B:
	.INCBIN "assets/level/level_data/world_two/2_4B.bin"

	.GLOBAL gLevel24Tutorial
gLevel24Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_4_tutorial.bin"
	
	
	.GLOBAL gLevel25A
gLevel25A:
	.INCBIN "assets/level/level_data/world_two/2_5A.bin"
	
	.GLOBAL gLevel25B
gLevel25B:
	.INCBIN "assets/level/level_data/world_two/2_5B.bin"

	.GLOBAL gLevel25Tutorial
gLevel25Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_5_tutorial.bin"


	.GLOBAL gLevel26A
gLevel26A:
	.INCBIN "assets/level/level_data/world_two/2_6A.bin"
	
	.GLOBAL gLevel26B
gLevel26B:
	.INCBIN "assets/level/level_data/world_two/2_6B.bin"

	.GLOBAL gLevel26Tutorial
gLevel26Tutorial:
	.INCBIN "assets/level/level_data/world_two/2_6_tutorial.bin"
	
	
	.GLOBAL gLevel2MM
gLevel2MM:
	.INCBIN "assets/level/level_data/world_two/2_mm.bin"
	
	.GLOBAL gLevel2DK
gLevel2DK:
	.INCBIN "assets/level/level_data/world_two/2_DK.bin"

	.GLOBAL gLevel2MMTutorial
gLevel2MMTutorial:
	.INCBIN "assets/level/level_data/world_two/2_mm_tutorial.bin"
	
@ World 3

	.GLOBAL gLevel31A
gLevel31A:
	.INCBIN "assets/level/level_data/world_three/3_1A.bin"
	
	.GLOBAL gLevel31B
gLevel31B:
	.INCBIN "assets/level/level_data/world_three/3_1B.bin"

	.GLOBAL gLevel31Tutorial
gLevel31Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_1_tutorial.bin"
	

	.GLOBAL gLevel32A
gLevel32A:
	.INCBIN "assets/level/level_data/world_three/3_2A.bin"
	
	.GLOBAL gLevel32B
gLevel32B:
	.INCBIN "assets/level/level_data/world_three/3_2B.bin"

	.GLOBAL gLevel32Tutorial
gLevel32Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_2_tutorial.bin"
	

	.GLOBAL gLevel33A
gLevel33A:
	.INCBIN "assets/level/level_data/world_three/3_3A.bin"
	
	.GLOBAL gLevel33B
gLevel33B:
	.INCBIN "assets/level/level_data/world_three/3_3B.bin"

	.GLOBAL gLevel33Tutorial
gLevel33Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_3_tutorial.bin"
	
	
	.GLOBAL gLevel34A
gLevel34A:
	.INCBIN "assets/level/level_data/world_three/3_4A.bin"
	
	.GLOBAL gLevel34B
gLevel34B:
	.INCBIN "assets/level/level_data/world_three/3_4B.bin"

	.GLOBAL gLevel34Tutorial
gLevel34Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_4_tutorial.bin"

	
	.GLOBAL gLevel35A
gLevel35A:
	.INCBIN "assets/level/level_data/world_three/3_5A.bin"
	
	.GLOBAL gLevel35B
gLevel35B:
	.INCBIN "assets/level/level_data/world_three/3_5B.bin"

	.GLOBAL gLevel35Tutorial
gLevel35Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_5_tutorial.bin"
	

	.GLOBAL gLevel36A
gLevel36A:
	.INCBIN "assets/level/level_data/world_three/3_6A.bin"
	
	.GLOBAL gLevel36B
gLevel36B:
	.INCBIN "assets/level/level_data/world_three/3_6B.bin"

	.GLOBAL gLevel36Tutorial
gLevel36Tutorial:
	.INCBIN "assets/level/level_data/world_three/3_6_tutorial.bin"


	.GLOBAL gLevel3MM
gLevel3MM:
	.INCBIN "assets/level/level_data/world_three/3_mm.bin"
	
	.GLOBAL gLevel3DK
gLevel3DK:
	.INCBIN "assets/level/level_data/world_three/3_DK.bin"

	.GLOBAL gLevel3MMTutorial
gLevel3MMTutorial:
	.INCBIN "assets/level/level_data/world_three/3_mm_tutorial.bin"
	
@ World 4	

	.GLOBAL gLevel41A
gLevel41A:
	.INCBIN "assets/level/level_data/world_four/4_1A.bin"
	
	.GLOBAL gLevel41B
gLevel41B:
	.INCBIN "assets/level/level_data/world_four/4_1B.bin"

	.GLOBAL gLevel41Tutorial
gLevel41Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_1_tutorial.bin"
	

	.GLOBAL gLevel42A
gLevel42A:
	.INCBIN "assets/level/level_data/world_four/4_2A.bin"
	
	.GLOBAL gLevel42B
gLevel42B:
	.INCBIN "assets/level/level_data/world_four/4_2B.bin"

	.GLOBAL gLevel42Tutorial
gLevel42Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_2_tutorial.bin"
	

	.GLOBAL gLevel43A
gLevel43A:
	.INCBIN "assets/level/level_data/world_four/4_3A.bin"
	
	.GLOBAL gLevel43B
gLevel43B:
	.INCBIN "assets/level/level_data/world_four/4_3B.bin"

	.GLOBAL gLevel43Tutorial
gLevel43Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_3_tutorial.bin"
	
	
	.GLOBAL gLevel44A
gLevel44A:
	.INCBIN "assets/level/level_data/world_four/4_4A.bin"
	
	.GLOBAL gLevel44B
gLevel44B:
	.INCBIN "assets/level/level_data/world_four/4_4B.bin"

	.GLOBAL gLevel44Tutorial
gLevel44Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_4_tutorial.bin"

	
	.GLOBAL gLevel45A
gLevel45A:
	.INCBIN "assets/level/level_data/world_four/4_5A.bin"
	
	.GLOBAL gLevel45B
gLevel45B:
	.INCBIN "assets/level/level_data/world_four/4_5B.bin"

	.GLOBAL gLevel45Tutorial
gLevel45Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_5_tutorial.bin"
	

	.GLOBAL gLevel46A
gLevel46A:
	.INCBIN "assets/level/level_data/world_four/4_6A.bin"
	
	.GLOBAL gLevel46B
gLevel46B:
	.INCBIN "assets/level/level_data/world_four/4_6B.bin"

	.GLOBAL gLevel46Tutorial
gLevel46Tutorial:
	.INCBIN "assets/level/level_data/world_four/4_6_tutorial.bin"


	.GLOBAL gLevel4MM
gLevel4MM:
	.INCBIN "assets/level/level_data/world_four/4_mm.bin"
	
	.GLOBAL gLevel4DK
gLevel4DK:
	.INCBIN "assets/level/level_data/world_four/4_DK.bin"

	.GLOBAL gLevel4MMTutorial
gLevel4MMTutorial:
	.INCBIN "assets/level/level_data/world_four/4_mm_tutorial.bin"
	
@ World 5

	.GLOBAL gLevel51A
gLevel51A:
	.INCBIN "assets/level/level_data/world_five/5_1A.bin"
	
	.GLOBAL gLevel51B
gLevel51B:
	.INCBIN "assets/level/level_data/world_five/5_1B.bin"

	.GLOBAL gLevel51Tutorial
gLevel51Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_1_tutorial.bin"
	

	.GLOBAL gLevel52A
gLevel52A:
	.INCBIN "assets/level/level_data/world_five/5_2A.bin"
	
	.GLOBAL gLevel52B
gLevel52B:
	.INCBIN "assets/level/level_data/world_five/5_2B.bin"

	.GLOBAL gLevel52Tutorial
gLevel52Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_2_tutorial.bin"
	

	.GLOBAL gLevel53A
gLevel53A:
	.INCBIN "assets/level/level_data/world_five/5_3A.bin"
	
	.GLOBAL gLevel53B
gLevel53B:
	.INCBIN "assets/level/level_data/world_five/5_3B.bin"

	.GLOBAL gLevel53Tutorial
gLevel53Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_3_tutorial.bin"
	
	
	.GLOBAL gLevel54A
gLevel54A:
	.INCBIN "assets/level/level_data/world_five/5_4A.bin"
	
	.GLOBAL gLevel54B
gLevel54B:
	.INCBIN "assets/level/level_data/world_five/5_4B.bin"

	.GLOBAL gLevel54Tutorial
gLevel54Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_4_tutorial.bin"

	
	.GLOBAL gLevel55A
gLevel55A:
	.INCBIN "assets/level/level_data/world_five/5_5A.bin"
	
	.GLOBAL gLevel55B
gLevel55B:
	.INCBIN "assets/level/level_data/world_five/5_5B.bin"

	.GLOBAL gLevel55Tutorial
gLevel55Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_5_tutorial.bin"
	

	.GLOBAL gLevel56A
gLevel56A:
	.INCBIN "assets/level/level_data/world_five/5_6A.bin"
	
	.GLOBAL gLevel56B
gLevel56B:
	.INCBIN "assets/level/level_data/world_five/5_6B.bin"

	.GLOBAL gLevel56Tutorial
gLevel56Tutorial:
	.INCBIN "assets/level/level_data/world_five/5_6_tutorial.bin"


	.GLOBAL gLevel5MM
gLevel5MM:
	.INCBIN "assets/level/level_data/world_five/5_mm.bin"
	
	.GLOBAL gLevel5DK
gLevel5DK:
	.INCBIN "assets/level/level_data/world_five/5_DK.bin"

	.GLOBAL gLevel5MMTutorial
gLevel5MMTutorial:
	.INCBIN "assets/level/level_data/world_five/5_mm_tutorial.bin"
	
@ World 6
	
	.GLOBAL gLevel61A
gLevel61A:
	.INCBIN "assets/level/level_data/world_six/6_1A.bin"

	.GLOBAL gLevel61B
gLevel61B:
	.INCBIN "assets/level/level_data/world_six/6_1B.bin"

	.GLOBAL gLevel61Tutorial
gLevel61Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_1_tutorial.bin"


	.GLOBAL gLevel62A
gLevel62A:
	.INCBIN "assets/level/level_data/world_six/6_2A.bin"

	.GLOBAL gLevel62B
gLevel62B:
	.INCBIN "assets/level/level_data/world_six/6_2B.bin"

	.GLOBAL gLevel62Tutorial
gLevel62Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_2_tutorial.bin"
	
	
	.GLOBAL gLevel63A
gLevel63A:
	.INCBIN "assets/level/level_data/world_six/6_3A.bin"

	.GLOBAL gLevel63B
gLevel63B:
	.INCBIN "assets/level/level_data/world_six/6_3B.bin"

	.GLOBAL gLevel63Tutorial 
gLevel63Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_3_tutorial.bin"


	.GLOBAL gLevel64A
gLevel64A:
	.INCBIN "assets/level/level_data/world_six/6_4A.bin"
	
	.GLOBAL gLevel64B
gLevel64B:
	.INCBIN "assets/level/level_data/world_six/6_4B.bin"
	
	.GLOBAL gLevel64Tutorial
gLevel64Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_4_tutorial.bin"


	.GLOBAL gLevel65A
gLevel65A:
	.INCBIN "assets/level/level_data/world_six/6_5A.bin"
	
	.GLOBAL gLevel65B
gLevel65B:
	.INCBIN "assets/level/level_data/world_six/6_5B.bin"
	
	.GLOBAL gLevel65Tutorial
gLevel65Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_5_tutorial.bin"
	
	
	.GLOBAL gLevel66A
gLevel66A:
	.INCBIN "assets/level/level_data/world_six/6_6A.bin"
	
	.GLOBAL gLevel66B
gLevel66B:
	.INCBIN "assets/level/level_data/world_six/6_6B.bin"
	
	.GLOBAL gLevel66Tutorial
gLevel66Tutorial:
	.INCBIN "assets/level/level_data/world_six/6_6_tutorial.bin"
	
	
	.GLOBAL gLevel6MM
gLevel6MM:
	.INCBIN "assets/level/level_data/world_six/6_mm.bin"
	
	.GLOBAL gLevel6DK
gLevel6DK:
	.INCBIN "assets/level/level_data/world_six/6_DK.bin"
	
	.GLOBAL gLevel6MMTutorial
gLevel6MMTutorial:
	.INCBIN "assets/level/level_data/world_six/6_mm_tutorial.bin"

@ World 1+
	
	.GLOBAL gLevel11Plus
gLevel11Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_1_plus.bin"
	
	.GLOBAL gLevelExpert1
gLevelExpert1:
	.INCBIN "assets/level/level_data/expert/expert_1.bin"
	
	
	.GLOBAL gLevel12Plus
gLevel12Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_2_plus.bin"
	
	.GLOBAL gLevelExpert7
gLevelExpert7:
	.INCBIN "assets/level/level_data/expert/expert_7.bin"
	
	
	.GLOBAL gLevel13Plus
gLevel13Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_3_plus.bin"
	
	.GLOBAL gLevelUnusedRevenge
gLevelUnusedRevenge:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_revenge.bin"
	
	
	.GLOBAL gLevel14Plus
gLevel14Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_4_plus.bin"
	
	.GLOBAL gLevelUnusedTheLongWay
gLevelUnusedTheLongWay:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_the_long_way.bin"	
	
	
	.GLOBAL gLevel15Plus
gLevel15Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_5_plus.bin"
	
	.GLOBAL gLevelUnused1
gLevelUnused1:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_1.bin"	
	
	
	.GLOBAL gLevel16Plus
gLevel16Plus:
	.INCBIN "assets/level/level_data/world_one_plus/1_6_plus.bin"
	
	.GLOBAL gLevelUnused2
gLevelUnused2:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_2.bin"
	

	.GLOBAL gLevel1DKPlus
gLevel1DKPlus:
	.INCBIN "assets/level/level_data/world_one_plus/1_DK_plus.bin"
	
	.GLOBAL gLevelUnusedDK1
gLevelUnusedDK1:
	.INCBIN "assets/level/level_data/world_one_plus/1_unused_DK.bin"
	
@ World 2+
	
	.GLOBAL gLevel21Plus
gLevel21Plus:
	.INCBIN "assets/level/level_data/world_two_plus/2_1_plus.bin"
	
	.GLOBAL gLevelExpert2
gLevelExpert2:
	.INCBIN "assets/level/level_data/expert/expert_2.bin"
	
	
	.GLOBAL gLevel22Plus
gLevel22Plus:
	.INCBIN "assets/level/level_data/world_two_plus/2_2_plus.bin"
	
	.GLOBAL gLevelExpert8
gLevelExpert8:
	.INCBIN "assets/level/level_data/expert/expert_8.bin"
	
	
	.GLOBAL gLevel23Plus
gLevel23Plus:
	.INCBIN "assets/level/level_data/world_two_plus/2_3_plus.bin"
	
	.GLOBAL gLevelUnusedOneShotBlue
gLevelUnusedOneShotBlue:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_one_shot_blue.bin"
	
	
	.GLOBAL gLevel24Plus 
gLevel24Plus: 
	.INCBIN "assets/level/level_data/world_two_plus/2_4_plus.bin"
	
	.GLOBAL gLevelUnusedEggAttack
gLevelUnusedEggAttack:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_egg_attack.bin"	
	
	
	.GLOBAL gLevel25Plus 
gLevel25Plus: 
	.INCBIN "assets/level/level_data/world_two_plus/2_5_plus.bin"
	
	.GLOBAL gLevelUnusedDangerFlowersW2
gLevelUnusedDangerFlowersW2:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_danger_flowers_W2.bin"	
	
	
	.GLOBAL gLevel26Plus 
gLevel26Plus: 
	.INCBIN "assets/level/level_data/world_two_plus/2_6_plus.bin"
	
	.GLOBAL gLevelUnusedLaterGator
gLevelUnusedLaterGator:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_later_gator.bin"
	
	
	.GLOBAL gLevel2DKPlus
gLevel2DKPlus:
	.INCBIN "assets/level/level_data/world_two_plus/2_DK_plus.bin"
	
	.GLOBAL gLevelUnusedDK2
gLevelUnusedDK2:
	.INCBIN "assets/level/level_data/world_two_plus/2_unused_DK.bin"	
	
@ World 3+

	.GLOBAL gLevel31Plus
gLevel31Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_1_plus.bin"	
	
	.GLOBAL gLevelExpert3
gLevelExpert3:
	.INCBIN "assets/level/level_data/expert/expert_3.bin"	
	
	
	.GLOBAL gLevel32Plus
gLevel32Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_2_plus.bin"	
	
	.GLOBAL gLevelExpert9
gLevelExpert9:
	.INCBIN "assets/level/level_data/expert/expert_9.bin"	


	.GLOBAL gLevel33Plus
gLevel33Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_3_plus.bin"	
	
	.GLOBAL gLevelUnusedHotFeet
gLevelUnusedHotFeet:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_hot_feet.bin"
	

	.GLOBAL gLevel34Plus
gLevel34Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_4_plus.bin"	
	
	.GLOBAL gLevelUnused3
gLevelUnused3:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_1.bin"
	

	.GLOBAL gLevel35Plus
gLevel35Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_5_plus.bin"	
	
	.GLOBAL gLevelUnused4
gLevelUnused4:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_2.bin"
	
	
	.GLOBAL gLevel36Plus
gLevel36Plus:
	.INCBIN "assets/level/level_data/world_three_plus/3_6_plus.bin"	
	
	.GLOBAL gLevelUnused5
gLevelUnused5:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_3.bin"
	
	
	.GLOBAL gLevel3DKPlus
gLevel3DKPlus:
	.INCBIN "assets/level/level_data/world_three_plus/3_DK_plus.bin"
	
	.GLOBAL gLevelUnusedDK3
gLevelUnusedDK3:
	.INCBIN "assets/level/level_data/world_three_plus/3_unused_DK.bin"	
	
@ World 4+

	.GLOBAL gLevel41Plus
gLevel41Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_1_plus.bin"
	
	.GLOBAL gLevelExpert4
gLevelExpert4:
	.INCBIN "assets/level/level_data/expert/expert_4.bin"	
	
	
	.GLOBAL gLevel42Plus
gLevel42Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_2_plus.bin"
	
	.GLOBAL gLevelExpert10
gLevelExpert10:
	.INCBIN "assets/level/level_data/expert/expert_10.bin"	
	
	
	.GLOBAL gLevel43Plus
gLevel43Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_3_plus.bin"
	
	.GLOBAL gLevelUnusedBooInABox
gLevelUnusedBooInABox:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_boo_in_a_box.bin"
	
	
	.GLOBAL gLevel44Plus
gLevel44Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_4_plus.bin"
	
	.GLOBAL gLevelUnusedTheThwamplet
gLevelUnusedTheThwamplet:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_the_thwamplet.bin"
	
	
	.GLOBAL gLevel45Plus
gLevel45Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_5_plus.bin"
	
	.GLOBAL gLevelUnusedATrickyCandle
gLevelUnusedATrickyCandle:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_a_tricky_candle.bin"
	
	
	.GLOBAL gLevel46Plus
gLevel46Plus:
	.INCBIN "assets/level/level_data/world_four_plus/4_6_plus.bin"
	
	.GLOBAL gLevelUnused6
gLevelUnused6:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_1.bin"
	
	
	.GLOBAL gLevel4DKPlus
gLevel4DKPlus:
	.INCBIN "assets/level/level_data/world_four_plus/4_DK_plus.bin"
	
	.GLOBAL gLevelUnusedDK4
gLevelUnusedDK4:
	.INCBIN "assets/level/level_data/world_four_plus/4_unused_DK.bin"	
	
@ World 5+

	.GLOBAL gLevel51Plus
gLevel51Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_1_plus.bin"
	
	.GLOBAL gLevelExpert5
gLevelExpert5:
	.INCBIN "assets/level/level_data/expert/expert_5.bin"	
	
	
	.GLOBAL gLevel52Plus
gLevel52Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_2_plus.bin"
	
	.GLOBAL gLevelExpert11
gLevelExpert11:
	.INCBIN "assets/level/level_data/expert/expert_11.bin"	
	
	
	.GLOBAL gLevel53Plus
gLevel53Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_3_plus.bin"
	
	.GLOBAL gLevelUnusedKeyToTheKey
gLevelUnusedKeyToTheKey:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_key_to_the_key.bin"
	
	
	.GLOBAL gLevel54Plus
gLevel54Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_4_plus.bin"
	
	.GLOBAL gLevelUnusedDangerFlowersW5
gLevelUnusedDangerFlowersW5:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_danger_flowers_W5.bin"
	
	
	.GLOBAL gLevel55Plus
gLevel55Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_5_plus.bin"
	
	.GLOBAL gLevelUnusedHitasuraKawase
gLevelUnusedHitasuraKawase:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_hitasura_kawase.bin"
	
	
	.GLOBAL gLevel56Plus
gLevel56Plus:
	.INCBIN "assets/level/level_data/world_five_plus/5_6_plus.bin"
	
	.GLOBAL gLevelUnused7
gLevelUnused7:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_1.bin"
	
	
	.GLOBAL gLevel5DKPlus
gLevel5DKPlus:
	.INCBIN "assets/level/level_data/world_five_plus/5_DK_plus.bin"
	
	.GLOBAL gLevelUnusedDK5
gLevelUnusedDK5:
	.INCBIN "assets/level/level_data/world_five_plus/5_unused_DK.bin"	
	
@ World 6+

	.GLOBAL gLevel61Plus
gLevel61Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_1_plus.bin"
	
	.GLOBAL gLevelExpert6
gLevelExpert6:
	.INCBIN "assets/level/level_data/expert/expert_6.bin"	
	
	
	.GLOBAL gLevel62Plus
gLevel62Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_2_plus.bin"
	
	.GLOBAL gLevelExpert12
gLevelExpert12:
	.INCBIN "assets/level/level_data/expert/expert_12.bin"	
	
	
	.GLOBAL gLevel63Plus
gLevel63Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_3_plus.bin"
	
	.GLOBAL gLevelUnusedClimbAndFall
gLevelUnusedClimbAndFall:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_climb_and_fall_1.bin"
	
	
	.GLOBAL gLevel64Plus
gLevel64Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_4_plus.bin"
	
	.GLOBAL gLevelUnused8
gLevelUnused8:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_1.bin"
	
	
	.GLOBAL gLevel65Plus
gLevel65Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_5_plus.bin"
	
	.GLOBAL gLevelUnused9
gLevelUnused9:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_2.bin"
	
	
	.GLOBAL gLevel66Plus
gLevel66Plus:
	.INCBIN "assets/level/level_data/world_six_plus/6_6_plus.bin"
	
	.GLOBAL gLevelUnusedClimbAndFall2
gLevelUnusedClimbAndFall2:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_climb_and_fall_2.bin"
	
	
	.GLOBAL gLevel6DKPlus
gLevel6DKPlus:
	.INCBIN "assets/level/level_data/world_six_plus/6_DK_plus.bin"
	
	.GLOBAL gLevelUnusedDK6
gLevelUnusedDK6:
	.INCBIN "assets/level/level_data/world_six_plus/6_unused_DK.bin"	
	
@ Boss Levels

	.GLOBAL gLevelDKBoss
gLevelDKBoss:
	.INCBIN "assets/level/level_data/boss/DK_boss.bin"
	
	.GLOBAL gLevelDKBossPlus
gLevelDKBossPlus:
	.INCBIN "assets/level/level_data/boss/DK_boss_plus.bin"
	
@ Title demo/Tutorial Input data
	
	.GLOBAL g11BTitleDemo
g11BTitleDemo:
	.INCBIN "assets/demo_inputs/title/1_1B_demo_inputs.bin"
	
	.GLOBAL g26BTitleDemo
g26BTitleDemo:
	.INCBIN "assets/demo_inputs/title/2_6B_demo_inputs.bin"
	
	.GLOBAL g33ATitleDemo
g33ATitleDemo:
	.INCBIN "assets/demo_inputs/title/3_3A_demo_inputs.bin"
	
	.GLOBAL g44BTitleDemo
g44BTitleDemo:
	.INCBIN "assets/demo_inputs/title/4_4B_demo_inputs.bin"
	
	.GLOBAL g52ATitleDemo
g52ATitleDemo:
	.INCBIN "assets/demo_inputs/title/5_2A_demo_inputs.bin"
	
	.GLOBAL g63BTitleDemo
g63BTitleDemo:
	.INCBIN "assets/demo_inputs/title/6_3B_demo_inputs.bin"
	
@ World 1 Tutorials
	
	.GLOBAL g11TutorialDemo
g11TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_1_tutorial_inputs.bin"

	.GLOBAL g12TutorialDemo
g12TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_2_tutorial_inputs.bin"
	
	.GLOBAL g13TutorialDemo
g13TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_3_tutorial_inputs.bin"

	.GLOBAL g14TutorialDemo
g14TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_4_tutorial_inputs.bin"
	
	.GLOBAL g15TutorialDemo
g15TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_5_tutorial_inputs.bin"

	.GLOBAL g16TutorialDemo
g16TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_6_tutorial_inputs.bin"
	
	.GLOBAL g1MMTutorialDemo
g1MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_one/1_mm_tutorial_inputs.bin"
	
@ World 2 Tutorials
	
	.GLOBAL g21TutorialDemo
g21TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_1_tutorial_inputs.bin"

	.GLOBAL g22TutorialDemo
g22TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_2_tutorial_inputs.bin"
	
	.GLOBAL g23TutorialDemo
g23TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_3_tutorial_inputs.bin"

	.GLOBAL g24TutorialDemo
g24TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_4_tutorial_inputs.bin"
	
	.GLOBAL g25TutorialDemo
g25TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_5_tutorial_inputs.bin"

	.GLOBAL g26TutorialDemo
g26TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_6_tutorial_inputs.bin"
	
	.GLOBAL g2MMTutorialDemo
g2MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_two/2_mm_tutorial_inputs.bin"
	
@ World 3 Tutorials
	
	.GLOBAL g31TutorialDemo
g31TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_1_tutorial_inputs.bin"

	.GLOBAL g32TutorialDemo
g32TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_2_tutorial_inputs.bin"
	
	.GLOBAL g33TutorialDemo
g33TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_3_tutorial_inputs.bin"

	.GLOBAL g34TutorialDemo
g34TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_4_tutorial_inputs.bin"
	
	.GLOBAL g35TutorialDemo
g35TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_5_tutorial_inputs.bin"

	.GLOBAL g36TutorialDemo
g36TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_6_tutorial_inputs.bin"
	
	.GLOBAL g3MMTutorialDemo
g3MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_three/3_mm_tutorial_inputs.bin"
	
@ World 4 Tutorials
	
	.GLOBAL g41TutorialDemo
g41TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_1_tutorial_inputs.bin"

	.GLOBAL g42TutorialDemo
g42TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_2_tutorial_inputs.bin"
	
	.GLOBAL g43TutorialDemo
g43TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_3_tutorial_inputs.bin"

	.GLOBAL g44TutorialDemo
g44TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_4_tutorial_inputs.bin"
	
	.GLOBAL g45TutorialDemo
g45TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_5_tutorial_inputs.bin"

	.GLOBAL g46TutorialDemo
g46TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_6_tutorial_inputs.bin"
	
	.GLOBAL g4MMTutorialDemo
g4MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_four/4_mm_tutorial_inputs.bin"
	
@ World 5 Tutorials
	
	.GLOBAL g51TutorialDemo
g51TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_1_tutorial_inputs.bin"

	.GLOBAL g52TutorialDemo
g52TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_2_tutorial_inputs.bin"
	
	.GLOBAL g53TutorialDemo
g53TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_3_tutorial_inputs.bin"

	.GLOBAL g54TutorialDemo
g54TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_4_tutorial_inputs.bin"
	
	.GLOBAL g55TutorialDemo
g55TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_5_tutorial_inputs.bin"

	.GLOBAL g56TutorialDemo
g56TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_6_tutorial_inputs.bin"
	
	.GLOBAL g5MMTutorialDemo
g5MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_five/5_mm_tutorial_inputs.bin"
	
@ World 6 Tutorials
	
	.GLOBAL g61TutorialDemo
g61TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_1_tutorial_inputs.bin"

	.GLOBAL g62TutorialDemo
g62TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_2_tutorial_inputs.bin"
	
	.GLOBAL g63TutorialDemo
g63TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_3_tutorial_inputs.bin"

	.GLOBAL g64TutorialDemo
g64TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_4_tutorial_inputs.bin"
	
	.GLOBAL g65TutorialDemo
g65TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_5_tutorial_inputs.bin"

	.GLOBAL g66TutorialDemo
g66TutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_6_tutorial_inputs.bin"
	
	.GLOBAL g6MMTutorialDemo
g6MMTutorialDemo:
	.INCBIN "assets/demo_inputs/tutorial/world_six/6_mm_tutorial_inputs.bin"
	
	
	.GLOBAL gUnknown_08B28D84
gUnknown_08B28D84:
	.INCBIN "assets/unused/gUnknown_08B28D84.bin"
	
	.GLOBAL gEWorldMenuData2
gEWorldMenuData2:
	.INCBIN "assets/menu/EWorldMenuData2.bin"

	.GLOBAL gUnknown_08B2AD88
gUnknown_08B2AD88:
	.INCBIN "baserom.gba", 0xB2AD88, 0xB2C384-0xB2AD88
	
	
	
	.GLOBAL gWorldOneTable
gWorldOneTable:
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel11A @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000061 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel11B @ Level Data
	.2byte 120 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel12A @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000061 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel12B @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel13A @ Level Data
	.2byte 120 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000064 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel13B @ Level Data
	.2byte 150 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000085 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel14A @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel14B @ Level Data
	.2byte 150 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C5 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel15A @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel15B @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel16A @ Level Data
	.2byte 150 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevel16B @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldOneMiniMarioBG @ Background Data
	.4byte gLevel1MM @ Level Data
	.2byte 90 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOneBossBG @ Background Data
	.4byte gLevel1DK @ Level Data
	.2byte 180 @ Timer
	.byte 13 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTwoTable
gWorldTwoTable:
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel21A @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000062 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel21B @ Level Data
	.2byte 120 @ Timer
	.byte 19 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000087 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel22A @ Level Data
	.2byte 120 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000026 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel22B @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C6 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel23A @ Level Data
	.2byte 120 @ Timer
	.byte 19 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel23B @ Level Data
	.2byte 150 @ Timer
	.byte 20 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel24A @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel24B @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel25A @ Level Data
	.2byte 120 @ Timer
	.byte 20 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel25B @ Level Data
	.2byte 180 @ Timer
	.byte 18 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel26A @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000026 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoHorizontalBG @ Background Data
	.4byte gLevel26B @ Level Data
	.2byte 180 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldTwoMiniMarioBG @ Background Data
	.4byte gLevel2MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoBossBG @ Background Data
	.4byte gLevel2DK @ Level Data
	.2byte 180 @ Timer
	.byte 66 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldThreeTable
gWorldThreeTable:
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel31A @ Level Data
	.2byte 120 @ Timer
	.byte 33 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000030 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel31B @ Level Data
	.2byte 120 @ Timer
	.byte 34 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000D0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel32A @ Level Data
	.2byte 120 @ Timer
	.byte 31 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel32B @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel33A @ Level Data
	.2byte 120 @ Timer
	.byte 33 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000063 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel33B @ Level Data
	.2byte 150 @ Timer
	.byte 34 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000083 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel34A @ Level Data
	.2byte 120 @ Timer
	.byte 31 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel34B @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel35A @ Level Data
	.2byte 120 @ Timer
	.byte 33 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel35B @ Level Data
	.2byte 120 @ Timer
	.byte 34 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel36A @ Level Data
	.2byte 120 @ Timer
	.byte 31 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevel36B @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldThreeMiniMarioBG @ Background Data
	.4byte gLevel3MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldThreeBossBG @ Background Data
	.4byte gLevel3DK @ Level Data
	.2byte 150 @ Timer
	.byte 67 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000010 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFourTable
gWorldFourTable:
	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel41A @ Level Data
	.2byte 120 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel41B @ Level Data
	.2byte 120 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel42A @ Level Data
	.2byte 150 @ Timer
	.byte 29 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel42B @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel43A @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000060 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel43B @ Level Data
	.2byte 150 @ Timer
	.byte 29 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel44A @ Level Data
	.2byte 120 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000063 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel44B @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldFourHorizontalBG @ Background Data
	.4byte gLevel45A @ Level Data
	.2byte 120 @ Timer
	.byte 29 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000061 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel45B @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000083 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel46A @ Level Data
	.2byte 120 @ Timer
	.byte 28 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel46B @ Level Data
	.2byte 180 @ Timer
	.byte 29 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldFourMiniMarioBG @ Background Data
	.4byte gLevel4MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourBossBG @ Background Data
	.4byte gLevel4DK @ Level Data
	.2byte 150 @ Timer
	.byte 13 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFiveTable
gWorldFiveTable:
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel51A @ Level Data
	.2byte 120 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel51B @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel52A @ Level Data
	.2byte 120 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel52B @ Level Data
	.2byte 150 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel53A @ Level Data
	.2byte 120 @ Timer
	.byte 24 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel53B @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel54A @ Level Data
	.2byte 120 @ Timer
	.byte 26 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel54B @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused


	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel55A @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel55B @ Level Data
	.2byte 180 @ Timer
	.byte 26 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevel56A @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000063 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel56B @ Level Data
	.2byte 180 @ Timer
	.byte 25 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000081 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	

	.4byte gWorldFiveMiniMarioBG @ Background Data
	.4byte gLevel5MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFiveBossBG @ Background Data
	.4byte gLevel5DK @ Level Data
	.2byte 150 @ Timer
	.byte 0x42 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldSixTable
gWorldSixTable:
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel61A @ Level Data
	.2byte 120 @ Timer
	.byte 35 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel61B @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel62A @ Level Data
	.2byte 120 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000060 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel62B @ Level Data
	.2byte 150 @ Timer
	.byte 38 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000085 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel63A @ Level Data
	.2byte 120 @ Timer
	.byte 35 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel63B @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000C4 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel64A @ Level Data
	.2byte 150 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000066 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel64B @ Level Data
	.2byte 180 @ Timer
	.byte 38 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000083 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel65A @ Level Data
	.2byte 150 @ Timer
	.byte 35 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000021 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel65B @ Level Data
	.2byte 180 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000C5 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel66A @ Level Data
	.2byte 150 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000062 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevel66B @ Level Data
	.2byte 180 @ Timer
	.byte 38 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000085 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixMiniMarioBG @ Background Data
	.4byte gLevel6MM @ Level Data
	.2byte 120 @ Timer
	.byte 12 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixBossBG @ Background Data
	.4byte gLevel6DK @ Level Data
	.2byte 180 @ Timer
	.byte 67 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000007 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTable
gWorldTable:
	.4byte 14 @ Level Count
	.4byte gWorldOneTable
	.4byte gWorldOneData
	.4byte 14 @ Level Count
	.4byte gWorldTwoTable
	.4byte gWorldTwoData
	.4byte 14 @ Level Count
	.4byte gWorldThreeTable
	.4byte gWorldThreeData
	.4byte 14 @ Level Count
	.4byte gWorldFourTable
	.4byte gWorldFourData
	.4byte 14 @ Level Count
	.4byte gWorldFiveTable
	.4byte gWorldFiveData
	.4byte 14 @ Level Count
	.4byte gWorldSixTable
	.4byte gWorldSixData

	.GLOBAL gUnknown_08B2CA5C
gUnknown_08B2CA5C:
	.4byte 6 @ World Count
	.4byte gWorldTable

	.GLOBAL gWorldOnePlusTable
gWorldOnePlusTable:
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel11Plus @ Level Data
	.2byte 120 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel12Plus @ Level Data
	.2byte 120 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldOnePlusVerticalBG @ Background Data
	.4byte gLevel13Plus @ Level Data
	.2byte 150 @ Timer
	.byte 8 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel14Plus @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel15Plus @ Level Data
	.2byte 150 @ Timer
	.byte 9 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevel16Plus @ Level Data
	.2byte 120 @ Timer
	.byte 8 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldOneBossBG @ Background Data
	.4byte gLevel1DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 13 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTwoPlusTable
gWorldTwoPlusTable:
	.4byte gWorldTwoPlusVerticalBG @ Background Data
	.4byte gLevel21Plus @ Level Data
	.2byte 150 @ Timer
	.byte 18 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel22Plus @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel23Plus @ Level Data
	.2byte 150 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldTwoPlusVerticalBG @ Background Data
	.4byte gLevel24Plus @ Level Data
	.2byte 120 @ Timer
	.byte 18 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel25Plus @ Level Data
	.2byte 150 @ Timer
	.byte 19 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldTwoPlusHorizontalBG @ Background Data
	.4byte gLevel26Plus @ Level Data
	.2byte 150 @ Timer
	.byte 20 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldTwoBossBG @ Background Data
	.4byte gLevel2DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 66 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldThreePlusTable
gWorldThreePlusTable:
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel31Plus @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusVerticalBG @ Background Data
	.4byte gLevel32Plus @ Level Data
	.2byte 150 @ Timer
	.byte 31 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel33Plus @ Level Data
	.2byte 150 @ Timer
	.byte 33 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel34Plus @ Level Data
	.2byte 150 @ Timer
	.byte 34 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusVerticalBG @ Background Data
	.4byte gLevel35Plus @ Level Data
	.2byte 150 @ Timer
	.byte 30 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevel36Plus @ Level Data
	.2byte 150 @ Timer
	.byte 31 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldThreePlusBossBG @ Background Data
	.4byte gLevel3DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 67 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000010 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldFourPlusTable
gWorldFourPlusTable:
	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel41Plus @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel42Plus @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel43Plus @ Level Data
	.2byte 150 @ Timer
	.byte 0x1D @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel44Plus @ Level Data
	.2byte 150 @ Timer
	.byte 27 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel45Plus @ Level Data
	.2byte 150 @ Timer
	.byte 28 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevel46Plus @ Level Data
	.2byte 150 @ Timer
	.byte 0x1D @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFourBossBG @ Background Data
	.4byte gLevel4DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 0x0D @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFivePlusTable
gWorldFivePlusTable:
	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel51Plus @ Level Data
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel52Plus @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel53Plus @ Level Data
	.2byte 150 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFivePlusVerticalBG @ Background Data
	.4byte gLevel54Plus
	.2byte 150 @ Timer
	.byte 24 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusVerticalBG @ Background Data
	.4byte gLevel55Plus @ Level Data
	.2byte 150 @ Timer
	.byte 25 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevel56Plus @ Level Data
	.2byte 150 @ Timer
	.byte 26 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E5 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldFiveBossBG @ Background Data
	.4byte gLevel5DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 66 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldSixPlusTable
gWorldSixPlusTable:
	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel61Plus @ Level Data
	.2byte 150 @ Timer
	.byte 35 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel62Plus @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E7 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel63Plus @ Level Data
	.2byte 150 @ Timer
	.byte 37 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixPlusVerticalBG @ Background Data
	.4byte gLevel64Plus @ Level Data
	.2byte 150 @ Timer
	.byte 38 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusVerticalBG @ Background Data
	.4byte gLevel65Plus @ Level Data
	.2byte 150 @ Timer
	.byte 35 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevel66Plus @ Level Data
	.2byte 150 @ Timer
	.byte 36 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.4byte gWorldSixBossBG @ Background Data
	.4byte gLevel6DKPlus @ Level Data
	.2byte 120 @ Timer
	.byte 67 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gWorldPlusTable
gWorldPlusTable:
	.4byte 7 @ Level Count
	.4byte gWorldOnePlusTable
	.4byte gWorldOneData
	.4byte 7 @ Level Count
	.4byte gWorldTwoPlusTable
	.4byte gWorldTwoData
	.4byte 7 @ Level Count
	.4byte gWorldThreePlusTable
	.4byte gWorldThreeData
	.4byte 7 @ Level Count
	.4byte gWorldFourPlusTable
	.4byte gWorldFourData
	.4byte 7 @ Level Count
	.4byte gWorldFivePlusTable
	.4byte gWorldFiveData
	.4byte 7 @ Level Count
	.4byte gWorldSixPlusTable
	.4byte gWorldSixData

	.GLOBAL gUnknown_08B2CDF4
gUnknown_08B2CDF4:
	.4byte 6 @ World Count
	.4byte gWorldPlusTable
	
	.GLOBAL gExpert1Table
gExpert1Table:
	.4byte gWorldOneHorizontalBG @ Background Data
	.4byte gLevelExpert1 @ Level Data
	.2byte 150 @ Timer
	.byte 48 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert2Table
gExpert2Table:
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevelExpert2 @ Level Data
	.2byte 150 @ Timer
	.byte 49 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E2 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert3Table
gExpert3Table:
	.4byte gWorldThreeHorizontalBG @ Background Data
	.4byte gLevelExpert3 @ Level Data
	.2byte 150 @ Timer
	.byte 50 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert4Table
gExpert4Table:
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevelExpert4 @ Level Data
	.2byte 150 @ Timer
	.byte 51 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert5Table
gExpert5Table:
	.4byte gWorldFiveHorizontalBG @ Background Data
	.4byte gLevelExpert5 @ Level Data
	.2byte 150 @ Timer
	.byte 52 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
.GLOBAL gExpert6Table
gExpert6Table:
	.4byte gWorldSixHorizontalBG @ Background Data
	.4byte gLevelExpert6 @ Level Data
	.2byte 180 @ Timer
	.byte 53 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpertWorldTable
gExpertWorldTable:
	.4byte 1 @ Level Count
	.4byte gExpert1Table
	.4byte gWorldOneData
	.4byte 1 @ Level Count
	.4byte gExpert2Table
	.4byte gWorldTwoData
	.4byte 1 @ Level Count
	.4byte gExpert3Table
	.4byte gWorldThreeData
	.4byte 1 @ Level Count
	.4byte gExpert4Table
	.4byte gWorldFourData
	.4byte 1 @ Level Count
	.4byte gExpert5Table
	.4byte gWorldFiveData
	.4byte 1 @ Level Count
	.4byte gExpert6Table
	.4byte gWorldSixData
	
	.GLOBAL gUnknown_08B2CEBC
gUnknown_08B2CEBC:
	.4byte 6 @ World Count
	.4byte gExpertWorldTable
	
	.GLOBAL gExpert7Table
gExpert7Table:
	.4byte gWorldOnePlusHorizontalBG @ Background Data
	.4byte gLevelExpert7 @ Level Data
	.2byte 150 @ Timer
	.byte 54 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert8Table
gExpert8Table:
	.4byte gWorldTwoPlusVerticalBG @ Background Data
	.4byte gLevelExpert8 @ Level Data
	.2byte 120 @ Timer
	.byte 55 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	.GLOBAL gExpert9Table
gExpert9Table:
	.4byte gWorldThreePlusHorizontalBG @ Background Data
	.4byte gLevelExpert9 @ Level Data
	.2byte 120 @ Timer
	.byte 56 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert10Table
gExpert10Table:
	.4byte gWorldFourPlusHorizontalBG @ Background Data
	.4byte gLevelExpert10 @ Level Data
	.2byte 150 @ Timer
	.byte 57 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E0 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpert11Table
gExpert11Table:
	.4byte gWorldFivePlusHorizontalBG @ Background Data
	.4byte gLevelExpert11 @ Level Data
	.2byte 120 @ Timer
	.byte 58 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E1 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused	
	
	.GLOBAL gExpert12Table
gExpert12Table:
	.4byte gWorldSixPlusHorizontalBG @ Background Data
	.4byte gLevelExpert12 @ Level Data
	.2byte 180 @ Timer
	.byte 59 @ Song ID
	.byte 2 @ Level Type (Unused)
	.4byte 0x000000E3 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gExpertWorldTable2
gExpertWorldTable2:
	.4byte 1 @ Level Count
	.4byte gExpert7Table
	.4byte gWorldOneData
	
	.4byte 1 @ Level Count
	.4byte gExpert8Table
	.4byte gWorldTwoData
	
	.4byte 1 @ Level Count
	.4byte gExpert9Table
	.4byte gWorldThreeData
	
	.4byte 1 @ Level Count
	.4byte gExpert10Table
	.4byte gWorldFourData
	
	.4byte 1 @ Level Count
	.4byte gExpert11Table
	.4byte gWorldFiveData
	
	.4byte 1 @ Level Count
	.4byte gExpert12Table
	.4byte gWorldSixData
	
	.GLOBAL gUnknown_08B2CF84
gUnknown_08B2CF84:
	.4byte 6 @ World Count
	.4byte gExpertWorldTable2

	.GLOBAL gBossLevelTable
gBossLevelTable:
@ DK-Boss
	.4byte gDKBossBG @ Background Data
	.4byte gLevelDKBoss @ Level Data
	.2byte 300 @ Timer
	.byte 39 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ DK-Boss+
	.4byte gDKBossPlusBG @ Background Data
	.4byte gLevelDKBossPlus @ Level Data
	.2byte 300 @ Timer
	.byte 40 @ Song ID
	.byte 4 @ Level Type (Unused)
	.4byte 0x00000024 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gBossWorldTable
gBossWorldTable:
	.4byte 2 @ Level Count
	.4byte gBossLevelTable
	.4byte gBossLevelData

	.BALIGN 4
	.GLOBAL gUnknown_08B2CFC0
gUnknown_08B2CFC0:
	.4byte 1 @ World Count
	.4byte gBossWorldTable

	.GLOBAL gTitleDemoLevelIDs
gTitleDemoLevelIDs:
	.byte 0x01
	.byte 0x0B
	.byte 0x04
	.byte 0x07
	.byte 0x02
	.byte 0x05
	.byte 0x00
	.byte 0x00

	.GLOBAL gTitleDemoInputTable
gTitleDemoInputTable:
	.4byte g11BTitleDemo
	.4byte g26BTitleDemo
	.4byte g33ATitleDemo
	.4byte g44BTitleDemo
	.4byte g52ATitleDemo
	.4byte g63BTitleDemo

	.GLOBAL gWorldOneTutorialLevelTable
gWorldOneTutorialLevelTable:
@ 1-1 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel11Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-2 Tutorial	
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel12Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-3 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel13Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000024 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-4 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel14Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-5 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel15Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-6 Tutorial
	.4byte gWorldOneVerticalBG @ Background Data
	.4byte gLevel16Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 1-mm Tutorial
	.4byte gWorldOneMiniMarioBG @ Background Data
	.4byte gLevel1MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldTwoTutorialLevelTable
gWorldTwoTutorialLevelTable:
@ 2-1 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel21Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000082 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-2 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel22Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000046 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-3 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel23Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000082 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-4 Tutorial	
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel24Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-5 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel25Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000002 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 2-6 Tutorial
	.4byte gWorldTwoVerticalBG @ Background Data
	.4byte gLevel26Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000040 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

@ 2-mm Tutorial	
	.4byte gWorldTwoMiniMarioBG @ Background Data
	.4byte gLevel2MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldThreeTutorialLevelTable
gWorldThreeTutorialLevelTable:
@ 3-1 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel31Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000010 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-2 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel32Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-3 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel33Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000002 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-4 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel34Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-5 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel35Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

@ 3-6 Tutorial
	.4byte gWorldThreeVerticalBG @ Background Data
	.4byte gLevel36Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 3-mm Tutorial
	.4byte gWorldThreeMiniMarioBG @ Background Data
	.4byte gLevel3MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldFourTutorialLevelTable
gWorldFourTutorialLevelTable:
@ 4-1 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel41Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-2 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel42Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-3 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel43Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000020 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-4 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel44Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-5 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel45Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

@ 4-6 Tutorial
	.4byte gWorldFourVerticalBG @ Background Data
	.4byte gLevel46Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 4-mm Tutorial
	.4byte gWorldFourMiniMarioBG @ Background Data
	.4byte gLevel4MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused

	
	.GLOBAL gWorldFiveTutorialLevelTable
gWorldFiveTutorialLevelTable:
@ 5-1 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel51Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-2 Tutorial	
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel52Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-3 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel53Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-4 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel54Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000002 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-5 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel55Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-6 Tutorial
	.4byte gWorldFiveVerticalBG @ Background Data
	.4byte gLevel56Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000001 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 5-mm Tutorial
	.4byte gWorldFiveMiniMarioBG @ Background Data
	.4byte gLevel5MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gWorldSixTutorialLevelTable
gWorldSixTutorialLevelTable:
@ 6-1 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel61Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-2 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel62Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-3 Tutorial	
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel63Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000022 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-4 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel64Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000000 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-5 Tutorial	
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel65Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000024 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-6 Tutorial
	.4byte gWorldSixVerticalBG @ Background Data
	.4byte gLevel66Tutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 1 @ Level Type (Unused)
	.4byte 0x00000080 @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
@ 6-mm Tutorial
	.4byte gWorldSixMiniMarioBG @ Background Data
	.4byte gLevel6MMTutorial @ Level Data
	.2byte 150 @ Timer
	.byte 0 @ Song ID
	.byte 3 @ Level Type (Unused)
	.4byte 0x000000FF @ Level Flags (Binary)
	.4byte 0x00000000 @ Unused
	
	.GLOBAL gTutorialWorldTable
gTutorialWorldTable:

	.4byte 7 @ Level Count
	.4byte gWorldOneTutorialLevelTable
	.4byte gWorldOneData
	
	.4byte 7 @ Level Count
	.4byte gWorldTwoTutorialLevelTable
	.4byte gWorldTwoData
	
	.4byte 7 @ Level Count
	.4byte gWorldThreeTutorialLevelTable
	.4byte gWorldThreeData
	
	.4byte 7 @ Level Count
	.4byte gWorldFourTutorialLevelTable
	.4byte gWorldFourData
	
	.4byte 7 @ Level Count
	.4byte gWorldFiveTutorialLevelTable
	.4byte gWorldFiveData
	
	.4byte 7 @ Level Count
	.4byte gWorldSixTutorialLevelTable
	.4byte gWorldSixData
	
	.GLOBAL gUnknown_08B2D378
gUnknown_08B2D378:
	.4byte 6 @ World Count
	.4byte gTutorialWorldTable

	.GLOBAL gTutorialDemoInputTable
gTutorialDemoInputTable:

@ World One
	.4byte g11TutorialDemo
	.4byte g12TutorialDemo
	.4byte g13TutorialDemo
	.4byte g14TutorialDemo
	.4byte g15TutorialDemo
	.4byte g16TutorialDemo
	.4byte g1MMTutorialDemo

@ World Two
	.4byte g21TutorialDemo
	.4byte g22TutorialDemo
	.4byte g23TutorialDemo
	.4byte g24TutorialDemo
	.4byte g25TutorialDemo
	.4byte g26TutorialDemo
	.4byte g2MMTutorialDemo

@ World Three
	.4byte g31TutorialDemo
	.4byte g32TutorialDemo
	.4byte g33TutorialDemo
	.4byte g34TutorialDemo
	.4byte g35TutorialDemo
	.4byte g36TutorialDemo
	.4byte g3MMTutorialDemo
	
@ World Four
	.4byte g41TutorialDemo
	.4byte g42TutorialDemo
	.4byte g43TutorialDemo
	.4byte g44TutorialDemo
	.4byte g45TutorialDemo
	.4byte g46TutorialDemo
	.4byte g4MMTutorialDemo
	
@ World Five
	.4byte g51TutorialDemo
	.4byte g52TutorialDemo
	.4byte g53TutorialDemo
	.4byte g54TutorialDemo
	.4byte g55TutorialDemo
	.4byte g56TutorialDemo
	.4byte g5MMTutorialDemo
	
@ World Six
	.4byte g61TutorialDemo
	.4byte g62TutorialDemo
	.4byte g63TutorialDemo
	.4byte g64TutorialDemo
	.4byte g65TutorialDemo
	.4byte g66TutorialDemo
	.4byte g6MMTutorialDemo
	
@ Unknown
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.GLOBAL gUnknown_08B2D440
gUnknown_08B2D440:
	.INCBIN "baserom.gba", 0xB2D440, 0xB2D574-0xB2D440

	.GLOBAL gUnknown_08B2D574
gUnknown_08B2D574:
	.INCBIN "baserom.gba", 0xB2D574, 0xB2D578-0xB2D574

	.GLOBAL gUnknown_08B2D578
gUnknown_08B2D578:
	.INCBIN "baserom.gba", 0xB2D578, 0xB2DC74-0xB2D578

	.GLOBAL gUnknown_08B2DC74
gUnknown_08B2DC74:
	.INCBIN "baserom.gba", 0xB2DC74, 0xB2DEBC-0xB2DC74
	
	.GLOBAL gUnknown_08B2DEBC
gUnknown_08B2DEBC:
	.INCBIN "baserom.gba", 0xB2DEBC, 0xB2E8D8-0xB2DEBC

	.GLOBAL gUnknown_08B2E8D8
gUnknown_08B2E8D8:
	.INCBIN "baserom.gba", 0xB2E8D8, 0xB2E90C-0xB2E8D8
	
	.GLOBAL gUnknown_08B2E90C
gUnknown_08B2E90C:
	.4byte 0x00000001
	.4byte gUnknown_08B2E8D8 @ Movie Data -- Early Opening Cutscene
	.INCBIN "baserom.gba", 0xB2E914, 0xB2F03C-0xB2E914

	.GLOBAL gUnknown_08B2F03C
gUnknown_08B2F03C:
	.INCBIN "baserom.gba", 0xB2F03C, 0xB2F070-0xB2F03C

	.GLOBAL gUnknown_08B2F070
gUnknown_08B2F070:
	.4byte 0x00000001
	.4byte gUnknown_08B2F03C @ Movie Data -- Movie ID 6
	.INCBIN "baserom.gba", 0xB2F078, 0xB2F584-0xB2F078

	.GLOBAL gUnknown_08B2F584
gUnknown_08B2F584:
	.INCBIN "baserom.gba", 0xB2F584, 0xB2F5B8-0xB2F584

	.GLOBAL gUnknown_08B2F5B8
gUnknown_08B2F5B8:
	.4byte 0x00000001
	.4byte gUnknown_08B2F584 @ Movie Data -- Movie ID 5
	.INCBIN "baserom.gba", 0xB2F5C0, 0xB2FFA8-0xB2F5C0

	.GLOBAL gUnknown_08B2FFA8
gUnknown_08B2FFA8:
	.INCBIN "baserom.gba", 0xB2FFA8, 0xB2FFDC-0xB2FFA8

	.GLOBAL gUnknown_08B2FFDC
gUnknown_08B2FFDC:
	.4byte 0x00000001
	.4byte gUnknown_08B2FFA8 @ Movie Data -- Movie ID 2
	.INCBIN "baserom.gba", 0xB2FFE4, 0xB30734-0xB2FFE4

	.GLOBAL gUnknown_08B30734
gUnknown_08B30734:
	.INCBIN "baserom.gba", 0xB30734, 0xB30768-0xB30734

	.GLOBAL gUnknown_08B30768
gUnknown_08B30768:
	.4byte 0x00000001
	.4byte gUnknown_08B30734 @ Movie Data -- Movie ID 4
	.INCBIN "baserom.gba", 0xB30770, 0xB30F60-0xB30770

	.GLOBAL gUnknown_08B30F60
gUnknown_08B30F60:
	.INCBIN "baserom.gba", 0xB30F60, 0xB30F94-0xB30F60

	.GLOBAL gUnknown_08B30F94
gUnknown_08B30F94:
	.4byte 0x00000001
	.4byte gUnknown_08B30F60 @ Movie Data -- Movie ID 1
	.INCBIN "baserom.gba", 0xB30F9C, 0xB320E4-0xB30F9C

	.GLOBAL gUnknown_08B320E4
gUnknown_08B320E4:
	.INCBIN "baserom.gba", 0xB320E4, 0xB32118-0xB320E4

	.GLOBAL gUnknown_08B32118
gUnknown_08B32118:
	.4byte 0x00000001
	.4byte gUnknown_08B320E4 @ Movie Data -- Movie ID 0
	.INCBIN "baserom.gba", 0xB32120, 0xB35F8C-0xB32120

	.GLOBAL gUnknown_08B35F8C
gUnknown_08B35F8C:
	.INCBIN "baserom.gba", 0xB35F8C, 0xB35FC0-0xB35F8C

	.GLOBAL gUnknown_08B35FC0
gUnknown_08B35FC0:
	.4byte 0x00000001
	.4byte gUnknown_08B35F8C @ Movie Data -- Movie ID 7
	.INCBIN "baserom.gba", 0xB35FC8, 0xB37134-0xB35FC8

	.GLOBAL gUnknown_08B37134
gUnknown_08B37134:
	.INCBIN "baserom.gba", 0xB37134, 0xB37168-0xB37134

	.GLOBAL gUnknown_08B37168
gUnknown_08B37168:
	.4byte 0x00000001
	.4byte gUnknown_08B37134 @ Movie Data -- Movie ID 3
	.INCBIN "baserom.gba", 0xB37170, 0xB372F8-0xB37170

	.GLOBAL gUnknown_08B372F8
gUnknown_08B372F8:
	.INCBIN "baserom.gba", 0xB372F8, 0xB3732C-0xB372F8

	.GLOBAL gUnknown_08B3732C
gUnknown_08B3732C:
	.4byte 0x00000001
	.4byte gUnknown_08B372F8 @ Movie Data -- Movie ID 8
	.INCBIN "baserom.gba", 0xB37334, 0xB373F0-0xB37334

	.GLOBAL gUnknown_08B373F0
gUnknown_08B373F0:
	.INCBIN "baserom.gba", 0xB373F0, 0xB37424-0xB373F0

	.GLOBAL gMovieUnusedPlusWorldsUnlocked
gMovieUnusedPlusWorldsUnlocked:
	.4byte 0x00000001
	.4byte gUnknown_08B373F0 @ Movie Data -- Unused Plus Worlds Unlocked Screen
	
	.GLOBAL gCardEDataRevenge
gCardEDataRevenge:
	.INCBIN "assets/card-e/Revenge.bin"
	
	.GLOBAL gCardEDataTheLongWay
gCardEDataTheLongWay:
	.INCBIN "assets/card-e/The_Long_Way.bin"
	
	.GLOBAL gCardEDataOneShotBlue
gCardEDataOneShotBlue:
	.INCBIN "assets/card-e/One_Shot_Blue.bin"
	
	.GLOBAL gCardEDataEggAttack
gCardEDataEggAttack:
	.INCBIN "assets/card-e/Egg_Attack.bin"
	
	.GLOBAL gCardEDataLaterGator
gCardEDataLaterGator:
	.INCBIN "assets/card-e/Later_Gator.bin"
	
	.GLOBAL gCardEDataHotFeet
gCardEDataHotFeet:
	.INCBIN "assets/card-e/Hot_Feet.bin"
	
	.GLOBAL gCardEDataBooInABox
gCardEDataBooInABox:
	.INCBIN "assets/card-e/Boo_In_A_Box.bin"

	.GLOBAL gCardEDataTheThwamplet
gCardEDataTheThwamplet:
	.INCBIN "assets/card-e/The_Thwamplet.bin"

	.GLOBAL gCardEDataATrickyCandle
gCardEDataATrickyCandle:
	.INCBIN "assets/card-e/A_Tricky_Candle.bin"

	.GLOBAL gCardEDataKeyToTheKey
gCardEDataKeyToTheKey:
	.INCBIN "assets/card-e/Key_To_The_Key.bin"

	.GLOBAL gCardEDataDangerFlowers
gCardEDataDangerFlowers:
	.INCBIN "assets/card-e/Danger_Flowers.bin"

	.GLOBAL gCardEDataClimbAndFall
gCardEDataClimbAndFall:
	.INCBIN "assets/card-e/Climb_And_Fall.bin"

	.GLOBAL gCardEDataDummy2
gCardEDataDummy2:
	.INCBIN "assets/card-e/Dummy2.bin"

	.GLOBAL gUnknown_08B3961C
gUnknown_08B3961C:
	.INCBIN "baserom.gba", 0xB3961C, 0xB39C1C-0xB3961C

	.GLOBAL gUnknown_08B39C1C
gUnknown_08B39C1C:
	.INCBIN "baserom.gba", 0xB39C1C, 0xB39F1C-0xB39C1C

	.GLOBAL gUnknown_08B39F1C
gUnknown_08B39F1C:
	.INCBIN "baserom.gba", 0xB39F1C, 0xB39F48-0xB39F1C

	.GLOBAL gUnknown_08B39F48
gUnknown_08B39F48:
	.4byte 0x00000000
	.4byte 0x00000100
	.4byte 0x00000200
	.4byte 0x00000001
	.4byte 0x00000101
	.4byte 0x00000201	
	.4byte 0x00000002
	.4byte 0x00000102
	.4byte 0x00000202
	.4byte 0x00000003
	.4byte 0x00000103
	.4byte 0x00000203
	.4byte 0x00000004
	.4byte 0x00000104
	.4byte 0x00000204
	.4byte 0x00000005
	.4byte 0x00000105
	.4byte 0x00000205
	.4byte 0x00000006
	.4byte 0x00000106
	.4byte 0x00000206
	.4byte 0x00000007
	.4byte 0x00000107
	.4byte 0x00000207
	.4byte 0x00000008
	.4byte 0x00000108
	.4byte 0x00000208
	.4byte 0x00000009
	.4byte 0x00000109
	.4byte 0x00000209
	.4byte 0x0000000A

	.GLOBAL gUnknown_08B39FC4
gUnknown_08B39FC4:
	.4byte 0x00000000
	.4byte 0x00000040
	.4byte 0x00000080
	.4byte 0x000000C0
	.4byte 0x00000100
	.4byte 0x00000140
	.4byte 0x00000180
	.4byte 0x000001C0
	.4byte 0x00000200
	.4byte 0x00000240
	.4byte 0x00000280
	.4byte 0x000002C0
	.4byte 0x00000300
	.4byte 0x00000340
	.4byte 0x00000380
	.4byte 0x000003C0

	.GLOBAL gUnknown_08B3A004
gUnknown_08B3A004:
	.INCBIN "baserom.gba", 0xB3A004, 0xB3A0A8-0xB3A004

	.GLOBAL gUnknown_08B3A0A8
gUnknown_08B3A0A8:
	.INCBIN "baserom.gba", 0xB3A0A8, 0xB3A4AC-0xB3A0A8

	.GLOBAL gUnknown_08B3A4AC
gUnknown_08B3A4AC:
	.4byte 0x04000062 @ SOUND1CNT_H
	.4byte 0x04000064 @ SOUND1CNT_X
	.4byte 0x07FFF800
	
	.4byte 0x04000068 @ SOUND2CNT_L
	.4byte 0x0400006C @ SOUND2CNT_H
	.4byte 0x07FFF800
	
	.4byte 0x04000072 @ SOUND3CNT_H
	.4byte 0x04000074 @ SOUND3CNT_X
	.4byte 0x07FFF800
	
	.4byte 0x04000078 @ SOUND4CNT_L
	.4byte 0x0400007C @ SOUND4CNT_H
	.4byte 0x0000FFFF
	
	

	.GLOBAL gUnknown_08B3A4DC
gUnknown_08B3A4DC:
	.2byte 0x00FA
	.2byte 0x0000

	.GLOBAL gUnknown_08B3A4E0
gUnknown_08B3A4E0:
	.INCBIN "baserom.gba", 0xB3A4E0, 0xD7B10C-0xB3A4E0

	.GLOBAL gUnknown_08D7B10C
gUnknown_08D7B10C:
	.2byte 0x0046
	.2byte 0x0000

	.GLOBAL gMusicTable1
gMusicTable1:
	.4byte BGM_1AXM
	.2byte 0x0064 @ Volume

	.GLOBAL gMusicTable2
gMusicTable2:
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte HAMMERXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte WINXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte FAIL_1XM
	.2byte 0x0050 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte FAIL_2XM
	.2byte 0x0050 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte FAIL_3XM
	.2byte 0x0050 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte TIMEXM
	.2byte 0x006E @ Volume
	.byte 0x04
	.byte 0x08
	.byte 0x07
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte INTRO_2XM
	.2byte 0x005A @ Volume
	.byte 0x05
	.byte 0x07
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_1CXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_1BXM
	.2byte 0x0064 @ Volume
	.byte 0x04
	.byte 0x04
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte TITLEXM
	.2byte 0x0050 @ Volume
	.byte 0x02
	.byte 0x07
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte RESULTSXM
	.2byte 0x004B @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_MM1XM
	.2byte 0x0064 @ Volume
	.byte 0x06
	.byte 0x04
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BOSS1XM
	.2byte 0x0078 @ Volume
	.byte 0x05
	.byte 0x05
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte MM_PROTECTXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte GAMEOVERXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte INTRO_1XM
	.2byte 0x005A @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte INTRO_3XM
	.2byte 0x005A @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_2AXM
	.2byte 0x0064 @ Volume
	.byte 0x06
	.byte 0x03
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_2BXM
	.2byte 0x0064 @ Volume
	.byte 0x07
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_2CXM
	.2byte 0x0064 @ Volume
	.byte 0x04
	.byte 0x03
	.byte 0x01
	.byte 0x00
	.byte 0x00
	.byte 0x00	
	
	.4byte WIN2XM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00	
	
	.4byte WIN3XM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MOVIEXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_5AXM
	.2byte 0x008C @ Volume
	.byte 0x05
	.byte 0x05
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_5BXM
	.2byte 0x008C @ Volume
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_5CXM
	.2byte 0x008C @ Volume
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_4AXM
	.2byte 0x0078 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_4BXM
	.2byte 0x0082 @ Volume
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00

	.4byte BGM_4CXM
	.2byte 0x0078 @ Volume
	.byte 0x05
	.byte 0x05
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK01XM
	.2byte 0x00AA @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK02XM
	.2byte 0x0096 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BGM_MM_INTROXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte DK03XM
	.2byte 0x008C @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK04XM
	.2byte 0x00AA @ Volume
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK05XM
	.2byte 0x00B4 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK06XM
	.2byte 0x00B4 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK07XM
	.2byte 0x00B4 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK08XM
	.2byte 0x00B4 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK_BOSS01XM
	.2byte 0x0082 @ Volume
	.byte 0x04
	.byte 0x05
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte BOSS2XM
	.2byte 0x008C @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte MOVIE2XM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MINIGAMEXM
	.2byte 0x0064 @ Volume
	.byte 0x04
	.byte 0x04
	.byte 0x04
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte MOVIE3XM
	.2byte 0x00A0 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MOVIE4XM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MOVIE5XM
	.2byte 0x00A0 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MOVIE6XM
	.2byte 0x0082 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte CREDITSXM
	.2byte 0x0082 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_1XM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_2XM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_3XM
	.2byte 0x0096 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_4XM
	.2byte 0x0078 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_5XM
	.2byte 0x008C @ Volume
	.byte 0x05
	.byte 0x05
	.byte 0x05
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_6XM
	.2byte 0x00BE @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_7XM
	.2byte 0x0064 @ Volume
	.byte 0x02
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_8XM
	.2byte 0x0064 @ Volume
	.byte 0x06
	.byte 0x03
	.byte 0x04
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_9XM
	.2byte 0x00B4 @ Volume
	.byte 0x02
	.byte 0x02
	.byte 0x02
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_10XM
	.2byte 0x0082 @ Volume
	.byte 0x05
	.byte 0x05
	.byte 0x05
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte EXPERT_11XM
	.2byte 0x00A0 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x0
	
	.4byte EXPERT_12XM
	.2byte 0x00BE @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte INTRO_FINALBOSSXM
	.2byte 0x006E @ Volume
	.byte 0x06
	.byte 0x02
	.byte 0x05
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MIDCREDITSXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte MIDBOSS_ENDXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte FAIL_4XM
	.2byte 0x0050 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte INTRO_FINALBOSS2XM
	.2byte 0x006E @ Volume
	.byte 0x06
	.byte 0x02
	.byte 0x05
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte WIN_FINALBOSSXM
	.2byte 0x008C @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x01
	.byte 0x00
	.byte 0x00
	
	.4byte BOSS3XM
	.2byte 0x0069 @ Volume
	.byte 0x06
	.byte 0x06
	.byte 0x06
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte DK_BOSS02XM
	.2byte 0x00C8 @ Volume
	.byte 0x05
	.byte 0x05
	.byte 0x05
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte INTRO_MINIGAMEXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.4byte OUTRO_MINIGAMEXM
	.2byte 0x0064 @ Volume
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	.byte 0x00
	
	.GLOBAL gUnknown_08D7B458 @ Sound Sample Data
gUnknown_08D7B458:
	.INCBIN "baserom.gba", 0xD7B458, 0xEBBF60-0xD7B458

	.GLOBAL gUnknown_08EBBF60 @ Instrument Data 1
gUnknown_08EBBF60:
	.INCBIN "baserom.gba", 0xEBBF60, 0xEBFE90-0xEBBF60

	.GLOBAL gUnknown_08EBFE90 @ Instrument Data 2
gUnknown_08EBFE90:
	.INCBIN "baserom.gba", 0xEBFE90, 0xECCA3C-0xEBFE90
	
BGM_1AXM:
	.INCBIN "assets/music/BGM_1AXM.bin"
	
HAMMERXM:
	.INCBIN "assets/music/HAMMERXM.bin"
	
WINXM:
	.INCBIN "assets/music/WINXM.bin"
	
FAIL_1XM:
	.INCBIN "assets/music/FAIL_1XM.bin"
	
FAIL_2XM:
	.INCBIN "assets/music/FAIL_2XM.bin"
	
FAIL_3XM:
	.INCBIN "assets/music/FAIL_3XM.bin"
	
TIMEXM:
	.INCBIN "assets/music/TIMEXM.bin"
	
INTRO_2XM:
	.INCBIN "assets/music/INTRO_2XM.bin"
	
BGM_1CXM:
	.INCBIN "assets/music/BGM_1CXM.bin"
	
BGM_1BXM:
	.INCBIN "assets/music/BGM_1BXM.bin"
	
TITLEXM:
	.INCBIN "assets/music/TITLEXM.bin"
	
RESULTSXM:
	.INCBIN "assets/music/RESULTSXM.bin"
	
BGM_MM1XM:
	.INCBIN "assets/music/BGM_MM1XM.bin"
	
BOSS1XM:
	.INCBIN "assets/music/BOSS1XM.bin"
	
MM_PROTECTXM:
	.INCBIN "assets/music/MM_PROTECTXM.bin"
	
GAMEOVERXM:
	.INCBIN "assets/music/GAMEOVERXM.bin"
	
INTRO_1XM:
	.INCBIN "assets/music/INTRO_1XM.bin"
	
INTRO_3XM:
	.INCBIN "assets/music/INTRO_3XM.bin"
	
BGM_2AXM:
	.INCBIN "assets/music/BGM_2AXM.bin"
	
BGM_2BXM:
	.INCBIN "assets/music/BGM_2BXM.bin"
	
BGM_2CXM:
	.INCBIN "assets/music/BGM_2CXM.bin"
	
WIN2XM:
	.INCBIN "assets/music/WIN2XM.bin"
	
WIN3XM:
	.INCBIN "assets/music/WIN3XM.bin"
	
MOVIEXM:
	.INCBIN "assets/music/MOVIEXM.bin"
	
BGM_5AXM:
	.INCBIN "assets/music/BGM_5AXM.bin"
	
BGM_5BXM:
	.INCBIN "assets/music/BGM_5BXM.bin"
	
BGM_5CXM:
	.INCBIN "assets/music/BGM_5CXM.bin"
	
BGM_4AXM:
	.INCBIN "assets/music/BGM_4AXM.bin"
	
BGM_4BXM:
	.INCBIN "assets/music/BGM_4BXM.bin"
	
BGM_4CXM:
	.INCBIN "assets/music/BGM_4CXM.bin"
	
DK01XM:
	.INCBIN "assets/music/DK01XM.bin"
	
DK02XM:
	.INCBIN "assets/music/DK02XM.bin"
	
BGM_MM_INTROXM:
	.INCBIN "assets/music/BGM_MM_INTROXM.bin"
	
DK03XM:
	.INCBIN "assets/music/DK03XM.bin"
	
DK04XM:
	.INCBIN "assets/music/DK04XM.bin"
	
DK05XM:
	.INCBIN "assets/music/DK05XM.bin"
	
DK06XM:
	.INCBIN "assets/music/DK06XM.bin"
	
DK07XM:
	.INCBIN "assets/music/DK07XM.bin"
	
DK08XM:
	.INCBIN "assets/music/DK08XM.bin"
	
DK_BOSS01XM:
	.INCBIN "assets/music/DK_BOSS01XM.bin"
	
BOSS2XM:
	.INCBIN "assets/music/BOSS2XM.bin"
	
MOVIE2XM:
	.INCBIN "assets/music/MOVIE2XM.bin"
	
MINIGAMEXM:
	.INCBIN "assets/music/MINIGAMEXM.bin"
	
MOVIE3XM:
	.INCBIN "assets/music/MOVIE3XM.bin"
	
MOVIE4XM:
	.INCBIN "assets/music/MOVIE4XM.bin"
	
MOVIE5XM:
	.INCBIN "assets/music/MOVIE5XM.bin"
	
MOVIE6XM:
	.INCBIN "assets/music/MOVIE6XM.bin"
	
CREDITSXM:
	.INCBIN "assets/music/CREDITSXM.bin"
	
EXPERT_1XM:
	.INCBIN "assets/music/EXPERT_1XM.bin"
	
EXPERT_2XM:
	.INCBIN "assets/music/EXPERT_2XM.bin"
	
EXPERT_3XM:
	.INCBIN "assets/music/EXPERT_3XM.bin"
	
EXPERT_4XM:
	.INCBIN "assets/music/EXPERT_4XM.bin"
	
EXPERT_5XM:
	.INCBIN "assets/music/EXPERT_5XM.bin"
	
EXPERT_6XM:
	.INCBIN "assets/music/EXPERT_6XM.bin"
	
EXPERT_7XM:
	.INCBIN "assets/music/EXPERT_7XM.bin"
	
EXPERT_8XM:
	.INCBIN "assets/music/EXPERT_8XM.bin"
	
EXPERT_9XM:
	.INCBIN "assets/music/EXPERT_9XM.bin"
	
EXPERT_10XM:
	.INCBIN "assets/music/EXPERT_10XM.bin"
	
EXPERT_11XM:
	.INCBIN "assets/music/EXPERT_11XM.bin"
	
EXPERT_12XM:
	.INCBIN "assets/music/EXPERT_12XM.bin"
	
INTRO_FINALBOSSXM:
	.INCBIN "assets/music/INTRO_FINALBOSSXM.bin"
	
MIDCREDITSXM:
	.INCBIN "assets/music/MIDCREDITSXM.bin"
	
MIDBOSS_ENDXM:
	.INCBIN "assets/music/MIDBOSS_ENDXM.bin"
	
FAIL_4XM:
	.INCBIN "assets/music/FAIL_4XM.bin"
	
INTRO_FINALBOSS2XM:
	.INCBIN "assets/music/INTRO_FINALBOSS2XM.bin"
	
WIN_FINALBOSSXM:
	.INCBIN "assets/music/WIN_FINALBOSSXM.bin"
	
BOSS3XM:
	.INCBIN "assets/music/BOSS3XM.bin"
	
DK_BOSS02XM:
	.INCBIN "assets/music/DK_BOSS02XM.bin"
	
INTRO_MINIGAMEXM:
	.INCBIN "assets/music/INTRO_MINIGAMEXM.bin"
	
OUTRO_MINIGAMEXM:
	.INCBIN "assets/music/OUTRO_MINIGAMEXM.bin"
	

