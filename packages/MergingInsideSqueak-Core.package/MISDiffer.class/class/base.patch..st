instance creation
base: aMISSnapshot patch: aPatch
	
	aPatch isEmpty ifTrue: [MCNoChangesException signal].
	^ self new
		base: aMISSnapshot;
		patch: aPatch;
		yourself