accessing
attributedText

	^self selectedSides inject: Text new into: [ :acc :side | acc append: (self attributedTextForSide: side) ]