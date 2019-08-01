converting
convertToMCOperations

	^OrderedCollection with: (MCRemoval of: self change convertToMCDefinition)