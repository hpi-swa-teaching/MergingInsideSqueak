partBHandler
partB
	| chunks uiText conflictingClass conflictingMethod |
	
	conflictingClass := conflicts at: currentConflictingClass.
	conflictingMethod := conflictingClass getMethodConflicts at: currentConflictingMethod.
	chunks := conflictingMethod getChunks.
	uiText := Text new.
	chunks do: [:chunk | uiText append: (self getTextFor: #right FromChunk: chunk)].
	^uiText