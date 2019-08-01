snapshot-building
addDefinition: aMISDefinition fromPackage: aPackageName into: aSourceHolderCollection
	
	aMISDefinition ifNil: [^nil].
	aMISDefinition isClassSource ifTrue: [
		self addClassDefinition: aMISDefinition fromPackage: aPackageName into: aSourceHolderCollection.
	].
	aMISDefinition isMethodSource ifTrue: [
		self addMethodDefinition: aMISDefinition fromPackage: aPackageName into: aSourceHolderCollection.
	]