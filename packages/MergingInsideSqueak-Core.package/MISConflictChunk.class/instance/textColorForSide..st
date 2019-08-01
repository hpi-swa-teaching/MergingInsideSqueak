accessing
textColorForSide: aSide

	^(aSide = #result) ifTrue: [
			^self resultTextColor
		] ifFalse: [
			^self sourceTextColorForSide: aSide
		]