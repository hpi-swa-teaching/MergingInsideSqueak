building
buildAndOpen
	| builder |
	
	builder := MorphicToolBuilder new.
	ui := self build.
	builder runModal: (builder open: ui).
	^ self controller areAllResolved ifTrue: [self currentStateAsSnapshot]
		ifFalse: [^nil]