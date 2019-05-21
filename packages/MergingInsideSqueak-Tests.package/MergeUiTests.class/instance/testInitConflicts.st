tests
testInitConflicts
	|conflicts|

	conflicts := view getController conflicts.
	
	self assert: conflicts size = 2.
	self assert: (conflicts at: 1) getPropertyConflicts isNil.
	self assert: (conflicts at: 1) getMethodConflicts size = 1.
	self assert: ((conflicts at: 1) getMethodConflicts at: 1) getChunks size = 3.
	self assert: (((conflicts at: 1) getMethodConflicts at: 1) getChunks at: 1) isConflict not.
	self assert: (((conflicts at: 1) getMethodConflicts at: 1) getChunks at: 2) isConflict.
	self assert: (((conflicts at: 1) getMethodConflicts at: 1) getChunks at: 2) getLeft = 'left'.
	self assert: (((conflicts at: 1) getMethodConflicts at: 1) getChunks at: 2) getRight = 'right'.
	self assert: (((conflicts at: 1) getMethodConflicts at: 1) getChunks at: 3) isConflict not.