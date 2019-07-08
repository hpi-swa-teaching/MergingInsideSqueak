accessing
recentConflictIndexForChange: aMISPatchOperation

	(aMISPatchOperation change conflictCount = 0) ifTrue: [^nil].
	^aMISPatchOperation change conflictIndexAt: (self recentConflictIndices at: aMISPatchOperation ifAbsentPut: 1)