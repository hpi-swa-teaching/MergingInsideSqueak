model-access
handleChangeSelection: aChange
	
	currentChange := aChange.
	self resetAllAOrBButtons.
	selectedPath := aChange.
	selectedChild := aChange.
	selectedPath ifNotNilDo: [:path |
		selectedParent := path change actualClass.
		].
	self updateSourceViews.
	self view conflictListMorph update: #selected.