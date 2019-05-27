accessing
getTextColorFromChunk: aChunk ForSide: aSide
	
	aChunk isConflict
		ifTrue: [
			aSide == #result
				ifTrue: [
					aChunk isResolved
						ifTrue: [^styler attributesFor: #keyword]
						ifFalse: [^styler attributesFor: #invalid]
					]
				ifFalse: [
					aChunk isResolved
						ifTrue: [
							(aChunk getSelected anySatisfy: [:selected | selected == aSide])
								ifTrue: [^Array with: TextColor green]
								ifFalse: [^styler attributesFor: #invalid]
							]
						ifFalse: [^styler attributesFor: #keyword]
					]
			]