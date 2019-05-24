nil
getTextFor: aSide FromChunk: aChunk
	| textColor |
	
	textColor := self getTextColorFromChunk: aChunk.
	aChunk isConflict
		ifFalse: [^Text string: aChunk getText attribute: textColor]
		ifTrue: [
			aSide = #result
				ifTrue: [^Text string: '?' attribute: TextColor red]
				ifFalse: [
					aSide = #left
						ifTrue: [^Text string: aChunk getLeft attribute: textColor]
						ifFalse: [^Text string: aChunk getRight attribute: textColor]
				]	
			]
			