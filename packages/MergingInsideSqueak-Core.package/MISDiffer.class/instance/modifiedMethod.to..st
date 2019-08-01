patch-calculation
modifiedMethod: aBaseMISSource to:  aTargetMISSource
	
	| chunks diffChunks ownerClass |
	ownerClass := self patchedClass: aBaseMISSource actualClass.
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
	ownerClass methods add: (MISPatchModification initializeWithChange: (aBaseMISSource copy source: chunks))