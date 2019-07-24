as yet unclassified
sourceText

	^(self source allSatisfy: [ :chunk | chunk isResolved ])
		ifTrue: [
			self source inject: String new into: [ :acc :chunk | acc, chunk text ]
 		] ifFalse: [nil]