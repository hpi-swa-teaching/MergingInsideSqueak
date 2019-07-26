as yet unclassified
convertMCSnapshotToMISSnapshot: aMCSnapshot

	"sourceClasses := Dictionary new.
	self sources: aMCSnapshot definitions do: [:source |
		self addSource: source to: sourceClasses
		]."
	"self halt."
	^MISSnapshot fromMCSnapshot: aMCSnapshot.
	
	"sources := aMCSnapshot definitions collect: [ :definition |
		self convertMCDefinitionToMISSourceHolder: definition ].
	sourceClasses := Dictionary new.
	sources := (sources reject: [:source | source isNil]) sort.
	sources do: [ :source | 
		sourceClasses keys detect: [ :sourceClass | sourceClass className = source className ]
			ifFound: [ :matchingSourceClass | 
				source isClassSource ifTrue: [
						
						sourceClasses at: source put: (sourceClasses at: matchingSourceClass).
						sourceClasses removeKey: matchingSourceClass
					] ifFalse: [
						
						(sourceClasses at: matchingSourceClass) add: source
					]
			] ifNone: [
				source isClassSource ifTrue: [
						
						sourceClasses at: source put: (OrderedCollection new)
					] ifFalse: [
						
						sourceClasses at: (MISClass new className: source className) put: (OrderedCollection with: source)
					]
			]
	].

	sources := OrderedCollection new.
	sourceClasses keysAndValuesDo: [:class :methods |
		methods do: [ :method | method actualClass: class ].
		class methods: methods.
		sources add: class
	].
	
	^MISSnapshot new initializeWithSources: sources"