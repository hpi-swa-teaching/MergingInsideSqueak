as yet unclassified
merge

	self calculateProvisions.
	self calculateChanges.
	merger conflicts: changes.
	self resolveConflicts ifTrue: [
		"Merge conflicts have been resolved successfully by the user"
		self save: merger conflicts.
		records do: [:record |
			record updateWorkingCopy]].