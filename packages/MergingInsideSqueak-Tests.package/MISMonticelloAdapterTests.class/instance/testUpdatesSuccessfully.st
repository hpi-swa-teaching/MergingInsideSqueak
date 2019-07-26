as yet unclassified
testUpdatesSuccessfully
	"<timeout: 30 ""seconds"">"

	| currentSnapshot convertedSnapshot | 
	currentSnapshot := self version snapshot.
	convertedSnapshot := MISSnapshot fromMCSnapshot: currentSnapshot.
	self halt.
	
	self assert: (convertedSnapshot sources size) equals: (self classesOfDefinitions: currentSnapshot definitions) size.
	
	"self assert: targetSources = (SquotAdapter getSourceHoldersFor: workingCopy baseVersion)."

	"self workingCopy withEnvironmentActiveDo: [
		MISMCVersionMerger new mergeVersion: nil]."