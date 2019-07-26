model-access
selected
	
	
	^selectedPath ifNil: [
			selectedPath := self conflicts at: 1.
			(selectedPath change methods notNil and: [selectedPath change methods notEmpty]) ifTrue: [selectedPath := (selectedPath change methods at: 1)] .
			currentChange := selectedPath.
			^selectedPath
		].
	