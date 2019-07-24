ConflictListHandler
save
	| allResolved |

	allResolved := true.
	self conflicts do: [:conflict | | conflictingClass |
		conflictingClass := conflict change.
		conflictingClass methods do: [:conflictDetail | | conflictingMethod |
			conflictingMethod := conflictDetail change.	
			conflictingMethod source do: [:chunk | 
				(chunk isConflict and: [chunk selectedSides isEmpty]) ifTrue: [
					allResolved := false.	
				]
			]
		]
	].
	allResolved ifTrue: [
		self view answer: true
	] ifFalse: [
		self inform: 'Some conflicts must still be resolved.'
	]