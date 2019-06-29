as yet unclassified
base: aMISSnapshot patch: aPatch
	aPatch isEmpty ifTrue: [MISNoChangesException signal].
	^ self new
		addBaseSnapshot: aMISSnapshot;
		applyPatch: aPatch;
		yourself