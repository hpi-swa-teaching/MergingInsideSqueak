buttonHandler
chooseA
	| currentConflict selectedParts |
	
	currentConflict := self getCurrentConflictingMethod currentConflict.
	selectedParts := currentConflict getSelected.
	(selectedParts anySatisfy: [:selected | selected == #left])
		ifTrue: [selectedParts remove: #left. aIn := false]
		ifFalse: [selectedParts add: #left. aIn := true].
	currentConflict setResolved: selectedParts size > 0.
	currentConflict setSelected: selectedParts.
	self view getPartA update: #partA.
	self view getPartB update: #partB.
	self view getResult update: #resultText.