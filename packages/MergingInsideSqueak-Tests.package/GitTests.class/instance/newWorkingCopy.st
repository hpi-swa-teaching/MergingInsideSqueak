as yet unclassified
newWorkingCopy
	^ self newRepository createWorkingCopy
		store: self newStore;
		yourself