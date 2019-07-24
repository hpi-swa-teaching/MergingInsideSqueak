loading and unloading
mergeVersionInteractively: aVersion ifCanceled: cancelBlock
	
	"toggle ifTrue: [
		"self mergeVersionInteractivelyNewWay: aVersion ifCanceled: cancelBlock"
	] ifFalse: ["
		"self mergeVersionInteractivelyOldWay: aVersion ifCanceled: cancelBlock"
	"]"
	