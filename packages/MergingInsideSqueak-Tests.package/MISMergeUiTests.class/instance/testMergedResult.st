tests
testMergedResult
	| conflictSnapshot resolvedSnapshot view testClass testMethod |
	
	conflictSnapshot := MISSnapshot standardTestExample.
	view := MergeUiView new.
	view controller conflicts: conflictSnapshot sources.
	resolvedSnapshot := view currentStateAsSnapshot.
	self assert: resolvedSnapshot sources size = 1.
	testClass := resolvedSnapshot sources at: 1.
	self assert: testClass className = 'TestClass'.
	self assert: testClass methods size = 1.
	testMethod := testClass methods at: 1.
	self assert: testMethod methodName = 'method1'.
	self assert: testMethod source size = 1.
	self assert: (testMethod source at: 1) text = 'method1 ^12'. 
	