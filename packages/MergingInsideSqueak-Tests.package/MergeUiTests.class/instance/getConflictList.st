helpMethods
getConflictList
	|uiSubmorphs|

	uiSubmorphs := view getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'conflictList']