initialize
initialize

	super initialize.
	currentConflictingClass := 1.
	currentConflictingMethod := 1.
	aIn := false.
	bIn := false.
	styler := SHTextStylerST80 new applyUserInterfaceTheme