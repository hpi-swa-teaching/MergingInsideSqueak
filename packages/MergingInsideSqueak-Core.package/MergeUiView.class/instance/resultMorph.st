accessing
resultMorph
	
	^self submorphs detect: [:morph | morph nameForFindWindowFeature = 'result']