as yet unclassified
testEncodes
	<timeout: 30 "seconds">

	| currentSnapshot convertedSnapshot | 
	currentSnapshot := self version snapshot.
	convertedSnapshot := MISSnapshot fromMCSnapshot: currentSnapshot.
	
	self assertConverted: convertedSnapshot hasSameNumberOfClasses: currentSnapshot.
	self assertConverted: convertedSnapshot hasSameNumberOfMethods: currentSnapshot.