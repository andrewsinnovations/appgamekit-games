Function LoadResources()
	
	g_cursor_img = LoadImage("cursor.png")
	g_target_box_img = LoadImage("box.png")
	g_target_triangle_img = LoadImage("triangle.png")
	g_target_circle_img = LoadImage("circle.png")
	g_target_ufo_img = LoadImage("skull_in_a_ufo_spacecraft.png")
	
EndFunction

Function CreateObjects()
	
	g_cursor_spr = CreateSprite(g_cursor_img)
	g_target_box_spr = CreateSprite(g_target_box_img)
	g_target_triangle_spr = CreateSprite(g_target_triangle_img)
	g_target_circle_spr = CreateSprite(g_target_circle_img)
	g_target_ufo_spr = CreateSprite(g_target_ufo_img)
	
	SetSpritePosition(g_target_box_img, 60, 200)
	SetSpritePosition(g_target_triangle_img, 400, 200)
	SetSpritePosition(g_target_circle_img, 700, 200)
	SetSpritePosition(g_target_ufo_spr, 400, 500)
	
	
	SetSpriteOffset(g_cursor_spr, GetSpriteWidth(g_cursor_spr) / 2, GetSpriteHeight(g_cursor_spr) / 2)
	
	SetSpriteShapeCircle(g_target_circle_img, 0, 0, 64)
	
	// triangle polygon
	SetSpriteShapePolygon(g_target_triangle_spr, 3, 0, -64, 64)
	SetSpriteShapePolygon(g_target_triangle_spr, 3, 1, 0, -64)
	SetSpriteShapePolygon(g_target_triangle_spr, 3, 2, 64, 64)
	
	// ufo polygon
	SetSpriteShapePolygon(g_target_ufo_spr, 6, 0, 787.723145, 294.300415)
	SetSpriteShapePolygon(g_target_ufo_spr, 6, 1, 389.478394, 507.198486)
	SetSpriteShapePolygon(g_target_ufo_spr, 6, 2, -379.459686, 542.264160)
	SetSpriteShapePolygon(g_target_ufo_spr, 6, 3, -800.246521, 299.309753)
	SetSpriteShapePolygon(g_target_ufo_spr, 6, 4, -329.365997, -524.731323)
	SetSpriteShapePolygon(g_target_ufo_spr, 6, 5, 299.309753, -539.759399)
	
	SetSpriteScale(g_target_ufo_spr, 0.1, 0.1)
	
EndFunction


