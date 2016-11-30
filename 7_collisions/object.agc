Type Object
	SpriteID as Integer
	X as Float
	Y as Float
	MoveX as Float
	MoveY as Float
	SizeX as Float
	SizeY as Float
EndType

Function CreateObject(sprite as integer, x as integer, y as integer, size_x as integer, size_y as integer, move_x as integer, move_y as integer)
	obj as Object
	spr as integer
	
	spr = CreateSprite(sprite)
	
	obj.SizeX = size_x
	obj.SizeY = size_y
	obj.X = x
	obj.Y = y
	obj.SpriteID = spr
	obj.MoveX = move_x
	obj.MoveY = move_y
	
	SetSpriteSize(spr, size_x, size_y)
	SetSpritePosition(spr, x, y)
EndFunction obj

Function CheckCollision(sprite as integer, target as integer)
	collision as integer
	
	if sprite <> target
		collision = GetSpriteCollision(sprite, target)
	endif
EndFunction collision

Function CheckCollisionSpriteList(sprite as integer, target as integer[])
	collided_sprites as integer[]
	i as integer
	
	for i = 1 to target.length
		if CheckCollision(sprite, target[i]) > 0
			collided_sprites.insert(target[i])
		endif
	next i
	
EndFunction collided_sprites

Function CheckCollisionObject(obj ref as Object, target ref as Object)
	collision as integer
	
	if obj.SpriteID <> target.SpriteID
		collision = GetSpriteCollision(obj.SpriteID, target.SpriteID)
	endif
EndFunction collision

Function CheckCollisionObjectList(obj as Object, target as Object[])
	collided_objects as Object[]
	
	i as integer
	
	for i = 1 to target.length
		if CheckCollisionObject(obj, target[i]) > 0
			collided_objects.insert(target[i])
		endif
	next i
	
EndFunction collided_objects

Function CheckCollisionSpriteObject(sprite as integer, target ref as Object)
	collision as integer
	
	if sprite <> target.SpriteID
		collision = GetSpriteCollision(sprite, target.SpriteID)
	endif
EndFunction collision

/*
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
*/
