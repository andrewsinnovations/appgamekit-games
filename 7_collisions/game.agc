#include "globals.agc"

Function GameLoop()
	
	hit_sprite as integer
	
	do
		
		Print( ScreenFPS() )
		Print("Move the mouse.")
		
		hit_sprite = GetSpriteHit(GetPointerX(), GetPointerY())
		
		if hit_sprite = g_target_box_spr
			Print("Box")
		endif

		if hit_sprite = g_target_triangle_spr
			Print("Triangle")
		endif
		
		if hit_sprite = g_target_circle_spr
			Print("Circle")
		endif
		
		if hit_sprite = g_target_ufo_spr
			Print("UFO")
		endif
		
		Sync()
	loop
	
EndFunction
