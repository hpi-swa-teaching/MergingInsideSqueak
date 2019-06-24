as yet unclassified
convertMCDefinitionToMISSourceHolder: aMCDefinition

	aMCDefinition isMethodDefinition ifTrue: [
		^ self convertMCMethodDefinitionToMISMethod: aMCDefinition
		].
	^nil