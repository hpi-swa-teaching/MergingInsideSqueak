accessing
recentConflictIndexForChange: aMISPatchOperation

	(aMISPatchOperation change conflictCount = 0) ifTrue: [^nil].
	^aMISPatchOperation change conflictAtIndex: (self recentConflictIndices at: aMISPatchOperation id ifAbsentPut: 1)