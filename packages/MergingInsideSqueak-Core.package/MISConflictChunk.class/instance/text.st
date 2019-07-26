accessing
text

	^self selectedSides inject: Text new into: [ :acc :side |
		acc append: (self textForSide: side)]