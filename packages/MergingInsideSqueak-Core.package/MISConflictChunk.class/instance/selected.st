as yet unclassified
selected

	^(self selectedSides isEmptyOrNil) ifTrue: [^''] ifFalse: [
			^self selectedSides inject: String new into: [ :acc :side | acc , (self textForSide: side) ]]