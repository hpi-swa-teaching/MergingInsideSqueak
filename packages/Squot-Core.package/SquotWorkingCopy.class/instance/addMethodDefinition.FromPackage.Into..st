creating new versions
addMethodDefinition: aMISMethod FromPackage: aPackageName Into: aSourceHolderCollection
	(aSourceHolderCollection contains: [:classDefinition | classDefinition className = aMISMethod className]) 
	ifTrue: [ | misClassDefinition methodCollection |
		misClassDefinition := aSourceHolderCollection detect: [:classDefinition | classDefinition className = aMISMethod className].
		aMISMethod actualClass: misClassDefinition.
		methodCollection:= misClassDefinition methods add: aMISMethod.
	]
	ifFalse: [ 
		aSourceHolderCollection add: (self createNewMISClassFrom: aMISMethod AndPackage: aPackageName).			
	]