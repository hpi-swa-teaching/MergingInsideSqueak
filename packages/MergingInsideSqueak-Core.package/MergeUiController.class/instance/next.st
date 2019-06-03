buttonHandler
next
	| currentConflict selectedParts |
	
	self getCurrentConflictingMethod setNextMethodConflict.
	
	currentConflict := self getCurrentConflictingMethod currentConflict.
	selectedParts := currentConflict getSelected.
	aIn := selectedParts anySatisfy: [:selected | selected == #left].
	bIn := selectedParts anySatisfy: [:selected | selected == #right].
	view getButtonA update: #stateA.
	view getButtonB update: #stateB.
	self view getPartA update: #partA.
	self view getPartB update: #partB.
	self view getResult update: #resultText.
