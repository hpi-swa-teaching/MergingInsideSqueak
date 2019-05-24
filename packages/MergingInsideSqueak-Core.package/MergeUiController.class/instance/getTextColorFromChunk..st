as yet unclassified
getTextColorFromChunk: aChunk

	^aChunk isConflict
		ifFalse: [^TextColor black]
		ifTrue: [
			^aChunk isResolved
				ifTrue: [^TextColor green]
				ifFalse: [^TextColor blue]
			]