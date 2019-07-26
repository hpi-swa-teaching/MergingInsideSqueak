as yet unclassified
applyPatch: aPatch

	| localSources remoteSources localSnapshot remoteSnapshot items |
	localSources := (aPatch operations sorted
		reject: [ :op | op isAddition ])
		collect: [ :op | op isModification
			ifTrue: [ op obsoletion ]
			ifFalse: [ op definition ]
		].
	remoteSources := (aPatch operations sorted
		reject: [ :op | op isRemoval ])
		collect: [ :op | op isModification
			ifTrue: [ op modification ]
			ifFalse: [ op definition ]
		].
	localSnapshot := self convertMCDefinitionsToMISSnapshot: localSources.
	remoteSnapshot := self convertMCDefinitionsToMISSnapshot: remoteSources.
	items := MISDiffer new base: localSnapshot; target: remoteSnapshot; patchIt.
	conflicts := items sort: [:a :b | a operation <= b operation].
	"conflicts := aMerger conflicts sort: [:a :b | a operation <= b operation]."