as yet unclassified
testMCMethodDefinitionConversion

	| mcMethodDefinition |
	mcMethodDefinition := self mockMCMethod.
	
	self assert: mcMethodDefinition equals: (mcMethodDefinition convertToMISDefinition) convertToMCDefinition