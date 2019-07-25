as yet unclassified
sources: aCollectionOfMCDefinitions do: aBlock
	
	((aCollectionOfMCDefinitions collect: [ :definition |
			self convertMCDefinitionToMISSourceHolder: definition
		]) reject: [ :source |
			source isNil
		]) sort do: [ :source |
			aBlock value: source
		]