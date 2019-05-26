buttonHandler
chooseB
	| currentConflict selectedParts |
	
	currentConflict := self getCurrentConflictingMethod currentConflict.
	selectedParts := currentConflict getSelected.
	(selectedParts anySatisfy: [:selected | selected == #right])
		ifTrue: [selectedParts remove: #right. bIn := false]
		ifFalse: [selectedParts add: #right. bIn := true].
	currentConflict setResolved: selectedParts size > 0.
	currentConflict setSelected: selectedParts.
	self view getPartA update: #partA.
	self view getPartB update: #partB.
	self view getResult update: #resultText.