as yet unclassified
testDecodes
	<timeout: 30 "seconds">

	| baseSnapshot targetSnapshot testClass testMethod1 testMethod2 patch |
	baseSnapshot := MISSnapshot fromMCSnapshot: self version snapshot.
	targetSnapshot := baseSnapshot deepCopy.
	
	testClass := MISClass new className: 'MISDecodeTestClass'; yourself.
	testMethod1 := MISMethod new methodName: 'misTestMethod1'; yourself.
	testMethod2 := MISMethod new methodName: 'misTestMethod2'; yourself.
	testMethod1 actualClass: testClass.
	testMethod2 actualClass: testClass.
	testClass methods: (OrderedCollection with: testMethod1 with: testMethod2).
	targetSnapshot sources add: testClass.
	patch := (MISDiffer base: baseSnapshot target: targetSnapshot) patch.
	"self changeMethod: #one toReturn: 11."
	
	self halt.
	"(MISMCVersionMerger base: baseSnapshot) saveSnapshot: targetSnapshot."
	"(MCVersion package: self mockPackage info: MCVersionInfo new snapshot: targetSnapshot)."
	self assert: targetSnapshot equals: (MISSnapshot fromMCSnapshot: self version snapshot)