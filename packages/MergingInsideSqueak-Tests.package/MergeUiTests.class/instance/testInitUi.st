tests
testInitUi
	|controller|

	controller := MergeUiView openWithConflicts: conflicts.
	self assert: controller getUi notNil.
	controller close