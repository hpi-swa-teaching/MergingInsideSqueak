accessing
textForSide: aSide

	(aSide = #left) ifTrue: [^self left].
	(aSide = #right) ifTrue: [^self right].
	(aSide = #result) ifTrue: [
		self isResolved
			ifTrue: [^self selected]
			ifFalse: [^'?']
		].
	^''