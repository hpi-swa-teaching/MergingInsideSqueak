building
build

	| builder windowSpec |
	builder := MorphicToolBuilder new.
	
	windowSpec := self buildWindowWith: builder specs: {
		(self conflictListFrame) -> [self buildConflictListWith: builder].
		(self mergeResultFrame) -> [self buildMergeResultWith: builder].
		(self mergePartAFrame) -> [self buildMergePartAWith: builder].
		(self mergePartBFrame) -> [self buildMergePartBWith: builder].
		(self partAButtonsFrame) -> [self buildPartAButtonsWith: builder].
		(self partBButtonsFrame) -> [self buildPartBButtonsWith: builder].
		(self generalButtonsFrame) -> [self buildGeneralButtonsWith: builder]
	}.
	self setMultiWindowFor: windowSpec.
	ui := builder build: windowSpec.
	self conflictListMorph update: #selectedPath.
	^ui 	