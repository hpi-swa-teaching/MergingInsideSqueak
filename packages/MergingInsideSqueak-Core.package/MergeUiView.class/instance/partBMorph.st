accessing
partBMorph

	^self submorphs detect: [:morph | morph nameForFindWindowFeature = 'partB']