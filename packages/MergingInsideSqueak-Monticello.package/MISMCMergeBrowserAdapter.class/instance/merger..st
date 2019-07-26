as yet unclassified
merger: aMerger

	| localSources remoteSources localSnapshot remoteSnapshot |
	merger := aMerger.
	localSources := (aMerger operations sorted
		reject: [ :op | op isAddition ])
		collect: [ :op | op isModification
			ifTrue: [ op obsoletion ]
			ifFalse: [ op definition ]
		].
	remoteSources := (aMerger operations sorted
		reject: [ :op | op isRemoval ])
		collect: [ :op | op isModification
			ifTrue: [ op modification ]
			ifFalse: [ op definition ]
		].
	localSnapshot := self convertMCDefinitionsToMISSnapshot: localSources.
	remoteSnapshot := self convertMCDefinitionsToMISSnapshot: remoteSources.
	items := MISDiffer new base: localSnapshot; target: remoteSnapshot; patchIt.
	conflicts := aMerger conflicts sort: [:a :b | a operation <= b operation].