as yet unclassified
testSourceHolderGeneration
	| sampleClass packageInfo latestVersion target actualSourceHolder expectedSourceHolder |
	self halt.
	self suppressChangeNotificationsDuring: [sampleClass := classFactory newClass].
	sampleClass compileSilently: 'firstMethod ^ self' classified: 'methods of first version'.
	packageInfo := PackageInfo named: classFactory packageName.
	workingCopy add: packageInfo at: 'src'.
	
	workingCopy saveNewVersionMessage: 'first version' interactive: false.
	
	sampleClass compileSilently: 'firstMethod2 ^ 123' classified: 'methods of first version'.
	sampleClass compileSilently: 'firstMethod ^ 123' classified: 'methods of first version'.
	classFactory newClass.
	
	workingCopy saveNewVersionMessage: 'second version' interactive: false.
	latestVersion := workingCopy baseVersion.
	target := latestVersion parents first.
	actualSourceHolder := workingCopy getSourceHoldersFor: latestVersion.
	