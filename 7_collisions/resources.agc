Function LoadResources()

	g_ufo_img = LoadImage("skull_in_a_ufo_spacecraft.png")
	g_galaxy_img = LoadImage("pink-star-roses-of-the-galaxies.jpg")
	g_enemy_img = LoadImage("redfighter0005.png")
	g_laser_img = LoadImage("laser.png")

EndFunction

Function CreateObjects()
	
	galaxy as integer
	ufo as integer
	
	galaxy = CreateSprite(g_galaxy_img)
	g_ufo = CreateSprite(g_ufo_img)
	g_enemy = CreateSprite(g_enemy_img)
		
	SetSpriteSize(g_ufo, 80, 64)
	SetSpritePosition(g_ufo, 20, GetVirtualHeight() / 2 - 32)
	
	SetSpriteSize(galaxy, GetVirtualWidth(), GetVIrtualHeight())
	SetSpriteColorAlpha(galaxy, 64)
	
	SetSpritePosition(g_enemy, Random(400, GetVirtualWidth() - GetSpriteWidth(g_enemy)), Random(0, GetVirtualHeight() - GetSpriteHeight(g_enemy)))
	
EndFunction
