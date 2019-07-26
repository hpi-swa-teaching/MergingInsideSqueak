selection
selectPath: aPath

	selectedPath := aPath.
	self view conflictListMorph update: #selectedPath.
	