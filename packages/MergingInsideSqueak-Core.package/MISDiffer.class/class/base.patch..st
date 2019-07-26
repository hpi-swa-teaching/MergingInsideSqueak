as yet unclassified
base: aMISSnapshot patch: aPatch
	aPatch isEmpty ifTrue: [MISNoChangesException signal].
	^ self new
		base: aMISSnapshot;
		patch: aPatch;
		yourself