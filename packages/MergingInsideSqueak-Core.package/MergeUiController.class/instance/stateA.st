buttonHandler
stateA
	| currentConflict selectedParts |
	
	currentConflict := self getCurrentConflictingMethod currentConflict.
	selectedParts := currentConflict getSelected.
	selectedParts anySatisfy: [:selected | selected == #left].
	^aIn