snapshot-building
sources: aCollectionOfMCDefinitions do: aBlock
	
	((aCollectionOfMCDefinitions collect: [ :definition |
			definition convertToMISDefinition
		]) reject: [ :source |
			source isNil
		]) sort do: [ :source |
			aBlock value: source
		]