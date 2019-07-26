tests
testChooseB

	| buttonB currentConflict |	
	currentConflict := self currentConflict.
	buttonB := view buttonBMorph.
	
	self assert: currentConflict selectedSides size == 0.
	self assert: currentConflict isResolved not.
	self assert: buttonB actionSelector == #chooseB.
	view controller chooseB.
	self assert: currentConflict selectedSides size == 1.
	self assert: (currentConflict selectedSides at: 1) == #right.
	self assert: currentConflict isResolved.
	self assert: (self areEqualText: view partAMorph getText and: (self caseOneExpectedPart: '	^test123' withColor: MergeTextColor red underlined: true)).
	self assert: (self areEqualText: view partBMorph getText and: (self caseOneExpectedPart: '	^test453' withColor: MergeTextColor green underlined: true)).