accessing
getTextFor: aSide FromChunk: aChunk
	| textColor text |
	
	textColor := self getTextColorFromChunk: aChunk ForSide: aSide.
	aChunk isConflict
		ifFalse: [^Text fromString: aChunk getText]
		ifTrue: [
			aSide = #result
				ifTrue: [
					aChunk isResolved
					ifTrue: [
						text := Text new.
						aChunk getSelected do: [:selected | selected == #left
							ifTrue: [text append: (Text string: aChunk getLeft attribute: TextColor blue)]
							ifFalse: [text append: (Text string: aChunk getRight attribute: TextColor blue)]
							].
						^text
						]
					ifFalse: [^Text string: '?' attribute: TextColor red]
					]
				ifFalse: [
					aSide = #left
						ifTrue: [^Text string: aChunk getLeft attribute: textColor]
						ifFalse: [^Text string: aChunk getRight attribute: textColor]
				]	
			]
			