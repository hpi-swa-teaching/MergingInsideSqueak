as yet unclassified
symbolsToString: anArrayOfSymbols

	^anArrayOfSymbols inject: String new into: [:acc :symbol | acc, symbol asString ]