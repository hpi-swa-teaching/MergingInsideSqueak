accessing
buttonAMorph
	
	^self panelA submorphs detect: [:morph | morph nameForFindWindowFeature = 'buttonA']