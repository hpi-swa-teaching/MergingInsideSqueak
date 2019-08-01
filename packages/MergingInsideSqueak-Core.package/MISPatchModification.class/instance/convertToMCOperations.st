converting
convertToMCOperations

	^self change convertToMCDefinition collect: [:def | MCModification of: def to: def]