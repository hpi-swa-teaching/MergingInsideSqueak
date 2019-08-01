selecting
toggleSide: aSide

	(self selectedSides anySatisfy: [ :selected | selected = aSide ])
		ifTrue: [self unselectSide: aSide]
		ifFalse: [self selectSide: aSide]