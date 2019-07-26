as yet unclassified
window
	windowMorph ifNil: [
		windowMorph := self buildWindow.
		self conflictListMorph update: #selectedPath].
	^windowMorph