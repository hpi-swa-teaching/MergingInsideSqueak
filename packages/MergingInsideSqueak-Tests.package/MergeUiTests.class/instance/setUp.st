running
setUp
	
	view := MergeUiView openWithMockData.
	controller := view getController.
	self assert: view isNil not.