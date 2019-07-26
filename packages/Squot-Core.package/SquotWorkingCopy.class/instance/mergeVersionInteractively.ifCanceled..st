loading and unloading
mergeVersionInteractively: aVersion ifCanceled: cancelBlock
	
	"toggle ifTrue: [
		"SquotMISAdapter mergeBase: self baseVersion target: aVersion workingCopy: self"
	] ifFalse: ["
		"self mergeVersionInteractivelyOldWay: aVersion ifCanceled: cancelBlock"
	"]"
	