initialize
initWithConflicts: aCollectionOfConflicts

	| instance |
	instance := self new.
	instance controller conflicts: aCollectionOfConflicts.
	^ instance
	