loading and unloading
mergeVersionInteractivelyNewWay: aVersion ifCanceled: cancelBlock
	| baseSourceHolders targetSourceHolders patch |
	
	baseSourceHolders := self getSourceHoldersFor: (self baseVersion).
	targetSourceHolders := self getSourceHoldersFor: aVersion.
	patch := MISDiffer new
		base: (MISSnapshot fromSources: baseSourceHolders);
		target: (MISSnapshot fromSources: targetSourceHolders);
		patchIt.
	MergeUiView openWithConflicts: patch.
	