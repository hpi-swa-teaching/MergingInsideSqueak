accessing
nextConflictButtonMorph
	
	^self panel detect: [:morph | morph nameForFindWindowFeature = 'nextConflict']