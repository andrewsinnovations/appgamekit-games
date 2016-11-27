#include "globals.agc"

Function AddUFO()
	spr as integer
	move_x as integer
	move_y as integer
	
	spr = CreateSprite(g_ufo_img)
	
	SetSpriteSize(spr, 80, 64)
	SetSpritePosition(spr, Random(0, GetVirtualWidth() - GetSpriteWidth(spr)), Random(0, GetVirtualHeight() - GetSpriteHeight(spr)))
	
	g_ufo_sprites.insert(spr)
	
	if Random(0, 1) = 0 
		move_x = -1
	else
		move_x = 1
	endif
	
	if Random(0, 1) = 0 
		move_y = -1
	else
		move_y = 1
	endif
	
	g_ufo_move_x.insert(move_x)
	g_ufo_move_y.insert(move_y)
	
EndFunction

Function GameLoop()
	time as float
	last_time as float
	i as integer
	x as float
	y as float
	screen_width as float
	screen_height as float
	sprite_width as float = 80
	sprite_height as float = 64
	
	screen_width = GetVirtualWidth()
	screen_height = GetVirtualHeight()

	do
		time = Timer()
				
		if time - last_time > 0.01
			AddUFO()
			last_time = time
		endif
				
		for i = 0 to g_ufo_sprites.length
			x = GetSpriteX(g_ufo_sprites[i])
			y = GetSpriteY(g_ufo_sprites[i])
			
			// bounce the sprites against the edges of the screen
			if x < 0
				x = 0
				g_ufo_move_x[i] = 1
			elseif x > screen_width - sprite_width
				x = screen_width - sprite_width
				g_ufo_move_x[i] = -1
			endif
			
			if y < 0
				y = 0
				g_ufo_move_y[i] = 1
			elseif y > screen_height - sprite_height
				y = screen_height - sprite_height
				g_ufo_move_y[i] = -1
			endif
			
			SetSpritePosition(g_ufo_sprites[i], x + g_ufo_move_x[i], y + g_ufo_move_y[i])
		next i
				
		Print( ScreenFPS() )
		Print(g_ufo_sprites.length)
		Sync()
	loop
	
EndFunction
