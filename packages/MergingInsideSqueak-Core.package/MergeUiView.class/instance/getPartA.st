accessing
getPartA
	|uiSubmorphs|

	uiSubmorphs := self getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'partA']