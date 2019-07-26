printing
symbolsToString: anArrayOfSymbols

	^anArrayOfSymbols inject: String new into: [:acc :symbol | acc, symbol asString ]