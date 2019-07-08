building
buildAndOpen

	ui := self build.
	MorphicToolBuilder new open: ui.
	^self