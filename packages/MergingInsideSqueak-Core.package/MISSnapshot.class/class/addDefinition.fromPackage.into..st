as yet unclassified
addDefinition: aMISDefinition fromPackage: aPackageName into: aSourceHolderCollection
	
	aMISDefinition isClassSource ifTrue: [
		self addClassDefinition: aMISDefinition fromPackage: aPackageName into: aSourceHolderCollection.
	].
	aMISDefinition isMethodSource ifTrue: [
		self addMethodDefinition: aMISDefinition fromPackage: aPackageName into: aSourceHolderCollection.
	]