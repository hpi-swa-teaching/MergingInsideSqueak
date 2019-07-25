as yet unclassified
convertToMCOperations

	| definitions |
		definitions := self change convertToMCDefinition.
		^definitions collect: [:def |
			MCModification of: def to: def]