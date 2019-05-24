partAHandler
partA
	| chunks uiText conflictingClass conflictingMethod |
	
	conflictingClass := conflicts at: currentConflictingClass.
	conflictingMethod := conflictingClass getMethodConflicts at: currentConflictingMethod.
	chunks := conflictingMethod getChunks.
	uiText := Text new.
	chunks do: [:chunk | uiText append: (self getTextFor: #left FromChunk: chunk)].
	^uiText