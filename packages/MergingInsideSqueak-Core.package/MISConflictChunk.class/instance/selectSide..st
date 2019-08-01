selecting
selectSide: aSide

	selectedSides ifNil: [
			selectedSides := OrderedCollection with: aSide
		] ifNotNil: [
			selectedSides addIfNotPresent: aSide
		].