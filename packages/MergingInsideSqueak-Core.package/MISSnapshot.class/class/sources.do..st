as yet unclassified
sources: aCollectionOfMCDefinitions do: aBlock
	
	((aCollectionOfMCDefinitions collect: [ :definition |
			definition convertToMISDefinition
			"self convertMCDefinitionToMISSourceHolder: definition"
		]) reject: [ :source |
			source isNil
		]) sort do: [ :source |
			aBlock value: source
		]