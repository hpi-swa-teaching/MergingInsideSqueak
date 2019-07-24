as yet unclassified
sourceText

	^(self source allSatisfy: [ :chunk | chunk isResolved ])
		ifTrue: [
			self symbolsToString: (self source inject: String empty into: [ :acc :chunk |
				acc , (self symbolsToString: chunk text) ])
 		] ifFalse: [nil]