as yet unclassified
diffWithParent
	| sampleClass packageInfo latestVersion target |
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
	workingCopy mergeVersionInteractively: target ifCanceled: [].
	"diffs := self getDiffsOf: workingCopy.
	self halt."
	