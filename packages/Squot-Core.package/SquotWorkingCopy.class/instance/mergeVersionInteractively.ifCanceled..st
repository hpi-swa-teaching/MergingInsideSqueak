loading and unloading
mergeVersionInteractively: aVersion ifCanceled: cancelBlock
	
	true ifTrue: [
		SquotMISAdapter mergeBase: self baseVersion target: aVersion workingCopy: self
	] ifFalse: [
		self mergeVersionInteractivelyOldWay: aVersion ifCanceled: cancelBlock]
	