accessing
getTextColorFromChunk: aChunk ForSide: aSide

	^aChunk isConflict
		ifFalse: [^TextColor black]
		ifTrue: [
			^aChunk isResolved
				ifTrue: [
					(aChunk getSelected anySatisfy: [:selected | selected == aSide])
						ifTrue: [^TextColor green]
						ifFalse: [^TextColor red]
					]
				ifFalse: [^TextColor blue]
			]