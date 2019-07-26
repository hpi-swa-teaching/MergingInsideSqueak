instance creation
fromMCDefinitions: aCollectionOfMCDefinitions fromPackage: aPackageName
	
	| sourceHolders |
	sourceHolders := OrderedCollection new.
	aCollectionOfMCDefinitions do: [ :definition |
		self addDefinition: definition fromPackage: nil into: sourceHolders
		].
  	^self new fromSources: sourceHolders