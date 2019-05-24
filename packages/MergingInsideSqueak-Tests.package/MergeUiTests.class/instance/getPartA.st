helpMethods
getPartA
	|uiSubmorphs|

	uiSubmorphs := view getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'partA']