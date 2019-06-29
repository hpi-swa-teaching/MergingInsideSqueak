model-access
stateB
	
	self currentChange ifNil: [^false].
	"| currentConflict selectedParts |
	self halt.
	self currentMethod ifNil: [^false].
	currentConflict := self currentMethod change currentConflict.
	selectedParts := currentConflict selected.
	^selectedParts anySatisfy: [:selected | selected == #right]"
	^false