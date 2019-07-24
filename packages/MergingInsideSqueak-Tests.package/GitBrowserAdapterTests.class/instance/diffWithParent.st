as yet unclassified
diffWithParent
	| sampleClass packageInfo latestVersion target |
	self suppressChangeNotificationsDuring: [sampleClass := classFactory newClass].
	packageInfo := PackageInfo named: classFactory packageName.
	workingCopy add: packageInfo at: 'src'.
	workingCopy saveNewVersionMessage: 'init version' interactive: false.
	
	sampleClass compileSilently: 'firstMethod
		^ self' classified: 'methods of first version'.

	sampleClass compileSilently: 'firstMethod3
		^ self' classified: 'methods of first version'.
			
	workingCopy saveNewVersionMessage: 'first version' interactive: false.
	target := workingCopy baseVersion.
	(target artifacts at: 'src/CategoryForTestToBeDeleted.package') capture.
		
	sampleClass compileSilently: 'firstMethod
		^ 123' classified: 'methods of first version'.
	sampleClass compileSilently: 'firstMethod2 ^ 123' classified: 'methods of first version'.
	sampleClass removeSelector: #firstMethod3.
	classFactory newClass.
	
	workingCopy saveNewVersionMessage: 'second version' interactive: false.
	latestVersion := workingCopy baseVersion.
	(latestVersion artifacts at: 'src/CategoryForTestToBeDeleted.package') capture.
	SquotMISAdapter mergeBase: latestVersion target: target workingCopy: workingCopy.
	self tearDown.
	