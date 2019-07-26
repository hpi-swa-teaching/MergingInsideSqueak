accessing
window
	windowMorph ifNil: [
		windowMorph := self buildWindow.
		self conflictListMorph update: #selectedPath].
	^windowMorph