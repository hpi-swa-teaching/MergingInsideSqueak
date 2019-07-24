as yet unclassified
targetClass
	| testClassName className |
	testClassName := self class name asText asString.
	className := 'SquitRepository'.
	^ self class environment valueOf: (className asSymbol).
