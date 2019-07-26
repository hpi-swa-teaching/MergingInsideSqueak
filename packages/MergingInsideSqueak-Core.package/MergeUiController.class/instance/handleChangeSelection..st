model-access
handleChangeSelection: aChange
	
	currentChange := aChange.
	self resetAllAOrBButtons.
	selectedPath := aChange.
	selectedParent := selectedPath change actualClass.
	selectedChild := aChange.
	self updateSourceViews.
	self view conflictListMorph update: #selected.