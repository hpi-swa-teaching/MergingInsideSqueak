accessing
buttonBMorph

	^self panel submorphs detect: [:morph | morph nameForFindWindowFeature = 'buttonB']