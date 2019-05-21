initialize
openWithConflicts: aConflictCollection
	|newView|
	
	newView := self new.
	newView getController conflicts: aConflictCollection.
	^newView buildAndOpenFullMergingTool
	