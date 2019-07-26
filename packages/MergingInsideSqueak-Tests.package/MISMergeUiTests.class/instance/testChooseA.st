tests
testChooseA
	
	| buttonA currentConflict |
	currentConflict := self currentConflict.
	buttonA := view buttonAMorph.
	
	self assert: currentConflict selected size == 0.
	self assert: currentConflict isResolved not.
	self assert: buttonA actionSelector == #chooseA.
	view controller chooseA.
	self assert: currentConflict selectedSides size == 1.
	self assert: (currentConflict selectedSides at: 1) == #left.
	self assert: currentConflict isResolved.
	self assert: (self areEqualText: view partAMorph getText and: (self caseOneExpectedPart: '	^test123' withColor: MergeTextColor green underlined: true)).
	self assert: (self areEqualText: view partBMorph getText and: (self caseOneExpectedPart: '	^test453' withColor: MergeTextColor red underlined: true)).