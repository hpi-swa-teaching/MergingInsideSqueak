instance creation
fromSquotArtifacts: aCollectionOfSquotArtifacts

	| sourceHolders |
	sourceHolders := OrderedCollection new.
	self artifacts: aCollectionOfSquotArtifacts do: [ :packageName :packageContent | | definitions |
		definitions := MCDefinitionIndex definitions: packageContent startShadow definitions.
		definitions definitionsDo: [ :definition |
			self addDefinition: definition convertToMISDefinition fromPackage: packageName into: sourceHolders		
		]].
	^self fromSources: sourceHolders