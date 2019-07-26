tests
testLoadsConflicts
	
	|conflicts|
	conflicts := view controller conflicts.
	self assert: conflicts size = 2.
	"TODO: Check property conflicts etc"
	self assert: ((conflicts at: 1) change methods at: 1) change conflictCount = 1.
	self assert: (((conflicts at: 1) change methods at: 1) change source at: 1) isConflict not.
	self assert: (((conflicts at: 1) change methods at: 1) change source at: 2) isConflict.
	self assert: (((conflicts at: 1) change methods at: 1) change source at: 2) left = '12'.
	self assert: (((conflicts at: 1) change methods at: 1) change source at: 2) right = '45'.
	self assert: (((conflicts at: 1) change methods at: 1) change source at: 3) isConflict not.