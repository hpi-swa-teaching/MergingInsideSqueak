buttonHandler
stateA
	| currentConflict selectedParts |
	
	currentConflict := self getCurrentConflictingMethod change currentConflict.
	selectedParts := currentConflict selected.
	^selectedParts anySatisfy: [:selected | selected == #left]