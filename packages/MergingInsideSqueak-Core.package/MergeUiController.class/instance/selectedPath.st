model-access
selectedPath
	
	
	^selectedPath ifNil: [
			selectedPath := OrderedCollection with: (self conflicts at: 1).
			((self conflicts at: 1) change methods notNil and: [(self conflicts at: 1) change methods notEmpty]) ifTrue: [selectedPath add: ((self conflicts at: 1) change methods at: 1)] .
			^selectedPath
		].
	