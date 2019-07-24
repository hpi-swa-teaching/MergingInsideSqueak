initialize
openWithConflicts: aConflictCollection
	|newView|
	
	newView := self new.
	newView controller conflicts: aConflictCollection.
	^newView buildAndOpen