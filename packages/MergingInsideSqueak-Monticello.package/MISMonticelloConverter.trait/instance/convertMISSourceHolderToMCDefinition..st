deserialising
convertMISSourceHolderToMCDefinition: aMISSourceHolder

	aMISSourceHolder isMethodSource ifTrue: [
		^ self convertMISMethodToMCMethodDefinition: aMISSourceHolder
		].
	^nil