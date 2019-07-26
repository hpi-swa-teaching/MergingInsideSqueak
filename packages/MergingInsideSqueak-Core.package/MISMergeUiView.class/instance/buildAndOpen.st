building
buildAndOpen
	| builder |
	
	builder := MorphicToolBuilder new.
	ui := self build.
	(testRun notNil and: [testRun]) ifTrue: [^self] ifFalse: [
		builder runModal: (builder open: ui).
		^ self controller areAllResolved ifTrue: [self currentStateAsSnapshot]
			ifFalse: [^nil]
	]