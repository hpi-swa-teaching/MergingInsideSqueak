actions
chooseASiteForAllConflicts: aSide
	
	currentChange change source do: [:chunk |
		chunk isConflict ifTrue: [chunk]
	]