partBHandler
getPartB
	|uiSubmorphs|

	uiSubmorphs := view getUi submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature =  'partB']