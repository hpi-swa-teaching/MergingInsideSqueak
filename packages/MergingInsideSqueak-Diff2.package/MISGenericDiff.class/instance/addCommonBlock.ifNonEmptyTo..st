as yet unclassified
addCommonBlock: aSubCollection ifNonEmptyTo: aCollection
	^ aSubCollection isEmpty
		ifFalse: [aCollection add: #common -> aSubCollection asArray. OrderedCollection new]
		ifTrue: [aSubCollection]