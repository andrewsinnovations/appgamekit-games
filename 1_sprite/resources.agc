#include "globals.agc"

Function LoadResources()
	
	g_ufo_img = LoadImage("skull_in_a_ufo_spacecraft.png")
	g_ufo_spr = CreateSprite(g_ufo_img)

	SetSpriteSize(g_ufo_spr, 80,64)
	SetSpritePosition(g_ufo_spr, GetVirtualWidth() / 2 - GetSpriteWidth(g_ufo_spr) / 2, GetVirtualHeight() / 2 - GetSpriteHeight(g_ufo_spr) / 2)

EndFunction
