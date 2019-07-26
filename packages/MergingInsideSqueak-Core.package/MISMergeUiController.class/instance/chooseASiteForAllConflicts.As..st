actions
chooseASiteForAllConflicts: aSide As: selected
	
	currentChange change source do: [:chunk |
		chunk isConflict ifTrue: [
			selected ifTrue: [chunk selectSide: aSide] ifFalse: [chunk unselectSide: aSide].			
		].
	].
	self updateSourceViews