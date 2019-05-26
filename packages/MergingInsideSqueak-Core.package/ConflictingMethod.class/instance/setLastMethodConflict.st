accessing
setLastMethodConflict
	| startingIndex chunksReversed |
	
	startingIndex := chunks size - currentConflict + 1.
	chunksReversed := chunks copy reverse.
	chunksReversed doWithIndex: [:chunk :index | (startingIndex < index and: chunk isConflict) ifTrue: [currentConflict := chunks size - index + 1. ^self]].