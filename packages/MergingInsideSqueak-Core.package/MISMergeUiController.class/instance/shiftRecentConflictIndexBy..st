updating
shiftRecentConflictIndexBy: anOffset

	| totalConflicts recentConflictIndex newConflictIndex |
	totalConflicts := self currentChange change conflictCount.
	recentConflictIndex := self recentConflictIndices at: self currentChange ifAbsentPut: 1.
	newConflictIndex := (recentConflictIndex + anOffset) rem: totalConflicts.
	(newConflictIndex = 0)  ifTrue: [
			newConflictIndex := totalConflicts].
	self setConflictIndex: newConflictIndex forChange: self currentChange.
	self updateSourceViews