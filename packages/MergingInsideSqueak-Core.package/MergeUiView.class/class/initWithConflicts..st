initialize
initWithConflicts: aCollectionOfConflicts

	| instance |
	instance := self new.
	instance getController conflicts: aCollectionOfConflicts.
	^ instance
	