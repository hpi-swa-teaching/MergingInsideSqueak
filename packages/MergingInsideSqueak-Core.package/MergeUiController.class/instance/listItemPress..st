ConflictListHandler
listItemPress: aItem
	aItem hasChildren not ifTrue: [
		currentConflictingClass := conflicts indexOf: aItem conflictingClass.
		currentConflictingMethod := (conflicts at: currentConflictingClass) getMethodConflicts indexOf: aItem.
		self view getPartA update: #partA.
		self view getPartB update: #partB.
		self view getResult update: #resultText.
	]