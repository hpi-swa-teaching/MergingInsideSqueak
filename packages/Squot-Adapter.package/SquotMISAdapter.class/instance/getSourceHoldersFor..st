merging
getSourceHoldersFor: aVersion
	| sourceHolders base |
	
	sourceHolders := OrderedCollection new.
	base := aVersion.
	base := base artifacts.
	self forArtifacts: base Do: [:packageName :packageContent | | definitions |
		definitions := MCDefinitionIndex definitions: packageContent startShadow definitions.
		definitions definitions do: [ :definition | 
			self addDefinition: definition FromPackage: packageName Into: sourceHolders		
		]
	].
  	^MISSnapshot fromSources: (sourceHolders)