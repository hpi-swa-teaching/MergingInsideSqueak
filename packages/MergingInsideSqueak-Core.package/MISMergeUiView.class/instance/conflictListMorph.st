accessing
conflictListMorph

	^self submorphs detect: [:morph | morph nameForFindWindowFeature = 'conflictList']