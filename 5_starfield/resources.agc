Function LoadResources()

	g_ufo_img = LoadImage("skull_in_a_ufo_spacecraft.png")
	g_galaxy_img = LoadImage("pink-star-roses-of-the-galaxies.jpg")

EndFunction

Function CreateObjects()
	
	galaxy as integer
	ufo as integer
	
	galaxy = CreateSprite(g_galaxy_img)
	ufo = CreateSprite(g_ufo_img)
	
	SetSpriteSize(ufo, 80, 64)
	SetSpritePosition(ufo, 20, GetVirtualHeight() / 2 - 32)
	
	SetSpriteSize(galaxy, GetVirtualWidth(), GetVIrtualHeight())
	SetSpriteColorAlpha(galaxy, 64)
	
EndFunction
