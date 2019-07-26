accessing
labelColor

	| sources |
	self change isClassSource ifTrue: [sources := self change methods].
	self change isMethodSource ifTrue: [sources := OrderedCollection with: self ].
	sources do: [:method | 
		(method change source anySatisfy: [:chunk | chunk isResolved not ])
			ifTrue: [^TextColor red]
		].
	^TextColor black