as yet unclassified
testSnapshot

	| snapshot1 snapshot2 |
	
	snapshot1 := self createSnapshotFromSource: 'Hello'.
	snapshot2 := self createSnapshotFromSource: 'Hello'.
	
	self assert: snapshot1 = snapshot2.
