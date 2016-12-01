Function LoadResources()
	
	g_cursor_img = LoadImage("cursor.png")
	
EndFunction

Function CreateObjects()
	
	g_cursor_spr = CreateSprite(g_cursor_img)
	
	SetSpriteOffset(g_cursor_spr, GetSpriteWidth(g_cursor_spr) / 2, GetSpriteHeight(g_cursor_spr) / 2)
	
EndFunction

