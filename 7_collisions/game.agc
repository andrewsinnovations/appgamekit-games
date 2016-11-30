#include "globals.agc"
#include "starfield.agc"
#include "object.agc"

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

Function CreateBullet()
	
	bullet as Object

	bullet.SpriteID = CreateSprite(g_laser_img)
	bullet.X = GetSpriteX(g_ufo) + 85
	bullet.Y = GetSpriteY(g_ufo) + 32 - GetSpriteHeight(bullet.SpriteID)
	bullet.MoveX = 10
	
	SetSpritePosition(bullet.SpriteID, bullet.X, bullet.Y)
	
	g_bullets.insert(bullet)
EndFunction

Function GameLoop()
	collisions as Object[]
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
		time = Timer()
		
		if Timer() - last_time > 0.25
			CreateBullet()
			last_time = time
		endif
		
		HandleInput()
		MoveUFO()
		
		for i = 0 to g_bullets.length
			MoveObject(g_bullets[i])
		next i
		
		collisions = CheckCOllisionSpriteObjectList(g_enemy, g_bullets)
		
		if collisions.length > -1
			SetSpritePosition(g_enemy, Random(400, GetVirtualWidth() - GetSpriteWidth(g_enemy)), Random(0, GetVirtualHeight() - GetSpriteHeight(g_enemy)))
		endif
		
		DrawStarfield(starfield)
		Print( ScreenFPS() )
		Print("Use W,A,S,D or arrow keys to move")
		Sync()
	loop
	
EndFunction
