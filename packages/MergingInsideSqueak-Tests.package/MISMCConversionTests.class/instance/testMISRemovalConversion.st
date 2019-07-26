as yet unclassified
testMISRemovalConversion

	| misMethodRemoval misClassRemoval winded |
	misMethodRemoval := MISPatchRemoval of: self mockMISMethod.
	misClassRemoval := MISPatchRemoval of: self mockMISClass.
	winded := misClassRemoval deepCopy.
	winded change: misClassRemoval change asOrderedCollection.
	
	self assert: 1 equals: (misMethodRemoval convertToMCOperations) size.
	self assert: misMethodRemoval equals: ((misMethodRemoval convertToMCOperations) at: 1) convertToMISPatchOperation.
	self assert: 1 equals: (misClassRemoval convertToMCOperations) size.
	self assert:  misClassRemoval change asOrderedCollection equals: (((misClassRemoval convertToMCOperations) at: 1) definition collect: [:def | def convertToMISDefinition])