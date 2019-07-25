as yet unclassified
addCommonBlock: aSubCollection ifNonEmptyTo: aCollection
	aSubCollection isEmpty
		ifFalse: [
			((file1 at: (aSubCollection last)) = Character cr)
				ifTrue: [aSubCollection remove: aSubCollection last].
			aCollection add: #common -> (file1 copyFrom: aSubCollection first to: aSubCollection last). 
				self lineBlock: OrderedCollection new ]
		ifTrue: [aSubCollection]