#!/usr/bin/make -f

GBAGFX   := tools/gbagfx/gbagfx
RLE      := tools/rle/rle

TMPDIR := .extract

. != mkdir -p $(TMPDIR) $(TMPDIR)/palettes

EXTRACTED_FILES := \
	graphics/Intro.png \
	graphics/Intro.tilemap \
	graphics/Title0.png \
	graphics/Title0.tilemap \
	graphics/Title1.png \
	graphics/Title1.tilemap \
	graphics/FileSelect.png \
	graphics/FileSelect0.tilemap \
	graphics/Score.png \
	graphics/PressStart.png \
	graphics/BackToGame.png \
	graphics/Unknown2EAE80.png \
	graphics/Arrows.png \
	graphics/Unknown2E8EA8.png \
	graphics/Unknown5FB7E4.png \
	graphics/Unknown5FF274.png \
	graphics/Unknown601104.png \
	graphics/Unknown602F94.png \
	graphics/Unknown606A24.png \
	graphics/Unknown60A4B4.png \
	graphics/Unknown60C344.png \
	graphics/Unknown60FDD4.png \
	graphics/Expert.png \
	graphics/Unknown615C04.png \
	graphics/Unknown617080.png \
	graphics/Unknown6172F0.png \
	graphics/Unknown617830.png \
	graphics/Unknown617B04.png \
	graphics/Unknown6180B4.png \
	graphics/palettes/000.pal \
	graphics/palettes/001.pal \
	graphics/palettes/002.pal \
	graphics/palettes/003.pal \
	graphics/palettes/004.pal \
	graphics/palettes/005.pal \
	graphics/palettes/006.pal \
	graphics/palettes/007.pal \
	graphics/palettes/008.pal \
	graphics/palettes/009.pal \
	graphics/palettes/010.pal \
	graphics/palettes/011.pal \
	graphics/palettes/012.pal \
	graphics/palettes/013.pal \
	graphics/palettes/014.pal \
	graphics/palettes/015.pal \
	graphics/palettes/016.pal \
	graphics/palettes/017.pal \
	graphics/palettes/018.pal \
	graphics/palettes/019.pal \
	graphics/palettes/020.pal \
	graphics/palettes/021.pal \
	graphics/palettes/022.pal \
	graphics/palettes/023.pal \
	graphics/palettes/024.pal \
	graphics/palettes/025.pal \
	graphics/palettes/026.pal \
	graphics/palettes/027.pal \
	graphics/palettes/028.pal \
	graphics/palettes/029.pal \
	graphics/palettes/030.pal \
	graphics/palettes/031.pal \
	graphics/palettes/032.pal \
	graphics/palettes/033.pal \
	graphics/palettes/034.pal \
	graphics/palettes/035.pal \
	graphics/palettes/036.pal \
	graphics/palettes/037.pal \
	graphics/palettes/038.pal \
	graphics/palettes/039.pal \
	graphics/palettes/040.pal \
	graphics/palettes/041.pal \
	graphics/palettes/042.pal \
	graphics/palettes/043.pal \
	graphics/palettes/044.pal \
	graphics/palettes/045.pal \
	graphics/palettes/046.pal \
	graphics/palettes/047.pal \
	graphics/palettes/048.pal \
	graphics/palettes/049.pal \
	graphics/palettes/050.pal \
	graphics/palettes/051.pal \
	graphics/palettes/052.pal \
	graphics/palettes/053.pal \
	graphics/palettes/054.pal \
	graphics/palettes/055.pal \
	graphics/palettes/056.pal \
	graphics/palettes/057.pal \
	graphics/palettes/058.pal \
	graphics/palettes/059.pal \
	graphics/palettes/060.pal \
	graphics/palettes/061.pal \
	graphics/palettes/062.pal \
	graphics/palettes/063.pal \
	graphics/palettes/064.pal \
	graphics/palettes/065.pal \
	graphics/palettes/066.pal \
	graphics/palettes/067.pal \
	graphics/palettes/068.pal \
	graphics/palettes/069.pal \
	graphics/palettes/070.pal \
	graphics/palettes/071.pal \
	graphics/palettes/072.pal \
	graphics/palettes/073.pal \
	graphics/palettes/074.pal \
	graphics/palettes/075.pal \
	graphics/palettes/076.pal \
	graphics/palettes/077.pal \
	graphics/palettes/078.pal \
	graphics/palettes/079.pal \
	graphics/palettes/080.pal \
	graphics/palettes/081.pal \
	graphics/palettes/082.pal \
	graphics/palettes/083.pal \
	graphics/palettes/084.pal \
	graphics/palettes/085.pal \
	graphics/palettes/086.pal \
	graphics/palettes/087.pal \
	graphics/palettes/088.pal \
	graphics/palettes/089.pal \
	graphics/palettes/090.pal \
	graphics/palettes/091.pal \
	graphics/palettes/092.pal \
	graphics/palettes/093.pal \
	graphics/palettes/094.pal \
	graphics/palettes/095.pal \
	graphics/palettes/096.pal \
	graphics/palettes/097.pal \
	graphics/palettes/098.pal \
	graphics/palettes/099.pal \
	graphics/palettes/100.pal \
	graphics/palettes/101.pal \
	graphics/palettes/102.pal \
	graphics/palettes/103.pal \
	graphics/palettes/104.pal \
	graphics/palettes/105.pal \
	graphics/palettes/106.pal \
	graphics/palettes/107.pal \
	graphics/palettes/108.pal \
	graphics/palettes/109.pal \
	graphics/palettes/110.pal \
	graphics/palettes/111.pal \
	graphics/palettes/112.pal \
	graphics/palettes/113.pal \
	graphics/palettes/114.pal \
	graphics/palettes/115.pal \
	graphics/palettes/116.pal \
	graphics/palettes/117.pal \
	graphics/palettes/118.pal \
	graphics/palettes/119.pal \
	graphics/palettes/120.pal \
	graphics/palettes/121.pal \
	graphics/palettes/122.pal \
	graphics/palettes/123.pal \
	graphics/palettes/124.pal \
	graphics/palettes/125.pal \
	graphics/palettes/126.pal \
	graphics/palettes/127.pal \
	graphics/palettes/128.pal \
	graphics/palettes/129.pal \
	graphics/palettes/130.pal \
	graphics/palettes/131.pal \
	graphics/palettes/132.pal \
	graphics/palettes/133.pal \
	graphics/palettes/134.pal \
	graphics/palettes/135.pal \
	graphics/palettes/136.pal \
	graphics/palettes/137.pal \
	graphics/palettes/138.pal \
	graphics/palettes/139.pal \
	graphics/palettes/140.pal \
	graphics/palettes/141.pal \
	graphics/palettes/142.pal \
	graphics/palettes/143.pal \
	graphics/palettes/144.pal \
	graphics/palettes/145.pal \
	graphics/palettes/146.pal \
	graphics/palettes/147.pal \
	graphics/palettes/148.pal \
	graphics/palettes/149.pal \
	graphics/palettes/150.pal \
	graphics/palettes/151.pal \
	graphics/palettes/152.pal \
	graphics/palettes/153.pal \
	graphics/palettes/154.pal \
	graphics/palettes/155.pal \
	graphics/palettes/156.pal \
	graphics/palettes/157.pal \
	graphics/palettes/158.pal \
	graphics/palettes/159.pal \
	graphics/palettes/160.pal \
	graphics/palettes/161.pal \
	graphics/palettes/162.pal \
	graphics/palettes/163.pal \
	graphics/palettes/164.pal \
	graphics/palettes/165.pal \
	graphics/palettes/166.pal \
	graphics/palettes/167.pal \
	graphics/palettes/168.pal \
	graphics/palettes/169.pal \
	graphics/palettes/170.pal \
	graphics/palettes/171.pal \
	graphics/palettes/172.pal \
	graphics/palettes/173.pal \
	graphics/palettes/174.pal \
	graphics/palettes/175.pal \
	graphics/palettes/176.pal \
	graphics/palettes/177.pal \
	graphics/palettes/178.pal \
	graphics/palettes/179.pal \
	graphics/palettes/180.pal \
	graphics/palettes/181.pal \
	graphics/palettes/182.pal \
	graphics/palettes/183.pal \
	graphics/palettes/184.pal \
	graphics/palettes/185.pal \
	graphics/palettes/186.pal \
	graphics/palettes/187.pal \
	graphics/palettes/188.pal \
	graphics/palettes/189.pal \
	graphics/palettes/190.pal \
	graphics/palettes/191.pal \
	graphics/palettes/192.pal \
	graphics/palettes/193.pal \
	graphics/palettes/194.pal \
	graphics/palettes/195.pal \
	graphics/palettes/196.pal \
	graphics/palettes/197.pal \
	graphics/palettes/198.pal \
	graphics/palettes/199.pal \
	graphics/palettes/200.pal \
	graphics/palettes/201.pal \
	graphics/palettes/202.pal \
	graphics/palettes/203.pal \
	graphics/palettes/204.pal \
	graphics/palettes/205.pal \
	graphics/palettes/206.pal \
	graphics/palettes/207.pal \
	graphics/palettes/208.pal \
	graphics/palettes/209.pal \
	graphics/palettes/210.pal \
	graphics/palettes/211.pal \
	graphics/palettes/212.pal \
	graphics/palettes/213.pal \
	graphics/palettes/214.pal \
	graphics/palettes/215.pal \
	graphics/palettes/216.pal \
	graphics/palettes/217.pal \
	graphics/palettes/218.pal \
	graphics/palettes/219.pal \
	graphics/palettes/220.pal \
	graphics/palettes/221.pal \
	graphics/palettes/222.pal \
	graphics/palettes/223.pal \
	graphics/palettes/224.pal \
	graphics/palettes/225.pal \
	graphics/palettes/226.pal \
	graphics/palettes/227.pal \
	graphics/palettes/228.pal \
	graphics/palettes/229.pal \
	graphics/palettes/230.pal \
	graphics/palettes/231.pal \
	graphics/palettes/232.pal \
	graphics/palettes/233.pal \
	graphics/palettes/234.pal \
	graphics/palettes/235.pal \
	graphics/palettes/236.pal \
	graphics/palettes/237.pal \
	graphics/palettes/238.pal \
	graphics/palettes/239.pal \
	graphics/palettes/240.pal \
	graphics/palettes/241.pal \
	graphics/palettes/242.pal \
	graphics/palettes/243.pal \
	graphics/palettes/244.pal \
	graphics/palettes/245.pal \
	graphics/palettes/246.pal \
	graphics/palettes/247.pal \
	graphics/palettes/248.pal \
	graphics/palettes/249.pal \
	graphics/palettes/250.pal \
	graphics/palettes/251.pal \
	graphics/palettes/252.pal \
	graphics/palettes/253.pal \
	graphics/palettes/254.pal \
	graphics/palettes/255.pal \
	graphics/palettes/256.pal \
	graphics/palettes/257.pal \
	graphics/palettes/258.pal \
	graphics/palettes/259.pal \
	graphics/palettes/260.pal \
	graphics/palettes/261.pal \
	graphics/palettes/262.pal \
	graphics/palettes/263.pal \
	graphics/palettes/264.pal \
	graphics/palettes/265.pal \
	graphics/palettes/266.pal \
	graphics/palettes/267.pal \
	graphics/palettes/268.pal \
	graphics/palettes/269.pal \
	graphics/palettes/270.pal \
	graphics/palettes/271.pal \
	graphics/palettes/272.pal \
	graphics/palettes/273.pal \
	graphics/palettes/274.pal \
	graphics/palettes/275.pal \
	graphics/palettes/276.pal \
	graphics/palettes/277.pal \
	graphics/palettes/278.pal \
	graphics/palettes/279.pal \
	graphics/palettes/280.pal \
	graphics/palettes/281.pal \
	graphics/palettes/282.pal \
	graphics/palettes/283.pal \
	graphics/palettes/284.pal \
	graphics/palettes/285.pal \
	graphics/palettes/286.pal \
	graphics/palettes/287.pal \
	graphics/palettes/288.pal \
	graphics/palettes/289.pal \
	graphics/palettes/290.pal \
	graphics/palettes/291.pal \
	graphics/palettes/292.pal \
	graphics/palettes/293.pal \
	graphics/palettes/294.pal \
	graphics/palettes/295.pal \
	graphics/palettes/296.pal \
	graphics/palettes/297.pal \
	graphics/palettes/298.pal \
	graphics/palettes/299.pal \
	graphics/palettes/300.pal \
	graphics/palettes/301.pal \
	graphics/palettes/302.pal \
	graphics/palettes/303.pal

