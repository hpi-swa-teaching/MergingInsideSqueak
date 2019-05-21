initialize
openWithMockData
	|conflicts classConflict1 classConflict2 conflictingMethod1 conflictingMethod2|
	
	classConflict1 := ClassConflict new.
	conflictingMethod1 :=  ConflictingMethod new.
	classConflict1 setMethodConflicts: (OrderedCollection with: conflictingMethod1).
	conflictingMethod1 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'test')
			with: ((ConflictChunk new setLeft: 'left') setRight: 'right')
			with: (Chunk new setText: 'end')).
	
	classConflict2 := ClassConflict new.
	conflictingMethod2 :=  ConflictingMethod new.
	classConflict2 setMethodConflicts: (OrderedCollection with: conflictingMethod2).
	
	conflicts := OrderedCollection with: classConflict1 with: classConflict2.
	
	^self openWithConflicts: conflicts
	