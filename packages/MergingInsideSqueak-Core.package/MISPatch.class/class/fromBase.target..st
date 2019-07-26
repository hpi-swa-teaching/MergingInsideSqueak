as yet unclassified
fromBase: baseMISSnapshot target: targetMISSnapshot
	
	^self withOperations: (
		MISDiffer base: baseMISSnapshot target: targetMISSnapshot; patch)