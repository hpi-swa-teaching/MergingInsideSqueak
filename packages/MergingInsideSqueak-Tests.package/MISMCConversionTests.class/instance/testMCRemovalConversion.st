as yet unclassified
testMCRemovalConversion

	| mcMethodRemoval mcClassRemoval |
	mcMethodRemoval := MCRemoval of: self mockMCMethod.
	mcClassRemoval := MCRemoval of: self mockMCClass.
	
	self assert: mcMethodRemoval definition equals: (mcMethodRemoval convertToMISPatchOperation) change convertToMCDefinition.
	self assert: mcClassRemoval definition equals: ((mcClassRemoval convertToMISPatchOperation) change convertToMCDefinition at: 1)