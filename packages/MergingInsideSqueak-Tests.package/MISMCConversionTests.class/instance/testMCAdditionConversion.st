as yet unclassified
testMCAdditionConversion

	| mcMethodAddition mcClassAddition |
	mcMethodAddition := MCAddition of: self mockMCMethod.
	mcClassAddition := MCAddition of: self mockMCClass.
	
	self assert: mcMethodAddition definition equals: (mcMethodAddition convertToMISPatchOperation) change convertToMCDefinition.
	self assert: mcClassAddition definition equals: ((mcClassAddition convertToMISPatchOperation) change convertToMCDefinition at: 1)