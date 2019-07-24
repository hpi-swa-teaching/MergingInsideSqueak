as yet unclassified
modifiedMethod: aBaseMISSource to:  aTargetMISSource

	| chunks diffChunks hasConflict |
	hasConflict := false.
	diffChunks := self differ
			file1: aBaseMISSource sourceText;
			file2: aTargetMISSource sourceText;
			comm.
	chunks := OrderedCollection new.
	diffChunks do: [:chunk | 
		chunk key = #common ifTrue: [
			chunks add: (MISCleanChunk text: chunk value)
		] ifFalse: [
			chunks add: (MISConflictChunk left: chunk value key right: chunk value value).
			hasConflict := true.
		]
	].
	" TODO: Also think about author, timestamp etc"
	hasConflict ifTrue: [ | ownerClass |
		ownerClass := self patchedClass: aBaseMISSource actualClass.
		ownerClass methods add: (MISPatchModification initializeWithChange: (aBaseMISSource copy source: chunks))
	].