partBHandler
partB
	| chunks uiText |
	
	chunks := self currentMethod change chunks.
	uiText := Text new.
	chunks doWithIndex: [:chunk :index | |appendText|
		appendText := self getTextFor: #right FromChunk: chunk.
		"index = self getCurrentConflictingMethod currentConflictNum ifTrue: [appendText addAttribute: TextEmphasis underlined]."
		uiText append: appendText].
	^uiText