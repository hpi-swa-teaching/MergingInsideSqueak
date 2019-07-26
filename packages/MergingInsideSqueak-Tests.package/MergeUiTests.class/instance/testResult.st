tests
testResult
	
	self assert: (self areEqualText: view resultMorph getText and: (self caseOneExpectedPart: '?' withColor: MergeTextColor red underlined: true))