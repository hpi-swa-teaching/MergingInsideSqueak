accessing
setConflictIndex: anIndex forChange: aMISPatchOperation

	self halt.
	self recentConflictIndices removeKey: aMISPatchOperation ifAbsent: [].
	^self recentConflictIndices at: aMISPatchOperation put: anIndex