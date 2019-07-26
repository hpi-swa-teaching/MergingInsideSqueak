snapshot-creation
buildMergedMethodFrom: aConflictingMethod
	
	| methodDefinition |
	methodDefinition := MISCleanChunk text: ''.
	aConflictingMethod source do: [:chunk | 
		chunk isConflict ifTrue: [
			methodDefinition text: methodDefinition text, chunk selected.			
		] ifFalse: [
			methodDefinition text: methodDefinition text, chunk cleanText.		
		]
	].
	aConflictingMethod source: (OrderedCollection with: methodDefinition).
	^aConflictingMethod