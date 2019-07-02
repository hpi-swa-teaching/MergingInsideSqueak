accessing
recentConflictIndexForChange: aMISPatchOperation

	^aMISPatchOperation change conflictIndexAt: (self recentConflictIndices at: aMISPatchOperation ifAbsentPut: 1)