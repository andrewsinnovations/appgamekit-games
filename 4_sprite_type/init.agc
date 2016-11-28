Function Initialize()
	
	SetErrorMode(2)

	// set window properties
	SetWindowTitle( "4: Sprites using user-defined type" )
	SetWindowSize( 1024, 768, 0 )

	// set display properties
	SetVirtualResolution( 1024, 768 )
	SetOrientationAllowed( 1, 1, 1, 1 )
	
	SetRandomSeed(Timer())
	
EndFunction
