tests
testChooseABA
	
	| currentConflict |	
	currentConflict := self currentConflict.
	
	view controller chooseA.
	self assert: currentConflict selectedSides size == 1.
	self assert: (currentConflict selectedSides at: 1) == #left.
	self assert: currentConflict isResolved.
	self assert: (self areEqualText: view partAMorph getText and: (self caseOneExpectedPart: '	^test123' withColor: MergeTextColor green underlined: true)).
	self assert: (self areEqualText: view partBMorph getText and: (self caseOneExpectedPart: '	^test453' withColor: MergeTextColor red underlined: true)).
	
	view controller chooseB.
	self assert: currentConflict selectedSides size == 2.
	self assert: (currentConflict selectedSides at: 1) == #left.
	self assert: (currentConflict selectedSides at: 2) == #right.
	self assert: currentConflict isResolved.
	self assert: (self areEqualText: view partAMorph getText and: (self caseOneExpectedPart: '	^test123' withColor: MergeTextColor green underlined: true)).
	self assert: (self areEqualText: view partBMorph getText and: (self caseOneExpectedPart: '	^test453' withColor: MergeTextColor green underlined: true)).
	
	view controller chooseA.
	self assert: currentConflict selectedSides size == 1.
	self assert: (currentConflict selectedSides at: 1) == #right.
	self assert: currentConflict isResolved.
	self assert: (self areEqualText: view partAMorph getText and: (self caseOneExpectedPart: '	^test123' withColor: MergeTextColor red underlined: true)).
	self assert: (self areEqualText: view partBMorph getText and: (self caseOneExpectedPart: '	^test453' withColor: MergeTextColor green underlined: true)).
	