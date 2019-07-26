as yet unclassified
testUpdatesSuccessfully
	<timeout: 30 "seconds">

	| currentSnapshot convertedSnapshot | 
	currentSnapshot := self version snapshot.
	convertedSnapshot := MISSnapshot fromMCSnapshot: currentSnapshot.
	
	self assert: (convertedSnapshot sources size) equals: (self classesOfDefinitions: currentSnapshot definitions) size.