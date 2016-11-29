#include "globals.agc"
#include "starfield.agc"

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
	
	starfield as Starfield
	
	starfield = CreateStarfield()
	
	screen_width = GetVirtualWidth()
	screen_height = GetVirtualHeight()

	do
		Print( ScreenFPS() )
		
		
		DrawStarfield(starfield)
		Sync()
	loop
	
EndFunction
