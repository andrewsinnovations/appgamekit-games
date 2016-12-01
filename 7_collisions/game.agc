#include "globals.agc"

Function GameLoop()
	
	do
		
		Print( ScreenFPS() )
		Print("Move the mouse.")
		
		SetSpritePosition(g_cursor_spr, GetPointerX(), GetPointerY())
		
		Sync()
	loop
	
EndFunction
