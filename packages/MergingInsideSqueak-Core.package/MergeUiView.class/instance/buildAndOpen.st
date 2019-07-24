building
buildAndOpen
	
	self halt.
	"| builder |
	builder := MorphicToolBuilder new.
	ui := self build.
	builder runModal: (builder open: ui).
	^self currentStateAsSnapshot"