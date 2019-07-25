as yet unclassified
addMethodDefinition: aMISMethod to: aDictionary

	"aDictionary keys detect: [ :classDefinition | classDefinition className = aMISClass className]
		ifFound: [ :matchingSourceClass |
			(aDictionary at: matchingSourceClass) add: aMISMethod
		] ifNone: [
			aDictionary at: aMISClass put: (OrderedCollection new)
		]"