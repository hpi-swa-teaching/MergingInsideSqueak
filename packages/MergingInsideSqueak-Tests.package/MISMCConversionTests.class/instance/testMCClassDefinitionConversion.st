as yet unclassified
testMCClassDefinitionConversion

	| mcClassDefinition |
	mcClassDefinition := self mockMCClass.
			
	self assert: 1 equals: (mcClassDefinition convertToMISDefinition) convertToMCDefinition size.
	self assert: mcClassDefinition equals: ((mcClassDefinition convertToMISDefinition) convertToMCDefinition at: 1)