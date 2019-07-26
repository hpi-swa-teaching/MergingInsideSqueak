loading and unloading
mergeVersionInteractively: aVersion ifCanceled: cancelBlock
	
	SquotMISAdapter mergeBase: self baseVersion target: aVersion workingCopy: self
	"self mergeVersionInteractivelyOldWay: aVersion ifCanceled: cancelBlock]"
	