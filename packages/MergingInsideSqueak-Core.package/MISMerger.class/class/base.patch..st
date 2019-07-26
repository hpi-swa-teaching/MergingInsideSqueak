as yet unclassified
base: aSnapshot patch: aPatch
	aPatch isEmpty ifTrue: [MISNoChangesException signal].
	^ self new
		addBaseSnapshot: aSnapshot;
		applyPatch: aPatch;
		yourself