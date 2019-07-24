accessing
buttonAMorph
	
	^self panel submorphs detect: [:morph | morph nameForFindWindowFeature = 'buttonA']