as yet unclassified
addSource: aMCDefinition to: aDictionary

	|misDefinition|
	misDefinition := aMCDefinition convertToMISDefinition.
	misDefinition isClassSource ifTrue: [
		self addClassDefinition: misDefinition to: aDictionary.
	].
	misDefinition isMethodSource ifTrue: [
		self addMethodDefinition: misDefinition to: aDictionary.
	]