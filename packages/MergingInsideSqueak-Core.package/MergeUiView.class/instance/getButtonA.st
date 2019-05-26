accessing
getButtonA
	|uiSubmorphs panel|

	uiSubmorphs := self getUi submorphs.
	panel := uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'panel'].
	uiSubmorphs := panel submorphs.
	^uiSubmorphs detect: [:morph | morph nameForFindWindowFeature = 'buttonA']