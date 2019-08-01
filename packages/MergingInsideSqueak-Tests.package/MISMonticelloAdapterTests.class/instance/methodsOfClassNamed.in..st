as yet unclassified
methodsOfClassNamed: aClassName in: aCollectionOfMCDefinitions

	^aCollectionOfMCDefinitions select: [ :def | def isMethodDefinition and: def className = aClassName]