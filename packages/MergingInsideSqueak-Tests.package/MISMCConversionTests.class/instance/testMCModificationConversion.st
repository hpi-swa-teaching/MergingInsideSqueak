as yet unclassified
testMCModificationConversion

	| mcMethodModification mcClassModification |
	mcMethodModification := MCModification of: (self mockMCMethodWithSource: '') to: self mockMCMethod.
	mcClassModification := MCModification of: self mockMCClass to: self mockMCClass.
	
	self assert: mcMethodModification modification equals: (mcMethodModification convertToMISPatchOperation) change convertToMCDefinition.
	self assert: mcClassModification modification equals: ((mcClassModification convertToMISPatchOperation) change convertToMCDefinition at: 1).