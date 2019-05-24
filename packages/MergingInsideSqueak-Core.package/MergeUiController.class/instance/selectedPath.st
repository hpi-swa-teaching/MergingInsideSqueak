ConflictListHandler
selectedPath
	| path |
	
	path := Array new: 2.
	path at: 2 put: ((conflicts at: currentConflictingClass) getMethodConflicts at: currentConflictingMethod).
	path at: 1 put: (conflicts at: currentConflictingClass).
	self listItemPress: ((conflicts at: currentConflictingClass) getMethodConflicts at: currentConflictingMethod).
	^path