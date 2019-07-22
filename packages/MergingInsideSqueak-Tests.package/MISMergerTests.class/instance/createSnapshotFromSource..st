mocking
createSnapshotFromSource: aSource

	| snapshot collectionOfMISClasses |
	
	collectionOfMISClasses := self createCollectionOfMISClassesFromSource: aSource.	
	snapshot := MISSnapshot new initializeWithSources: collectionOfMISClasses.
	^snapshot