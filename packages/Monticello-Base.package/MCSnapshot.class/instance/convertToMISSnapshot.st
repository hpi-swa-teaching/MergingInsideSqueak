as yet unclassified
convertToMISSnapshot

	| sources sourceClasses |
	sources := self definitions collect: [ :definition |
		self convertMCDefinitionToMISSourceHolder: definition ].
	sourceClasses := Dictionary new.
	sources := (sources reject: [:source | source isNil]) sort.
	sources do: [ :source | 
		sourceClasses keys detect: [ :sourceClass | sourceClass className = source className ]
			ifFound: [ :matchingSourceClass | 
				source isClassSource ifTrue: [
						"Update with Class information"
						sourceClasses at: source put: (sourceClasses at: matchingSourceClass).
						sourceClasses removeKey: matchingSourceClass
					] ifFalse: [
						"Add the new method"
						(sourceClasses at: matchingSourceClass) add: source
					]
			] ifNone: [
				source isClassSource ifTrue: [
						"Update with Class information"
						sourceClasses at: source put: (OrderedCollection new)
					] ifFalse: [
						"Add the new method"
						sourceClasses at: (MISClass new className: source className) put: (OrderedCollection with: source)
					]
			]
	].

	" Add the methods to their class "
	sources := OrderedCollection new.
	sourceClasses keysAndValuesDo: [:class :methods |
		"class actualClass: class."
		methods do: [ :method | method actualClass: class ].
		class methods: methods.
		sources add: class
	].
	
	^MISSnapshot new initializeWithSources: sources