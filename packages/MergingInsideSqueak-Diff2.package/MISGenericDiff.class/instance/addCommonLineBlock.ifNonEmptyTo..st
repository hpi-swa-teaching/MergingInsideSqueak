line-diffing
addCommonLineBlock: aSubCollection ifNonEmptyTo: aCollection
	aSubCollection isEmpty
		ifFalse: [aCollection add: #common -> (file1 copyFrom: aSubCollection first to: aSubCollection last). 
				self lineBlock: OrderedCollection new]
		ifTrue: [aSubCollection]