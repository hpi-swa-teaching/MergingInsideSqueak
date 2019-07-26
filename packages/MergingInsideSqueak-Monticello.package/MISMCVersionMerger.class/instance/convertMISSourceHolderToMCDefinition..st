as yet unclassified
convertMISSourceHolderToMCDefinition: aMISSourceHolder

	aMISSourceHolder isMethodSource ifTrue: [
		^ self convertMISMethodToMCMethodDefinition: aMISSourceHolder
		].
	aMISSourceHolder isClassSource ifTrue: [
		^ self convertMISClassToMCClassDefinition: aMISSourceHolder
		].
	^nil