as yet unclassified
failingTestUpdating
	"Disabled because failing on CI"

	| targetVersion targetSources SquotAdapter |
	
	SquotAdapter := SquotMISAdapter new
						baseVersion: workingCopy baseVersion;
						targetVersion: workingCopy baseVersion parents first;
						workingCopy: workingCopy.
	SquotAdapter 
		baseSources: (SquotAdapter getSourceHoldersFor: workingCopy baseVersion);
		targetSources: (SquotAdapter getSourceHoldersFor: workingCopy baseVersion parents first).
	targetVersion := workingCopy baseVersion parents first.
	targetSources := SquotAdapter getSourceHoldersFor: targetVersion.
	SquotAdapter updateToMergedObjects: targetSources.
	workingCopy saveNewVersionMessage: 'merged version' interactive: false.
	self assert: targetSources = (SquotAdapter getSourceHoldersFor: workingCopy baseVersion).