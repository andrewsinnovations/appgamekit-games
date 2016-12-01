#include "globals.agc"

Function GameLoop()
	
	do
		
		Print( ScreenFPS() )
		Print("Move the mouse.")
		
		SetSpritePositionByOffset(g_cursor_spr, GetPointerX(), GetPointerY())
		
		if GetSpriteCollision(g_cursor_spr, g_target_box_spr)
			Print("Box")
		endif

		if GetSpriteCollision(g_cursor_spr, g_target_triangle_img)
			Print("Triangle")
		endif
		
		if GetSpriteCollision(g_cursor_spr, g_target_circle_spr) 
			Print("Circle")
		endif
		
		if GetSpriteCollision(g_cursor_spr, g_target_ufo_spr) 
			Print("UFO")
		endif
		
		Sync()
	loop
	
EndFunction
