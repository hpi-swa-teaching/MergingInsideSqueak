accessing
partAMorph
	
	^self submorphs detect: [:morph | morph nameForFindWindowFeature = 'partA']