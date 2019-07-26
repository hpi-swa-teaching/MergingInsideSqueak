as yet unclassified
convertToMCOperations

	^OrderedCollection with: (MCRemoval of: self change convertToMCDefinition)