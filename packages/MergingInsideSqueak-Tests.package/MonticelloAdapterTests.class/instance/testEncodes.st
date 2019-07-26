as yet unclassified
testEncodes
	<timeout: 30 "seconds">

	| currentSnapshot convertedSnapshot | 
	currentSnapshot := self version snapshot.
	convertedSnapshot := MISSnapshot fromMCSnapshot: currentSnapshot.
	
	"Ensure the converted Monticello snapshot data has the same number of classes and methods"
	"More conversion tests are to be found at ??"
	self assertConverted: convertedSnapshot hasSameNumberOfClasses: currentSnapshot.
	self assertConverted: convertedSnapshot hasSameNumberOfMethods: currentSnapshot.