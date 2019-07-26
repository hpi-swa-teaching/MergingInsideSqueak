accessing
previousConflictButtonMorph

	^self panel detect: [:morph | morph nameForFindWindowFeature = 'buttonA']