accessing
recentConflictIndices

	self halt.
	^ recentConflictIndices ifNil: [recentConflictIndices := Dictionary new]