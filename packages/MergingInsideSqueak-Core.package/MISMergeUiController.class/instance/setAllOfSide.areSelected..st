actions
setAllOfSide: aSide areSelected: aBoolean
	
	currentChange change source do: [:chunk |
		chunk isConflict ifTrue: [
			aBoolean ifTrue: [chunk selectSide: aSide] ifFalse: [chunk unselectSide: aSide].			
		].
	].
	self updateSourceViews