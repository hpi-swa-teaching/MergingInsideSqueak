accessing
buttonBMorph

	^self panelB submorphs detect: [:morph | morph nameForFindWindowFeature = 'buttonB']