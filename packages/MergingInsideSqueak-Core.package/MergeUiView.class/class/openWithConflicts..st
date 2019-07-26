initialize
openWithConflicts: aConflictCollection
	|newView|
	(aConflictCollection notNil and: [aConflictCollection notEmpty]) ifTrue: [
		newView := self new.
		newView controller conflicts: aConflictCollection.
		^newView buildAndOpen
	] ifFalse: [
		^nil
	]
	