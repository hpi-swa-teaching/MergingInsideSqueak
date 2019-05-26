accessing
getResult
	|uiSubmorphs|

	uiSubmorphs := self getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'result']