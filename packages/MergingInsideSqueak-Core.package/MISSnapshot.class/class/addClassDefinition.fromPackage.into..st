as yet unclassified
addClassDefinition: aMISClass fromPackage: aPackageName into: aSourceHolderCollection

	(aSourceHolderCollection contains: [:classDefinition | classDefinition = aMISClass]) ifFalse: [
		aSourceHolderCollection add: (aMISClass package: aPackageName; yourself)
	]
