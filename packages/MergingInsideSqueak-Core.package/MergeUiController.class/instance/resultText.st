resultHandler
resultText
	| chunks uiText conflictingClass conflictingMethod |
	
	conflictingClass := conflicts at: currentConflictingClass.
	conflictingMethod := conflictingClass getMethodConflicts at: currentConflictingMethod.
	chunks := conflictingMethod getChunks.
	uiText := Text new.
	chunks doWithIndex: [:chunk :index | |appendText|
		appendText := self getTextFor: #result FromChunk: chunk.
		index = self getCurrentConflictingMethod currentConflictNum ifTrue: [appendText addAttribute: TextEmphasis underlined].
		uiText append: appendText].
	^uiText