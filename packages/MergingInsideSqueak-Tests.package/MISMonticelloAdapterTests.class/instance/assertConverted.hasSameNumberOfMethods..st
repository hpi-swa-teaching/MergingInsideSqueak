as yet unclassified
assertConverted: aMISSnapshot hasSameNumberOfMethods: aMCSnapshot

	aMISSnapshot sources do: [ :source |
		self assert: source methods size equals: (self methodsOfClassNamed: source className in: aMCSnapshot definitions) size]