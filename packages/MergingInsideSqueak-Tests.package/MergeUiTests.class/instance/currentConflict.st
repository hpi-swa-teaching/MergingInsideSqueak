helpers
currentConflict

	| currentConflict currentConflictIndex |
	currentConflictIndex := view controller recentConflictIndexForChange: view controller currentChange.
	currentConflict := view controller currentChange change source at: currentConflictIndex.
	^currentConflict