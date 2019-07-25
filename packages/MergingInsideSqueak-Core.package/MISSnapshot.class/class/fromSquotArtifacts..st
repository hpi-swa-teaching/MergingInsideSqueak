as yet unclassified
fromSquotArtifacts: aCollectionOfSquotArtifacts

	| sourceHolders |
	sourceHolders := OrderedCollection new.
	self artifacts: aCollectionOfSquotArtifacts do: [ :packageName :packageContent | | definitions |
		definitions := MCDefinitionIndex definitions: packageContent startShadow definitions.
		definitions definitionsDo: [ :definition | 
			self addDefinition: definition FromPackage: packageName Into: sourceHolders		
		]].
	^self new fromSources: sourceHolders