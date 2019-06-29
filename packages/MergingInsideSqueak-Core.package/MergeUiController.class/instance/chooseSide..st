updating
chooseSide: aSide
	
	currentChange ifNotNilDo: [ :current | | recentConflict |
			recentConflict := current change source at: (self recentConflictIndexForChange: current).
			recentConflict ifNotNilDo: [ :c | c toggleSide: aSide]
		].
	self updateSourceViews