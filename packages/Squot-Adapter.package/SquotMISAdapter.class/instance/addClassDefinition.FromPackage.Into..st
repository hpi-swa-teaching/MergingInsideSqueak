merging
addClassDefinition: aMISClass FromPackage: aPackageName Into: aSourceHolderCollection

	(aSourceHolderCollection contains: [:classDefinition | classDefinition = aMISClass]) ifFalse: [
		aSourceHolderCollection add: (aMISClass package: aPackageName; yourself).
	]