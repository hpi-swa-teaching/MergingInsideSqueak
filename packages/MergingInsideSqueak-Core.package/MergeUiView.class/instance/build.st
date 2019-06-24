building
build

	| builder windowSpec |
	builder := MorphicToolBuilder new.
	
	windowSpec := self buildWindowWith: builder specs: {
		(self conflictListFrame) -> [self buildConflictListWith: builder].
		(self mergeResultFrame) -> [self buildMergeResultWith: builder].
		(self mergePartAFrame) -> [self buildMergePartAWith: builder].
		(self mergePartBFrame) -> [self buildMergePartBWith: builder].
		(self mergeButtonsFrame) -> [self buildMergeButtonsWith: builder]
	}.
	self setMultiWindowFor: windowSpec.
	
	ui := builder build: windowSpec.
	
	"self getConflictList update: #selectedPath."
	
	^ui 	