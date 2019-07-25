as yet unclassified
addMethodDefinition: aMISMethod fromPackage: aPackageName into: aSourceHolderCollection
	
	(aSourceHolderCollection contains: [:classDefinition | classDefinition className = aMISMethod className]) 
		ifTrue: [ | misClassDefinition methodCollection |
			misClassDefinition := aSourceHolderCollection detect: [:classDefinition | classDefinition className = aMISMethod className].
			aMISMethod actualClass: misClassDefinition.
			methodCollection:= misClassDefinition methods add: aMISMethod.
		] ifFalse: [ 
			aSourceHolderCollection add: (MISClass fromMethod: aMISMethod andPackage: aPackageName)			
		]