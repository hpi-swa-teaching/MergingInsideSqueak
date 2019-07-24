as yet unclassified
showModally
	modalProcess := Processor activeProcess.
	self window openInWorldExtent: self class defaultExtent.
	[self window world notNil] whileTrue: [
		self window outermostWorldMorph doOneCycle.
	].
	windowMorph := nil.
	^ modalValue