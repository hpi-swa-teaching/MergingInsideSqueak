as yet unclassified
diffSource: aBaseMISSource with:  aTargetMISSource

	| chunks diffChunks |
	diffChunks := self differ
			file1: aBaseMISSource sourceText;
			file2: aTargetMISSource sourceText;
			comm.
	chunks := OrderedCollection new.
	diffChunks do: [:chunk | 
		chunk key = #common ifTrue: [
			chunks add: (MISCleanChunk text: chunk value)
		] ifFalse: [
			chunks add: (MISConflictChunk left: chunk value key right: chunk value value)
		]
	].
	" TODO: Also think about author, timestamp etc"
	^MISPatchModification initializeWithChange: (aBaseMISSource copy source: chunks)