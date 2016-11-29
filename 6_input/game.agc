#include "globals.agc"
#include "starfield.agc"

Function HandleInput()
	
	g_move_x = 0
	g_move_y = 0

	if GetRawKeyState(KEY_A) or GetRawKeyState(KEY_LEFT)
		g_move_x = -8
	elseif GetRawKeyState(KEY_D) or GetRawKeyState(KEY_RIGHT)
		g_move_x = 8
	endif

		
	if GetRawKeyState(KEY_W) or GetRawKeyState(KEY_UP)
		g_move_y = -8
	elseif GetRawKeyState(KEY_S) or GetRawKeyState(KEY_DOWN)
		g_move_y = 8
	endif
	
EndFunction

Function MoveUFO()
	new_y as integer
	new_x as integer
	
	new_x = GetSpriteX(g_ufo) + g_move_x
	new_y = GetSpriteY(g_ufo) + g_move_y
	
	if new_x < 0 then new_x = 0
	if new_x > GetVirtualWidth() - GetSpriteWidth(g_ufo) then new_x = GetVirtualWidth() - GetSpriteWidth(g_ufo)
	
	if new_y < 0 then new_y = 0
	if new_y > GetVirtualHeight() - GetSpriteHeight(g_ufo) then new_y = GetVirtualHeight() - GetSpriteHeight(g_ufo)
	
	
	SetSpritePosition(g_ufo, new_x, new_y)
EndFunction

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
		HandleInput()
		MoveUFO()
		
		DrawStarfield(starfield)
		Print( ScreenFPS() )
		Sync()
	loop
	
EndFunction
