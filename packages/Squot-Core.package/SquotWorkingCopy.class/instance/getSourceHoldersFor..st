creating new versions
getSourceHoldersFor: aVersion
	| sourceHolders base |
	
	sourceHolders := OrderedCollection new.
	base := aVersion.
	base := base artifacts.
	base keys do: [:key  | | baseValue baseContent | 
		baseValue := base at: key.	
		baseContent := baseValue content.
		baseContent isNil ifFalse: [ | baseDefinitions |
			baseDefinitions := MCDefinitionIndex definitions: baseContent startShadow definitions.
			baseDefinitions definitionsDo: [ :definition | |misDefinition|
				misDefinition := definition convertToMISDefinition.
				definition isClassDefinition ifTrue: [
					(sourceHolders contains: [:classDefinition | classDefinition = misDefinition]) ifFalse: [
						sourceHolders add: (misDefinition package: key; yourself).
					]
				].
				definition isMethodDefinition ifTrue: [
					(sourceHolders contains: [:classDefinition | classDefinition className = misDefinition className]) 
					ifTrue: [ | misClassDefinition methodCollection |
						misClassDefinition := sourceHolders detect: [:classDefinition | classDefinition className = misDefinition className].
						misDefinition actualClass: misClassDefinition.
						methodCollection:= misClassDefinition methods add: misDefinition.
					]
					ifFalse: [ | misClassDefinition |
						misClassDefinition := MISClass new 
							className: definition className;
							package: key;
							methods: (OrderedCollection with: misDefinition)
							yourself.
						misClassDefinition actualClass: misDefinition.	
						misDefinition actualClass: misClassDefinition.
						sourceHolders add: misClassDefinition.			
					]
				]		
			]
		]
	].
  	^sourceHolders