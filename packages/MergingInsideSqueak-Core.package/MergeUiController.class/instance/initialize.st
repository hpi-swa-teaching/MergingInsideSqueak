initialize
initialize

	super initialize.
	currentConflictingClass := 1.
	currentConflictingMethod := 1.
	aIn := false.
	bIn := false.
	(SHTextStylerST80 canUnderstand: #applyUserInterfaceTheme) ifTrue: [
		styler := SHTextStylerST80 new applyUserInterfaceTheme]