as yet unclassified
countMethodsNamed: aMethodName in: aCollectionOfMCDefinitions

	aCollectionOfMCDefinitions select: [ :def | def isMethodSource and: def selector = aMethodName]