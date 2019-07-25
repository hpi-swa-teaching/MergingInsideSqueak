as yet unclassified
generateExampleCommits
	| sampleClass packageInfo |
	
	self suppressChangeNotificationsDuring: [sampleClass := classFactory newClass].
	packageInfo := PackageInfo named: classFactory packageName.
	workingCopy add: packageInfo at: 'src'.
	workingCopy saveNewVersionMessage: 'init version' interactive: false.
	
	sampleClass compileSilently: 'firstMethod
		^ self' classified: 'methods of first version'.

	sampleClass compileSilently: 'firstMethod3
		^ self' classified: 'methods of first version'.
			
	workingCopy saveNewVersionMessage: 'first version' interactive: false.
		
	sampleClass compileSilently: 'firstMethod
		^ 123' classified: 'methods of first version'.
	sampleClass compileSilently: 'firstMethod2 ^ 123' classified: 'methods of first version'.
	sampleClass removeSelector: #firstMethod3.
	
	workingCopy saveNewVersionMessage: 'second version' interactive: false.	