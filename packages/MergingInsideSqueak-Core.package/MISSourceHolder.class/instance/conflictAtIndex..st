accessing
conflictAtIndex: anIndex

	conflicts ifNotNil: [^conflicts at: anIndex ].
	^nil