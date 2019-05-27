accessing
getTextColorFromChunk: aChunk ForSide: aSide
	
	aChunk isConflict
		ifTrue: [
			aSide == #result
				ifTrue: [
					aChunk isResolved
						ifTrue: [^self resolvedConflictColor]
						ifFalse: [^self mergeConflictColor]
					]
				ifFalse: [
					aChunk isResolved
						ifTrue: [
							(aChunk getSelected anySatisfy: [:selected | selected == aSide])
								ifTrue: [^self takenColor]
								ifFalse: [^self discardedColor]
							]
						ifFalse: [^self unresolvedConflictColor]
					]
			]