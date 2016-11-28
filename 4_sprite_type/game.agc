#include "globals.agc"
#include "ufo.agc"

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
	
	screen_width = GetVirtualWidth()
	screen_height = GetVirtualHeight()

	do
		time = Timer()
				
		if time - last_time > 0.1
			g_ufos.insert(CreateUFO())
			last_time = time
		endif
				
		for i = 0 to g_ufos.length
			MoveUFO(g_ufos[i], 0, screen_width, 0, screen_height)
		next i
				
		Print( ScreenFPS() )
		Print(g_ufos.length)
		Sync()
	loop
	
EndFunction
