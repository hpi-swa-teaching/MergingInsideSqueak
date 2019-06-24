as yet unclassified
selected

	^selection = #local ifTrue: [
			^local
		] ifFalse: [
			selection = #remote ifTrue: [^remote] ifFalse: [^nil]
		]