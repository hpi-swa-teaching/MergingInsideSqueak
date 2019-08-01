saving
saveSnapshot: aMISSnapshot

	| local remote |
	self assert: baseSnapshot isNil not.
	local := baseSnapshot.
	remote := aMISSnapshot.

	self save: (MISDiffer base: local target: remote) patch