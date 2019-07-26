merging
addDefinition: aDefinition FromPackage: aPackageName Into: aSourceHolderCollection
	|misDefinition|

	misDefinition := aDefinition convertToMISDefinition.
	aDefinition isClassDefinition ifTrue: [
		self addClassDefinition: misDefinition FromPackage: aPackageName Into: aSourceHolderCollection.
	].
	aDefinition isMethodDefinition ifTrue: [
		self addMethodDefinition: misDefinition FromPackage: aPackageName Into: aSourceHolderCollection.
	]