all: $(EXTRACTED_FILES)
#	$(RM) -r $(TMPDIR)

clean:
	$(RM) -r graphics/*.png graphics/*.lz graphics/*.rle graphics/*.tilemap graphics/palettes
	$(RM) -r $(TMPDIR)/*

# canned recipe to extract bytes from binary file
# parameters: offset, size
romextract = dd if=$< of=$@ bs=1 skip=$$(($(1))) count=$$(($(2)))

$(TMPDIR)/Intro.png: $(TMPDIR)/Intro.4bpp $(TMPDIR)/Intro.gbapal
$(TMPDIR)/Intro.4bpp.lz:     baserom.gba ; $(call romextract,0x866AC0,0xC60)
$(TMPDIR)/Intro.gbapal:      baserom.gba ; $(call romextract,0x867360,0x1E)
$(TMPDIR)/Intro.tilemap.rle: baserom.gba ; $(call romextract,0x867254,0x106)

$(TMPDIR)/Title0.png: $(TMPDIR)/Title0.8bpp $(TMPDIR)/Title0.gbapal
$(TMPDIR)/Title0.8bpp.lz:     baserom.gba ; $(call romextract,0x8675D8,0x2780)
$(TMPDIR)/Title0.gbapal:      baserom.gba ; $(call romextract,0x86A128,0x200)
# unknown size
$(TMPDIR)/Title0.tilemap.lz:  baserom.gba ; $(call romextract,0x869D80,0x40000)

$(TMPDIR)/Title1.png: $(TMPDIR)/Title1.8bpp $(TMPDIR)/Title1.gbapal
$(TMPDIR)/Title1.8bpp.lz:     baserom.gba ; $(call romextract,0x86A3A0,0x26B8)
$(TMPDIR)/Title1.gbapal:      baserom.gba ; $(call romextract,0x86CDCC,0x200)
$(TMPDIR)/Title1.tilemap.rle: baserom.gba ; $(call romextract,0x86CA80,0x346)

$(TMPDIR)/FileSelect.png: $(TMPDIR)/FileSelect.4bpp $(TMPDIR)/FileSelect.gbapal
$(TMPDIR)/FileSelect.4bpp.lz: baserom.gba ; $(call romextract,0x7B3070,0x2FFC)
#$(TMPDIR)/FileSelect.gbapal:  baserom.gba ; $(call romextract,0x7B7B8C,0x200)
$(TMPDIR)/FileSelect.gbapal:  baserom.gba ; $(call romextract,0x7B7B8C,0x20)
$(TMPDIR)/FileSelect0.tilemap.rle: baserom.gba ; $(call romextract,0x7b6094,0x1000)

$(TMPDIR)/PressStart.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/PressStart.4bpp: baserom.gba ; $(call romextract,0x5F49D8,0x200)

$(TMPDIR)/Score.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/Score.4bpp: baserom.gba ; $(call romextract,0x2F0BE4,0x80)

$(TMPDIR)/BackToGame.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/BackToGame.4bpp: baserom.gba ; $(call romextract,0x2E8908,0x100)

$(TMPDIR)/Unknown2EAE80.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/Unknown2EAE80.4bpp: baserom.gba ; $(call romextract,0x2EAE80,0x80)

$(TMPDIR)/Arrows.png: GBAGFX_FLAGS := -width 4
$(TMPDIR)/Arrows.4bpp: baserom.gba ; $(call romextract,0x2E8A58,0x400)

$(TMPDIR)/Unknown2E8EA8.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/Unknown2E8EA8.8bpp: baserom.gba ; $(call romextract,0x2E8EA8,0x200)

$(TMPDIR)/Unknown5FB7E4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown5FB7E4.4bpp: baserom.gba ; $(call romextract,0x5FB7E4,0x3800)

$(TMPDIR)/Unknown5FF274.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown5FF274.4bpp: baserom.gba ; $(call romextract,0x5FF274,0x1C00)

$(TMPDIR)/Unknown601104.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown601104.4bpp: baserom.gba ; $(call romextract,0x601104,0x1C00)

$(TMPDIR)/Unknown602F94.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown602F94.4bpp: baserom.gba ; $(call romextract,0x602F94,0x3800)

$(TMPDIR)/Unknown606A24.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown606A24.4bpp: baserom.gba ; $(call romextract,0x606A24,0x3800)

$(TMPDIR)/Unknown60A4B4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown60A4B4.4bpp: baserom.gba ; $(call romextract,0x60A4B4,0x1C00)

$(TMPDIR)/Unknown60C344.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown60C344.4bpp: baserom.gba ; $(call romextract,0x60C344,0x3800)

$(TMPDIR)/Unknown60FDD4.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown60FDD4.4bpp: baserom.gba ; $(call romextract,0x60FDD4,0x1C00)

$(TMPDIR)/Expert.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Expert.4bpp: baserom.gba ; $(call romextract,0x614764,0x400)

$(TMPDIR)/Unknown615C04.png: GBAGFX_FLAGS := -width 8
$(TMPDIR)/Unknown615C04.4bpp: baserom.gba ; $(call romextract,0x615C04,0xC00)

$(TMPDIR)/Unknown617080.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/Unknown617080.4bpp: baserom.gba ; $(call romextract,0x617080,0x100)

$(TMPDIR)/Unknown6172F0.4bpp: baserom.gba ; $(call romextract,0x6172F0,0x280)

$(TMPDIR)/Unknown617830.4bpp: baserom.gba ; $(call romextract,0x617830,0x140)

$(TMPDIR)/Unknown617B04.4bpp: baserom.gba ; $(call romextract,0x617B04,0x140)

$(TMPDIR)/Unknown6180B4.png: GBAGFX_FLAGS := -width 2
$(TMPDIR)/Unknown6180B4.4bpp: baserom.gba ; $(call romextract,0x6180B4,0x100)

$(TMPDIR)/palettes/000.gbapal: baserom.gba ; $(call romextract,0x81D98,0x200)
$(TMPDIR)/palettes/001.gbapal: baserom.gba ; $(call romextract,0x81F98,0x200)
$(TMPDIR)/palettes/002.gbapal: baserom.gba ; $(call romextract,0x82198,0x200)
$(TMPDIR)/palettes/003.gbapal: baserom.gba ; $(call romextract,0x82398,0x200)
$(TMPDIR)/palettes/004.gbapal: baserom.gba ; $(call romextract,0x82598,0x200)
$(TMPDIR)/palettes/005.gbapal: baserom.gba ; $(call romextract,0x82798,0x200)
$(TMPDIR)/palettes/006.gbapal: baserom.gba ; $(call romextract,0x82998,0x200)
$(TMPDIR)/palettes/007.gbapal: baserom.gba ; $(call romextract,0x82B98,0x200)
$(TMPDIR)/palettes/008.gbapal: baserom.gba ; $(call romextract,0x82D98,0x200)
$(TMPDIR)/palettes/009.gbapal: baserom.gba ; $(call romextract,0x82F98,0x200)
$(TMPDIR)/palettes/010.gbapal: baserom.gba ; $(call romextract,0x83198,0x200)
$(TMPDIR)/palettes/011.gbapal: baserom.gba ; $(call romextract,0x83398,0x200)
$(TMPDIR)/palettes/012.gbapal: baserom.gba ; $(call romextract,0x83598,0x200)
$(TMPDIR)/palettes/013.gbapal: baserom.gba ; $(call romextract,0x83798,0x200)
$(TMPDIR)/palettes/014.gbapal: baserom.gba ; $(call romextract,0x83998,0x200)
$(TMPDIR)/palettes/015.gbapal: baserom.gba ; $(call romextract,0x83B98,0x200)
$(TMPDIR)/palettes/016.gbapal: baserom.gba ; $(call romextract,0x83D98,0x200)
$(TMPDIR)/palettes/017.gbapal: baserom.gba ; $(call romextract,0x83F98,0x200)
$(TMPDIR)/palettes/018.gbapal: baserom.gba ; $(call romextract,0x84198,0x200)
$(TMPDIR)/palettes/019.gbapal: baserom.gba ; $(call romextract,0x84398,0x200)
$(TMPDIR)/palettes/020.gbapal: baserom.gba ; $(call romextract,0x84598,0x200)
$(TMPDIR)/palettes/021.gbapal: baserom.gba ; $(call romextract,0x84798,0x200)
$(TMPDIR)/palettes/022.gbapal: baserom.gba ; $(call romextract,0x84998,0x200)
$(TMPDIR)/palettes/023.gbapal: baserom.gba ; $(call romextract,0x84B98,0x200)
$(TMPDIR)/palettes/024.gbapal: baserom.gba ; $(call romextract,0x84D98,0x200)
$(TMPDIR)/palettes/025.gbapal: baserom.gba ; $(call romextract,0x84F98,0x200)
$(TMPDIR)/palettes/026.gbapal: baserom.gba ; $(call romextract,0x85198,0x200)
$(TMPDIR)/palettes/027.gbapal: baserom.gba ; $(call romextract,0x85398,0x200)
$(TMPDIR)/palettes/028.gbapal: baserom.gba ; $(call romextract,0x85598,0x200)
$(TMPDIR)/palettes/029.gbapal: baserom.gba ; $(call romextract,0x85798,0x200)
$(TMPDIR)/palettes/030.gbapal: baserom.gba ; $(call romextract,0x85998,0x200)
$(TMPDIR)/palettes/031.gbapal: baserom.gba ; $(call romextract,0x85B98,0x200)
$(TMPDIR)/palettes/032.gbapal: baserom.gba ; $(call romextract,0x85D98,0x200)
$(TMPDIR)/palettes/033.gbapal: baserom.gba ; $(call romextract,0x85F98,0x200)
$(TMPDIR)/palettes/034.gbapal: baserom.gba ; $(call romextract,0x86198,0x200)
$(TMPDIR)/palettes/035.gbapal: baserom.gba ; $(call romextract,0x86398,0x200)
$(TMPDIR)/palettes/036.gbapal: baserom.gba ; $(call romextract,0x86598,0x200)
$(TMPDIR)/palettes/037.gbapal: baserom.gba ; $(call romextract,0x86798,0x200)
$(TMPDIR)/palettes/038.gbapal: baserom.gba ; $(call romextract,0x86998,0x200)
$(TMPDIR)/palettes/039.gbapal: baserom.gba ; $(call romextract,0x86B98,0x200)
$(TMPDIR)/palettes/040.gbapal: baserom.gba ; $(call romextract,0x86D98,0x200)
$(TMPDIR)/palettes/041.gbapal: baserom.gba ; $(call romextract,0x86F98,0x200)
$(TMPDIR)/palettes/042.gbapal: baserom.gba ; $(call romextract,0x87198,0x200)
$(TMPDIR)/palettes/043.gbapal: baserom.gba ; $(call romextract,0x87398,0x200)
$(TMPDIR)/palettes/044.gbapal: baserom.gba ; $(call romextract,0x87598,0x200)
$(TMPDIR)/palettes/045.gbapal: baserom.gba ; $(call romextract,0x87798,0x200)
$(TMPDIR)/palettes/046.gbapal: baserom.gba ; $(call romextract,0x87998,0x200)
$(TMPDIR)/palettes/047.gbapal: baserom.gba ; $(call romextract,0x87B98,0x200)
$(TMPDIR)/palettes/048.gbapal: baserom.gba ; $(call romextract,0x87D98,0x200)
$(TMPDIR)/palettes/049.gbapal: baserom.gba ; $(call romextract,0x87F98,0x200)
$(TMPDIR)/palettes/050.gbapal: baserom.gba ; $(call romextract,0x88198,0x200)
$(TMPDIR)/palettes/051.gbapal: baserom.gba ; $(call romextract,0x88398,0x200)
$(TMPDIR)/palettes/052.gbapal: baserom.gba ; $(call romextract,0x88598,0x200)
$(TMPDIR)/palettes/053.gbapal: baserom.gba ; $(call romextract,0x88798,0x200)
$(TMPDIR)/palettes/054.gbapal: baserom.gba ; $(call romextract,0x88998,0x200)
$(TMPDIR)/palettes/055.gbapal: baserom.gba ; $(call romextract,0x88B98,0x200)
$(TMPDIR)/palettes/056.gbapal: baserom.gba ; $(call romextract,0x88D98,0x200)
$(TMPDIR)/palettes/057.gbapal: baserom.gba ; $(call romextract,0x88F98,0x200)
$(TMPDIR)/palettes/058.gbapal: baserom.gba ; $(call romextract,0x89198,0x200)
$(TMPDIR)/palettes/059.gbapal: baserom.gba ; $(call romextract,0x89398,0x200)
$(TMPDIR)/palettes/060.gbapal: baserom.gba ; $(call romextract,0x89598,0x200)
$(TMPDIR)/palettes/061.gbapal: baserom.gba ; $(call romextract,0x89798,0x200)
$(TMPDIR)/palettes/062.gbapal: baserom.gba ; $(call romextract,0x89998,0x200)
$(TMPDIR)/palettes/063.gbapal: baserom.gba ; $(call romextract,0x89B98,0x200)
$(TMPDIR)/palettes/064.gbapal: baserom.gba ; $(call romextract,0x89D98,0x200)
$(TMPDIR)/palettes/065.gbapal: baserom.gba ; $(call romextract,0x89F98,0x200)
$(TMPDIR)/palettes/066.gbapal: baserom.gba ; $(call romextract,0x8A198,0x200)
$(TMPDIR)/palettes/067.gbapal: baserom.gba ; $(call romextract,0x8A398,0x200)
$(TMPDIR)/palettes/068.gbapal: baserom.gba ; $(call romextract,0x8A598,0x200)
$(TMPDIR)/palettes/069.gbapal: baserom.gba ; $(call romextract,0x8A798,0x200)
$(TMPDIR)/palettes/070.gbapal: baserom.gba ; $(call romextract,0x8A998,0x200)
$(TMPDIR)/palettes/071.gbapal: baserom.gba ; $(call romextract,0x8AB98,0x200)
$(TMPDIR)/palettes/072.gbapal: baserom.gba ; $(call romextract,0x8AD98,0x200)
$(TMPDIR)/palettes/073.gbapal: baserom.gba ; $(call romextract,0x8AF98,0x200)
$(TMPDIR)/palettes/074.gbapal: baserom.gba ; $(call romextract,0x8B198,0x200)
$(TMPDIR)/palettes/075.gbapal: baserom.gba ; $(call romextract,0x8B398,0x200)
$(TMPDIR)/palettes/076.gbapal: baserom.gba ; $(call romextract,0x8B598,0x200)
$(TMPDIR)/palettes/077.gbapal: baserom.gba ; $(call romextract,0x8B798,0x200)
$(TMPDIR)/palettes/078.gbapal: baserom.gba ; $(call romextract,0x8B998,0x200)
$(TMPDIR)/palettes/079.gbapal: baserom.gba ; $(call romextract,0x8BB98,0x200)
$(TMPDIR)/palettes/080.gbapal: baserom.gba ; $(call romextract,0x8BD98,0x200)
$(TMPDIR)/palettes/081.gbapal: baserom.gba ; $(call romextract,0x8BF98,0x200)
$(TMPDIR)/palettes/082.gbapal: baserom.gba ; $(call romextract,0x8C198,0x200)
$(TMPDIR)/palettes/083.gbapal: baserom.gba ; $(call romextract,0x8C398,0x200)
$(TMPDIR)/palettes/084.gbapal: baserom.gba ; $(call romextract,0x8C598,0x200)
$(TMPDIR)/palettes/085.gbapal: baserom.gba ; $(call romextract,0x8C798,0x200)
$(TMPDIR)/palettes/086.gbapal: baserom.gba ; $(call romextract,0x8C998,0x200)
$(TMPDIR)/palettes/087.gbapal: baserom.gba ; $(call romextract,0x8CB98,0x200)
$(TMPDIR)/palettes/088.gbapal: baserom.gba ; $(call romextract,0x8CD98,0x200)
$(TMPDIR)/palettes/089.gbapal: baserom.gba ; $(call romextract,0x8CF98,0x200)
$(TMPDIR)/palettes/090.gbapal: baserom.gba ; $(call romextract,0x8D198,0x200)
$(TMPDIR)/palettes/091.gbapal: baserom.gba ; $(call romextract,0x8D398,0x200)
$(TMPDIR)/palettes/092.gbapal: baserom.gba ; $(call romextract,0x8D598,0x200)
$(TMPDIR)/palettes/093.gbapal: baserom.gba ; $(call romextract,0x8D798,0x200)
$(TMPDIR)/palettes/094.gbapal: baserom.gba ; $(call romextract,0x8D998,0x200)
$(TMPDIR)/palettes/095.gbapal: baserom.gba ; $(call romextract,0x8DB98,0x200)
$(TMPDIR)/palettes/096.gbapal: baserom.gba ; $(call romextract,0x8DD98,0x200)
$(TMPDIR)/palettes/097.gbapal: baserom.gba ; $(call romextract,0x8DF98,0x200)
$(TMPDIR)/palettes/098.gbapal: baserom.gba ; $(call romextract,0x8E198,0x200)
$(TMPDIR)/palettes/099.gbapal: baserom.gba ; $(call romextract,0x8E398,0x200)
$(TMPDIR)/palettes/100.gbapal: baserom.gba ; $(call romextract,0x8E598,0x200)
$(TMPDIR)/palettes/101.gbapal: baserom.gba ; $(call romextract,0x8E798,0x200)
$(TMPDIR)/palettes/102.gbapal: baserom.gba ; $(call romextract,0x8E998,0x200)
$(TMPDIR)/palettes/103.gbapal: baserom.gba ; $(call romextract,0x8EB98,0x200)
$(TMPDIR)/palettes/104.gbapal: baserom.gba ; $(call romextract,0x8ED98,0x200)
$(TMPDIR)/palettes/105.gbapal: baserom.gba ; $(call romextract,0x8EF98,0x200)
$(TMPDIR)/palettes/106.gbapal: baserom.gba ; $(call romextract,0x8F198,0x200)
$(TMPDIR)/palettes/107.gbapal: baserom.gba ; $(call romextract,0x8F398,0x200)
$(TMPDIR)/palettes/108.gbapal: baserom.gba ; $(call romextract,0x8F598,0x200)
$(TMPDIR)/palettes/109.gbapal: baserom.gba ; $(call romextract,0x8F798,0x200)
$(TMPDIR)/palettes/110.gbapal: baserom.gba ; $(call romextract,0x8F998,0x200)
$(TMPDIR)/palettes/111.gbapal: baserom.gba ; $(call romextract,0x8FB98,0x200)
$(TMPDIR)/palettes/112.gbapal: baserom.gba ; $(call romextract,0x8FD98,0x200)
$(TMPDIR)/palettes/113.gbapal: baserom.gba ; $(call romextract,0x8FF98,0x200)
$(TMPDIR)/palettes/114.gbapal: baserom.gba ; $(call romextract,0x90198,0x200)
$(TMPDIR)/palettes/115.gbapal: baserom.gba ; $(call romextract,0x90398,0x200)
$(TMPDIR)/palettes/116.gbapal: baserom.gba ; $(call romextract,0x90598,0x200)
$(TMPDIR)/palettes/117.gbapal: baserom.gba ; $(call romextract,0x90798,0x200)
$(TMPDIR)/palettes/118.gbapal: baserom.gba ; $(call romextract,0x90998,0x200)
$(TMPDIR)/palettes/119.gbapal: baserom.gba ; $(call romextract,0x90B98,0x200)
$(TMPDIR)/palettes/120.gbapal: baserom.gba ; $(call romextract,0x90D98,0x200)
$(TMPDIR)/palettes/121.gbapal: baserom.gba ; $(call romextract,0x90F98,0x200)
$(TMPDIR)/palettes/122.gbapal: baserom.gba ; $(call romextract,0x91198,0x200)
$(TMPDIR)/palettes/123.gbapal: baserom.gba ; $(call romextract,0x91398,0x200)
$(TMPDIR)/palettes/124.gbapal: baserom.gba ; $(call romextract,0x91598,0x200)
$(TMPDIR)/palettes/125.gbapal: baserom.gba ; $(call romextract,0x91798,0x200)
$(TMPDIR)/palettes/126.gbapal: baserom.gba ; $(call romextract,0x91998,0x200)
$(TMPDIR)/palettes/127.gbapal: baserom.gba ; $(call romextract,0x91B98,0x200)
$(TMPDIR)/palettes/128.gbapal: baserom.gba ; $(call romextract,0x91D98,0x200)
$(TMPDIR)/palettes/129.gbapal: baserom.gba ; $(call romextract,0x91F98,0x200)
$(TMPDIR)/palettes/130.gbapal: baserom.gba ; $(call romextract,0x92198,0x200)
$(TMPDIR)/palettes/131.gbapal: baserom.gba ; $(call romextract,0x92398,0x200)
$(TMPDIR)/palettes/132.gbapal: baserom.gba ; $(call romextract,0x92598,0x200)
$(TMPDIR)/palettes/133.gbapal: baserom.gba ; $(call romextract,0x92798,0x200)
$(TMPDIR)/palettes/134.gbapal: baserom.gba ; $(call romextract,0x92998,0x200)
$(TMPDIR)/palettes/135.gbapal: baserom.gba ; $(call romextract,0x92B98,0x200)
$(TMPDIR)/palettes/136.gbapal: baserom.gba ; $(call romextract,0x92D98,0x200)
$(TMPDIR)/palettes/137.gbapal: baserom.gba ; $(call romextract,0x92F98,0x200)
$(TMPDIR)/palettes/138.gbapal: baserom.gba ; $(call romextract,0x93198,0x200)
$(TMPDIR)/palettes/139.gbapal: baserom.gba ; $(call romextract,0x93398,0x200)
$(TMPDIR)/palettes/140.gbapal: baserom.gba ; $(call romextract,0x93598,0x200)
$(TMPDIR)/palettes/141.gbapal: baserom.gba ; $(call romextract,0x93798,0x200)
$(TMPDIR)/palettes/142.gbapal: baserom.gba ; $(call romextract,0x93998,0x200)
$(TMPDIR)/palettes/143.gbapal: baserom.gba ; $(call romextract,0x93B98,0x200)
$(TMPDIR)/palettes/144.gbapal: baserom.gba ; $(call romextract,0x93D98,0x200)
$(TMPDIR)/palettes/145.gbapal: baserom.gba ; $(call romextract,0x93F98,0x200)
$(TMPDIR)/palettes/146.gbapal: baserom.gba ; $(call romextract,0x94198,0x200)
$(TMPDIR)/palettes/147.gbapal: baserom.gba ; $(call romextract,0x94398,0x200)
$(TMPDIR)/palettes/148.gbapal: baserom.gba ; $(call romextract,0x94598,0x200)
$(TMPDIR)/palettes/149.gbapal: baserom.gba ; $(call romextract,0x94798,0x200)
$(TMPDIR)/palettes/150.gbapal: baserom.gba ; $(call romextract,0x94998,0x200)
$(TMPDIR)/palettes/151.gbapal: baserom.gba ; $(call romextract,0x94B98,0x200)
$(TMPDIR)/palettes/152.gbapal: baserom.gba ; $(call romextract,0x94D98,0x200)
$(TMPDIR)/palettes/153.gbapal: baserom.gba ; $(call romextract,0x94F98,0x200)
$(TMPDIR)/palettes/154.gbapal: baserom.gba ; $(call romextract,0x95198,0x200)
$(TMPDIR)/palettes/155.gbapal: baserom.gba ; $(call romextract,0x95398,0x200)
$(TMPDIR)/palettes/156.gbapal: baserom.gba ; $(call romextract,0x95598,0x200)
$(TMPDIR)/palettes/157.gbapal: baserom.gba ; $(call romextract,0x95798,0x200)
$(TMPDIR)/palettes/158.gbapal: baserom.gba ; $(call romextract,0x95998,0x200)
$(TMPDIR)/palettes/159.gbapal: baserom.gba ; $(call romextract,0x95B98,0x200)
$(TMPDIR)/palettes/160.gbapal: baserom.gba ; $(call romextract,0x95D98,0x200)
$(TMPDIR)/palettes/161.gbapal: baserom.gba ; $(call romextract,0x95F98,0x200)
$(TMPDIR)/palettes/162.gbapal: baserom.gba ; $(call romextract,0x96198,0x200)
$(TMPDIR)/palettes/163.gbapal: baserom.gba ; $(call romextract,0x96398,0x200)
$(TMPDIR)/palettes/164.gbapal: baserom.gba ; $(call romextract,0x96598,0x200)
$(TMPDIR)/palettes/165.gbapal: baserom.gba ; $(call romextract,0x96798,0x200)
$(TMPDIR)/palettes/166.gbapal: baserom.gba ; $(call romextract,0x96998,0x200)
$(TMPDIR)/palettes/167.gbapal: baserom.gba ; $(call romextract,0x96B98,0x200)
$(TMPDIR)/palettes/168.gbapal: baserom.gba ; $(call romextract,0x96D98,0x200)
$(TMPDIR)/palettes/169.gbapal: baserom.gba ; $(call romextract,0x96F98,0x200)
$(TMPDIR)/palettes/170.gbapal: baserom.gba ; $(call romextract,0x97198,0x200)
$(TMPDIR)/palettes/171.gbapal: baserom.gba ; $(call romextract,0x97398,0x200)
$(TMPDIR)/palettes/172.gbapal: baserom.gba ; $(call romextract,0x97598,0x200)
$(TMPDIR)/palettes/173.gbapal: baserom.gba ; $(call romextract,0x97798,0x200)
$(TMPDIR)/palettes/174.gbapal: baserom.gba ; $(call romextract,0x97998,0x200)
$(TMPDIR)/palettes/175.gbapal: baserom.gba ; $(call romextract,0x97B98,0x200)
$(TMPDIR)/palettes/176.gbapal: baserom.gba ; $(call romextract,0x97D98,0x200)
$(TMPDIR)/palettes/177.gbapal: baserom.gba ; $(call romextract,0x97F98,0x200)
$(TMPDIR)/palettes/178.gbapal: baserom.gba ; $(call romextract,0x98198,0x200)
$(TMPDIR)/palettes/179.gbapal: baserom.gba ; $(call romextract,0x98398,0x200)
$(TMPDIR)/palettes/180.gbapal: baserom.gba ; $(call romextract,0x98598,0x200)
$(TMPDIR)/palettes/181.gbapal: baserom.gba ; $(call romextract,0x98798,0x200)
$(TMPDIR)/palettes/182.gbapal: baserom.gba ; $(call romextract,0x98998,0x200)
$(TMPDIR)/palettes/183.gbapal: baserom.gba ; $(call romextract,0x98B98,0x200)
$(TMPDIR)/palettes/184.gbapal: baserom.gba ; $(call romextract,0x98D98,0x200)
$(TMPDIR)/palettes/185.gbapal: baserom.gba ; $(call romextract,0x98F98,0x200)
$(TMPDIR)/palettes/186.gbapal: baserom.gba ; $(call romextract,0x99198,0x200)
$(TMPDIR)/palettes/187.gbapal: baserom.gba ; $(call romextract,0x99398,0x200)
$(TMPDIR)/palettes/188.gbapal: baserom.gba ; $(call romextract,0x99598,0x200)
$(TMPDIR)/palettes/189.gbapal: baserom.gba ; $(call romextract,0x99798,0x200)
$(TMPDIR)/palettes/190.gbapal: baserom.gba ; $(call romextract,0x99998,0x200)
$(TMPDIR)/palettes/191.gbapal: baserom.gba ; $(call romextract,0x99B98,0x200)
$(TMPDIR)/palettes/192.gbapal: baserom.gba ; $(call romextract,0x99D98,0x200)
$(TMPDIR)/palettes/193.gbapal: baserom.gba ; $(call romextract,0x99F98,0x200)
$(TMPDIR)/palettes/194.gbapal: baserom.gba ; $(call romextract,0x9A198,0x200)
$(TMPDIR)/palettes/195.gbapal: baserom.gba ; $(call romextract,0x9A398,0x200)
$(TMPDIR)/palettes/196.gbapal: baserom.gba ; $(call romextract,0x9A598,0x200)
$(TMPDIR)/palettes/197.gbapal: baserom.gba ; $(call romextract,0x9A798,0x200)
$(TMPDIR)/palettes/198.gbapal: baserom.gba ; $(call romextract,0x9A998,0x200)
$(TMPDIR)/palettes/199.gbapal: baserom.gba ; $(call romextract,0x9AB98,0x200)
$(TMPDIR)/palettes/200.gbapal: baserom.gba ; $(call romextract,0x9AD98,0x200)
$(TMPDIR)/palettes/201.gbapal: baserom.gba ; $(call romextract,0x9AF98,0x200)
$(TMPDIR)/palettes/202.gbapal: baserom.gba ; $(call romextract,0x9B198,0x200)
$(TMPDIR)/palettes/203.gbapal: baserom.gba ; $(call romextract,0x9B398,0x200)
$(TMPDIR)/palettes/204.gbapal: baserom.gba ; $(call romextract,0x9B598,0x200)
$(TMPDIR)/palettes/205.gbapal: baserom.gba ; $(call romextract,0x9B798,0x200)
$(TMPDIR)/palettes/206.gbapal: baserom.gba ; $(call romextract,0x9B998,0x200)
$(TMPDIR)/palettes/207.gbapal: baserom.gba ; $(call romextract,0x9BB98,0x200)
$(TMPDIR)/palettes/208.gbapal: baserom.gba ; $(call romextract,0x9BD98,0x200)
$(TMPDIR)/palettes/209.gbapal: baserom.gba ; $(call romextract,0x9BF98,0x200)
$(TMPDIR)/palettes/210.gbapal: baserom.gba ; $(call romextract,0x9C198,0x200)
$(TMPDIR)/palettes/211.gbapal: baserom.gba ; $(call romextract,0x9C398,0x200)
$(TMPDIR)/palettes/212.gbapal: baserom.gba ; $(call romextract,0x9C598,0x200)
$(TMPDIR)/palettes/213.gbapal: baserom.gba ; $(call romextract,0x9C798,0x200)
$(TMPDIR)/palettes/214.gbapal: baserom.gba ; $(call romextract,0x9C998,0x200)
$(TMPDIR)/palettes/215.gbapal: baserom.gba ; $(call romextract,0x9CB98,0x200)
$(TMPDIR)/palettes/216.gbapal: baserom.gba ; $(call romextract,0x9CD98,0x200)
$(TMPDIR)/palettes/217.gbapal: baserom.gba ; $(call romextract,0x9CF98,0x200)
$(TMPDIR)/palettes/218.gbapal: baserom.gba ; $(call romextract,0x9D198,0x200)
$(TMPDIR)/palettes/219.gbapal: baserom.gba ; $(call romextract,0x9D398,0x200)
$(TMPDIR)/palettes/220.gbapal: baserom.gba ; $(call romextract,0x9D598,0x200)
$(TMPDIR)/palettes/221.gbapal: baserom.gba ; $(call romextract,0x9D798,0x200)
$(TMPDIR)/palettes/222.gbapal: baserom.gba ; $(call romextract,0x9D998,0x200)
$(TMPDIR)/palettes/223.gbapal: baserom.gba ; $(call romextract,0x9DB98,0x200)
$(TMPDIR)/palettes/224.gbapal: baserom.gba ; $(call romextract,0x9DD98,0x200)
$(TMPDIR)/palettes/225.gbapal: baserom.gba ; $(call romextract,0x9DF98,0x200)
$(TMPDIR)/palettes/226.gbapal: baserom.gba ; $(call romextract,0x9E198,0x200)
$(TMPDIR)/palettes/227.gbapal: baserom.gba ; $(call romextract,0x9E398,0x200)
$(TMPDIR)/palettes/228.gbapal: baserom.gba ; $(call romextract,0x9E598,0x200)
$(TMPDIR)/palettes/229.gbapal: baserom.gba ; $(call romextract,0x9E798,0x200)
$(TMPDIR)/palettes/230.gbapal: baserom.gba ; $(call romextract,0x9E998,0x200)
$(TMPDIR)/palettes/231.gbapal: baserom.gba ; $(call romextract,0x9EB98,0x200)
$(TMPDIR)/palettes/232.gbapal: baserom.gba ; $(call romextract,0x9ED98,0x200)
$(TMPDIR)/palettes/233.gbapal: baserom.gba ; $(call romextract,0x9EF98,0x200)
$(TMPDIR)/palettes/234.gbapal: baserom.gba ; $(call romextract,0x9F198,0x200)
$(TMPDIR)/palettes/235.gbapal: baserom.gba ; $(call romextract,0x9F398,0x200)
$(TMPDIR)/palettes/236.gbapal: baserom.gba ; $(call romextract,0x9F598,0x200)
$(TMPDIR)/palettes/237.gbapal: baserom.gba ; $(call romextract,0x9F798,0x200)
$(TMPDIR)/palettes/238.gbapal: baserom.gba ; $(call romextract,0x9F998,0x200)
$(TMPDIR)/palettes/239.gbapal: baserom.gba ; $(call romextract,0x9FB98,0x200)
$(TMPDIR)/palettes/240.gbapal: baserom.gba ; $(call romextract,0x9FD98,0x200)
$(TMPDIR)/palettes/241.gbapal: baserom.gba ; $(call romextract,0x9FF98,0x200)
$(TMPDIR)/palettes/242.gbapal: baserom.gba ; $(call romextract,0xA0198,0x200)
$(TMPDIR)/palettes/243.gbapal: baserom.gba ; $(call romextract,0xA0398,0x200)
$(TMPDIR)/palettes/244.gbapal: baserom.gba ; $(call romextract,0xA0598,0x200)
$(TMPDIR)/palettes/245.gbapal: baserom.gba ; $(call romextract,0xA0798,0x200)
$(TMPDIR)/palettes/246.gbapal: baserom.gba ; $(call romextract,0xA0998,0x200)
$(TMPDIR)/palettes/247.gbapal: baserom.gba ; $(call romextract,0xA0B98,0x200)
$(TMPDIR)/palettes/248.gbapal: baserom.gba ; $(call romextract,0xA0D98,0x200)
$(TMPDIR)/palettes/249.gbapal: baserom.gba ; $(call romextract,0xA0F98,0x200)
$(TMPDIR)/palettes/250.gbapal: baserom.gba ; $(call romextract,0xA1198,0x200)
$(TMPDIR)/palettes/251.gbapal: baserom.gba ; $(call romextract,0xA1398,0x200)
$(TMPDIR)/palettes/252.gbapal: baserom.gba ; $(call romextract,0xA1598,0x200)
$(TMPDIR)/palettes/253.gbapal: baserom.gba ; $(call romextract,0xA1798,0x200)
$(TMPDIR)/palettes/254.gbapal: baserom.gba ; $(call romextract,0xA1998,0x200)
$(TMPDIR)/palettes/255.gbapal: baserom.gba ; $(call romextract,0xA1B98,0x200)
$(TMPDIR)/palettes/256.gbapal: baserom.gba ; $(call romextract,0xA1D98,0x200)
$(TMPDIR)/palettes/257.gbapal: baserom.gba ; $(call romextract,0xA1F98,0x200)
$(TMPDIR)/palettes/258.gbapal: baserom.gba ; $(call romextract,0xA2198,0x200)
$(TMPDIR)/palettes/259.gbapal: baserom.gba ; $(call romextract,0xA2398,0x200)
$(TMPDIR)/palettes/260.gbapal: baserom.gba ; $(call romextract,0xA2598,0x200)
$(TMPDIR)/palettes/261.gbapal: baserom.gba ; $(call romextract,0xA2798,0x200)
$(TMPDIR)/palettes/262.gbapal: baserom.gba ; $(call romextract,0xA2998,0x200)
$(TMPDIR)/palettes/263.gbapal: baserom.gba ; $(call romextract,0xA2B98,0x200)
$(TMPDIR)/palettes/264.gbapal: baserom.gba ; $(call romextract,0xA2D98,0x200)
$(TMPDIR)/palettes/265.gbapal: baserom.gba ; $(call romextract,0xA2F98,0x200)
$(TMPDIR)/palettes/266.gbapal: baserom.gba ; $(call romextract,0xA3198,0x200)
$(TMPDIR)/palettes/267.gbapal: baserom.gba ; $(call romextract,0xA3398,0x200)
$(TMPDIR)/palettes/268.gbapal: baserom.gba ; $(call romextract,0xA3598,0x200)
$(TMPDIR)/palettes/269.gbapal: baserom.gba ; $(call romextract,0xA3798,0x200)
$(TMPDIR)/palettes/270.gbapal: baserom.gba ; $(call romextract,0xA3998,0x200)
$(TMPDIR)/palettes/271.gbapal: baserom.gba ; $(call romextract,0xA3B98,0x200)
$(TMPDIR)/palettes/272.gbapal: baserom.gba ; $(call romextract,0xA3D98,0x200)
$(TMPDIR)/palettes/273.gbapal: baserom.gba ; $(call romextract,0xA3F98,0x200)
$(TMPDIR)/palettes/274.gbapal: baserom.gba ; $(call romextract,0xA4198,0x200)
$(TMPDIR)/palettes/275.gbapal: baserom.gba ; $(call romextract,0xA4398,0x200)
$(TMPDIR)/palettes/276.gbapal: baserom.gba ; $(call romextract,0xA4598,0x200)
$(TMPDIR)/palettes/277.gbapal: baserom.gba ; $(call romextract,0xA4798,0x200)
$(TMPDIR)/palettes/278.gbapal: baserom.gba ; $(call romextract,0xA4998,0x200)
$(TMPDIR)/palettes/279.gbapal: baserom.gba ; $(call romextract,0xA4B98,0x200)
$(TMPDIR)/palettes/280.gbapal: baserom.gba ; $(call romextract,0xA4D98,0x200)
$(TMPDIR)/palettes/281.gbapal: baserom.gba ; $(call romextract,0xA4F98,0x200)
$(TMPDIR)/palettes/282.gbapal: baserom.gba ; $(call romextract,0xA5198,0x200)
$(TMPDIR)/palettes/283.gbapal: baserom.gba ; $(call romextract,0xA5398,0x200)
$(TMPDIR)/palettes/284.gbapal: baserom.gba ; $(call romextract,0xA5598,0x200)
$(TMPDIR)/palettes/285.gbapal: baserom.gba ; $(call romextract,0xA5798,0x200)
$(TMPDIR)/palettes/286.gbapal: baserom.gba ; $(call romextract,0xA5998,0x200)
$(TMPDIR)/palettes/287.gbapal: baserom.gba ; $(call romextract,0xA5B98,0x200)
$(TMPDIR)/palettes/288.gbapal: baserom.gba ; $(call romextract,0xA5D98,0x200)
$(TMPDIR)/palettes/289.gbapal: baserom.gba ; $(call romextract,0xA5F98,0x200)
$(TMPDIR)/palettes/290.gbapal: baserom.gba ; $(call romextract,0xA6198,0x200)
$(TMPDIR)/palettes/291.gbapal: baserom.gba ; $(call romextract,0xA6398,0x200)
$(TMPDIR)/palettes/292.gbapal: baserom.gba ; $(call romextract,0xA6598,0x200)
$(TMPDIR)/palettes/293.gbapal: baserom.gba ; $(call romextract,0xA6798,0x200)
$(TMPDIR)/palettes/294.gbapal: baserom.gba ; $(call romextract,0xA6998,0x200)
$(TMPDIR)/palettes/295.gbapal: baserom.gba ; $(call romextract,0xA6B98,0x200)
$(TMPDIR)/palettes/296.gbapal: baserom.gba ; $(call romextract,0xA6D98,0x200)
$(TMPDIR)/palettes/297.gbapal: baserom.gba ; $(call romextract,0xA6F98,0x200)
$(TMPDIR)/palettes/298.gbapal: baserom.gba ; $(call romextract,0xA7198,0x200)
$(TMPDIR)/palettes/299.gbapal: baserom.gba ; $(call romextract,0xA7398,0x200)
$(TMPDIR)/palettes/300.gbapal: baserom.gba ; $(call romextract,0xA7598,0x200)
$(TMPDIR)/palettes/301.gbapal: baserom.gba ; $(call romextract,0xA7798,0x200)
$(TMPDIR)/palettes/302.gbapal: baserom.gba ; $(call romextract,0xA7998,0x200)
$(TMPDIR)/palettes/303.gbapal: baserom.gba ; $(call romextract,0xA7B98,0x200)

# copy files
$(EXTRACTED_FILES) : graphics/% : $(TMPDIR)/%
	@mkdir -p $(@D)
	cp $< $@

# convert files to PNG (with or without palette
%.png: %.4bpp %.gbapal $(GBAGFX)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
%.png: %.8bpp %.gbapal $(GBAGFX)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS) -palette $(filter %.gbapal,$^)
%.png: %.4bpp $(GBAGFX)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)
%.png: %.8bpp $(GBAGFX)
	$(GBAGFX) $< $@ $(GBAGFX_FLAGS)

%.pal: %.gbapal $(GBAGFX)
	$(GBAGFX) $< $@

# decompress LZ
%: %.lz $(GBAGFX)
	$(GBAGFX) $< $@

# decompress RLE
%: %.rle $(RLE)
	$(RLE) -d $< $@

# build tools
$(GBAGFX) $(RLE):
	$(MAKE) -C $(@D)
