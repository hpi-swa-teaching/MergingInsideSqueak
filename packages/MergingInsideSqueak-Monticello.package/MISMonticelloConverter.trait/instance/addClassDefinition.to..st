as yet unclassified
addClassDefinition: aMISClass to: aDictionary

	aDictionary keys detect: [ :classDefinition | classDefinition className = aMISClass className]
		ifFound: [ :matchingSourceClass |
			aDictionary at: aMISClass put: (aDictionary at: matchingSourceClass).
			aDictionary removeKey: matchingSourceClass
		] ifNone: [
			aDictionary at: aMISClass put: (OrderedCollection new)
		]