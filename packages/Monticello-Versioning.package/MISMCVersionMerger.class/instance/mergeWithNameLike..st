merging
mergeWithNameLike: baseName

	self calculateProvisions.
	self calculateChanges.
	merger conflicts: changes.
	self resolveConflicts ifTrue: [
		"Merge conflicts have been resolved successfully by the user"
		self save: merger conflicts withName: baseName.
		records do: [:record |
			record updateWorkingCopy]].