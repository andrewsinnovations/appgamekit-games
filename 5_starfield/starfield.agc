Type Star
	
	X as float
	Y as float
	
	Size as integer
	Color as integer
	Speed as integer
	
EndType

Type StarField
	
	Stars as Star[]
	
EndType

Function CreateStarfield()
	
	starfield as StarField
	num_stars as integer
	i as integer
	color as integer
	
	color = MakeColor(255,255,255)
	
	num_stars = Random(40,80)
	
	for i = 1 to num_stars
		star as Star
		
		ResetStar(star)
		
		star.X = Random(0, GetVirtualWidth())
		star.Y = Random(0, GetVirtualHeight())
		
		starfield.Stars.insert(star)
	next i
	
EndFunction starfield

Function ResetStar(star ref as Star)
	color as integer
	color = MakeColor(255,255,255)
	
	star.X = Random(0, GetVirtualWidth())
	star.Y = Random(0, GetVirtualHeight())
	star.Size = Random(1,3)
	star.Color = color
	star.Speed = Random(1,5)
EndFunction

Function DrawStarfield(starfield ref as StarField)
	i as integer
	
	for i = 1 to starfield.Stars.length
		DrawBox(starfield.Stars[i].X, starfield.Stars[i].Y, starfield.Stars[i].X + starfield.Stars[i].Size, starfield.Stars[i].Y + starfield.Stars[i].Size, starfield.Stars[i].Color, starfield.Stars[i].Color, starfield.Stars[i].Color, starfield.Stars[i].Color, 1)
	
		starfield.Stars[i].X = starfield.Stars[i].X - starfield.Stars[i].Speed
		
		if starfield.Stars[i].X < 0 
			ResetStar(starfield.Stars[i])
			starfield.Stars[i].X = GetVirtualWidth()
		endif
	next i
	
EndFunction
