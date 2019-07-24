as yet unclassified
testSourceHolderGeneration
	| latestVersion actualSourceHolder |
	
	latestVersion := workingCopy baseVersion.
	actualSourceHolder := SquotMISAdapter new getSourceHoldersFor: latestVersion.
	self assert: actualSourceHolder sources size = 2.
	actualSourceHolder := SquotMISAdapter new getSourceHoldersFor: latestVersion parents first .
	self assert: actualSourceHolder sources size = 1.
	self assert: (actualSourceHolder sources at: 1) methods size = 2.