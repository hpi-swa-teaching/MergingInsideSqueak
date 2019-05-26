accessing
getConflictList
	|uiSubmorphs|

	uiSubmorphs := self getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'conflictList']