as yet unclassified
assertConverted: aMISSnapshot hasSameNumberOfClasses: aMCSnapshot

	self assert: (aMISSnapshot sources size) equals: (self classesOfDefinitions: aMCSnapshot definitions) size