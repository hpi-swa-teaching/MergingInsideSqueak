helpMethods
getResult
	|uiSubmorphs|

	uiSubmorphs := view getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'result']