running
setUp
	
	view := MergeUiView openWithMockData.
	self assert: view isNil not.
	styler := SHTextStylerST80 new applyUserInterfaceTheme