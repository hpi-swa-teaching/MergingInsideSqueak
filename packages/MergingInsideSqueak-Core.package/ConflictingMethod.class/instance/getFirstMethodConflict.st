accessing
getFirstMethodConflict

	chunks doWithIndex: [:chunk :index | chunk isConflict ifTrue: [^index]].
	^-1