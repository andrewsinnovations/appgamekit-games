Function LoadResources()
	
	g_cursor_img = LoadImage("cursor.png")
	g_target_box_img = LoadImage("box.png")
	g_target_triangle_img = LoadImage("triangle.png")
	g_target_circle_img = LoadImage("circle.png")
	
EndFunction

Function CreateObjects()
	
	g_cursor_spr = CreateSprite(g_cursor_img)
	g_target_box_spr = CreateSprite(g_target_box_img)
	g_target_triangle_spr = CreateSprite(g_target_triangle_img)
	g_target_circle_spr = CreateSprite(g_target_circle_img)
	
	SetSpritePosition(g_target_box_img, 60, 200)
	SetSpritePosition(g_target_triangle_img, 400, 200)
	SetSpritePosition(g_target_circle_img, 700, 200)
	
	SetSpriteOffset(g_cursor_spr, GetSpriteWidth(g_cursor_spr) / 2, GetSpriteHeight(g_cursor_spr) / 2)
	
	SetSpriteShapeCircle(g_target_circle_img, 0, 0, 64)
	
	SetSpriteSHapePolygon(g_target_triangle_spr, 3, 0, -64, 64)
	SetSpriteSHapePolygon(g_target_triangle_spr, 3, 1, 0, -64)
	SetSpriteSHapePolygon(g_target_triangle_spr, 3, 2, 64, 64)
	
EndFunction


