loading and unloading
mergeVersionInteractively: aVersion ifCanceled: cancelBlock
	
	false ifTrue: [
		"SquotMISAdapter mergeBase: self baseVersion target: aVersion workingCopy: self"
	] ifFalse: [
		self mergeVersionInteractivelyOldWay: aVersion ifCanceled: cancelBlock]
	