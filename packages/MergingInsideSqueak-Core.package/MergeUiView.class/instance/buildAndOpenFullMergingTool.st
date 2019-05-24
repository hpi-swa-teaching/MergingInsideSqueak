building
buildAndOpenFullMergingTool

	| builder windowSpec |
	builder := ToolBuilder default.
	
	windowSpec := self buildWindowWith: builder specs: {
		(self conflictListFrame) -> [self buildConflictListWith: builder].
		(self mergeResultFrame) -> [self buildMergeResultWith: builder].
		(self mergePartAFrame) -> [self buildMergePartAWith: builder].
		(self mergePartBFrame) -> [self buildMergePartBWith: builder].
		(self mergeButtonsFrame) -> [self buildMergeButtonsWith: builder]
	}.
	self setMultiWindowFor: windowSpec.
	
	ui := builder build: windowSpec.
		
	builder open: ui.
	
	self getController getConflictList update: #selectedPath.
	
	^self 	