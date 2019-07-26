building
buildAndOpen
	| builder |
	
	builder := MorphicToolBuilder new.
	windowMorph := self build.
	(testRun notNil and: [testRun]) ifTrue: [^self] ifFalse: [
		builder runModal: (builder open: windowMorph).
		^ self controller areAllResolved ifTrue: [self currentStateAsSnapshot]
			ifFalse: [^nil]
	]