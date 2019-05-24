ConflictListHandler
listItemPress: aItem

	currentConflictingClass := conflicts indexOf: aItem conflictingClass.
	currentConflictingMethod := (conflicts at: currentConflictingClass) getMethodConflicts indexOf: aItem.
	self getPartA update: #partA.
	self getPartB update: #partB.
	self getResult update: #resultText.