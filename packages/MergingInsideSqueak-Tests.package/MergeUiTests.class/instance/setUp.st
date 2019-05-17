as yet unclassified
setUp
	|test1 test2 conflict conflicts|
	
	test1 := 'Hallo', Character cr, '1223', Character cr, '1223'. 
	test2 := 'Hallo', Character cr, '1553', Character cr, '1443'.
	
	conflict := FileDiffWrapper newForA: test1 andB: test2.
	conflicts := OrderedCollection with: conflict.
	uiController := MergeUiView openWithConflicts: conflicts.