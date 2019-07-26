update
mergeVersions
	| patch mergedSnapshot |
	
	baseSources := self getSourceHoldersFor: baseVersion.
	targetSources := self getSourceHoldersFor: targetVersion.
	patch := MISDiffer new
		base: baseSources;
		target: targetSources;
		patchIt.
	mergedSnapshot := MergeUiView openWithConflicts: patch.
	mergedSnapshot notNil ifTrue: [self updateToMergedObjects: mergedSnapshot.]
	