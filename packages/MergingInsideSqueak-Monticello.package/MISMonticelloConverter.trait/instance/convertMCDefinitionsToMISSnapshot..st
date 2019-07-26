as yet unclassified
convertMCDefinitionsToMISSnapshot: aCollectionOfMISDefinitions

	^MISSnapshot fromMCDefinitions: aCollectionOfMISDefinitions fromPackage: nil
	"| sources sourceClasses |
	sources := aCollectionOfMISDefinitions collect: [ :definition |
		self convertMCDefinitionToMISSourceHolder: definition ].
	sourceClasses := Dictionary new.
	sources do: [ :source | 
		sourceClasses keys detect: [ :sourceClass | sourceClass className = source className ]
			ifFound: [ :matchingSourceClass | 
				(sourceClasses at: matchingSourceClass) add: source
			] ifNone: [
				sourceClasses at: (MISClass new className: source className) put: (OrderedCollection with: source)
			]
	]."

	" Add the methods to their class "
	"sources := OrderedCollection new.
	sourceClasses keysAndValuesDo: [:class :methods |
		class actualClass: class.
		methods do: [ :method | method actualClass: class ]. 
		class methods: methods.
		sources add: class
	]."
	
	"^MISSnapshot new initializeWithSources: sources"