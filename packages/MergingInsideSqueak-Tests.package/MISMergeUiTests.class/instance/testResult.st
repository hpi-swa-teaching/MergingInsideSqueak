tests
testResult
	
	self assert: (self areEqualText: view resultMorph getText and: (self caseOneExpectedPart: '?' withColor: MISMergeTextColor red underlined: true))