testing
resolveConflicts
	(records allSatisfy: [:ea | ea isAncestorMerge]) ifTrue: [MCNoChangesException signal. ^ false].
	^ ((MCMergeResolutionRequest new merger: merger; browser: self defaultBrowser)
		signal: 'Merging ', records first version info name) = true