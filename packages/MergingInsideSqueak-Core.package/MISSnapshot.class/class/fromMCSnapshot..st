as yet unclassified
fromMCSnapshot: aMCSnapshot
	
	| sourceHolders |
	sourceHolders := OrderedCollection new.
	self sources: aMCSnapshot definitions do: [ :definition |
		self addDefinition: definition fromPackage: nil into: sourceHolders
		].
  	^MISSnapshot fromSources: sourceHolders