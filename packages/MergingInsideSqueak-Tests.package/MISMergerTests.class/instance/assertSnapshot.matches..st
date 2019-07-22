as yet unclassified
assertSnapshot: actual matches: expected
	| diff |
	
	diff := MISDiffer new
		base: actual;
		target: expected;
		patchIt.
	
	self assert: diff isEmpty
