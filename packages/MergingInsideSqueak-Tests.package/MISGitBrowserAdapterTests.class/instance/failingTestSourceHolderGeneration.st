as yet unclassified
failingTestSourceHolderGeneration
	"Disabled because failing on CI"

	| latestVersion actualSourceHolder |
	
	latestVersion := workingCopy baseVersion.
	actualSourceHolder := SquotMISAdapter new getSourceHoldersFor: latestVersion.
	self assert: actualSourceHolder sources size = 1.
	actualSourceHolder := SquotMISAdapter new getSourceHoldersFor: latestVersion parents first .
	self assert: actualSourceHolder sources size = 1.
	self assert: (actualSourceHolder sources at: 1) methods size = 2.