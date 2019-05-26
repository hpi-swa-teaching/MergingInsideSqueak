accessing
getPartB
	|uiSubmorphs|

	uiSubmorphs := self getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'partB']