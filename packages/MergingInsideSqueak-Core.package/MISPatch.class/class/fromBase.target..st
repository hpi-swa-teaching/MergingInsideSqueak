instance creation
fromBase: baseMISSnapshot target: targetMISSnapshot
	
	^self withOperations: (
		MISDiffer base: baseMISSnapshot target: targetMISSnapshot; patch)