#include "globals.agc"

Function AddUFO()

	spr = CreateSprite(g_ufo_img)
	
	SetSpriteSize(spr, 80, 64)
	SetSpritePosition(spr, Random(0, GetVirtualWidth() - GetSpriteWidth(spr)), Random(0, GetVirtualHeight() - GetSpriteHeight(spr)))
	
	g_ufo_sprites.insert(spr)
	
EndFunction

Function GameLoop()
	time as float
	last_time as float

	do
		time = Timer()
				
		if time - last_time > 0.01
			AddUFO()
			last_time = time
		endif
				
		Print( ScreenFPS() )
		Print(g_ufo_sprites.length)
		Sync()
	loop
	
EndFunction
