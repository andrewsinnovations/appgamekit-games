Type UFOType
	SpriteID as Integer
	X as Float
	Y as Float
	MoveX as Float
	MoveY as Float
	SizeX as Float
	SizeY as Float
EndType

Function CreateUFO()
	ufo as UFOType
	spr as integer
	move_x as integer
	move_y as integer
	
	spr = CreateSprite(g_ufo_img)
	
	ufo.SizeX = 80
	ufo.SizeY = 64
	ufo.X = Random(0, GetVirtualWidth() - ufo.SizeX)
	ufo.Y = Random(0, GetVirtualHeight() - ufo.SizeY)
	ufo.SpriteID = spr
	
	if Random(0, 1) = 0 
		move_x = -1
	else
		move_x = 1
	endif
	
	if Random(0, 1) = 0 
		move_y = -1
	else
		move_y = 1
	endif
	
	ufo.MoveX = move_x
	ufo.MoveY = move_y
	
	SetSpriteSize(spr, 80, 64)
	SetSpritePosition(spr, ufo.X, ufo.Y)
EndFunction ufo

Function MoveUFO(ufo ref as UFOType, x_min as integer, x_max as integer, y_min as integer, y_max as integer)
	if ufo.X < 0
		ufo.X = 0
		ufo.MoveX = 1
	elseif ufo.X > x_max - ufo.SizeX
		ufo.X = x_max - ufo.SizeX
		ufo.MoveX = -1
	endif
	
	if ufo.Y < 0
		ufo.Y = 0
		ufo.MoveY = 1
	elseif ufo.Y > y_max - ufo.SizeY
		ufo.Y = y_max - ufo.SizeY
		ufo.MoveY = -1
	endif
	
	ufo.X = ufo.X + ufo.MoveX
	ufo.Y = ufo.Y + ufo.MoveY
	
	SetSpritePosition(ufo.SpriteID, ufo.X, ufo.Y)
EndFunction
