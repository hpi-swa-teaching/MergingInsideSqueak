as yet unclassified
convertMISSourceHolderToMCDefinition: aMISSourceHolder

	^ aMISSourceHolder convertToMCDefinition
	"aMISSourceHolder isMethodSource ifTrue: [
		^ self convertMISMethodToMCMethodDefinition: aMISSourceHolder
		].
	aMISSourceHolder isClassSource ifTrue: [
		self halt.
		^ self convertMISClassToMCClassDefinition: aMISSourceHolder
		].
	^nil"