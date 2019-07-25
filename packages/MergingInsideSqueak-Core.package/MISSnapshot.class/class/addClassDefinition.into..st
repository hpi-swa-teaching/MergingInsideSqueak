as yet unclassified
addClassDefinition: aMISClass into: aSourceHolderCollection

	(aSourceHolderCollection contains: [:classDefinition | classDefinition = aMISClass]) ifFalse: [
		aSourceHolderCollection add: aMISClass.
	]