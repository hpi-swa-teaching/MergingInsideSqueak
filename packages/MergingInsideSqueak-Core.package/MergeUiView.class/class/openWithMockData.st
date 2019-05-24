initialize
openWithMockData
	|conflicts classConflict1 classConflict2 conflictingMethod1 conflictingMethod2 conflictingMethod3|
	
	classConflict1 := ClassConflict new.
	classConflict1 nameOfClass: 'classA'.
	conflictingMethod1 :=  ConflictingMethod new.
	conflictingMethod3 :=  ConflictingMethod new.
	classConflict1 setMethodConflicts: (OrderedCollection with: conflictingMethod1 with: conflictingMethod3).
	conflictingMethod1 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'test')
			with: ((ConflictChunk new setLeft: 'left') setRight: 'right')
			with: (Chunk new setText: 'end')).
	conflictingMethod1 setName: 'method1'.
	conflictingMethod3 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'test2')
			with: ((ConflictChunk new setLeft: 'left') setRight: 'right')
			with: (Chunk new setText: 'end2')).
	conflictingMethod3 setName: 'method2'.
	
	classConflict2 := ClassConflict new.
	classConflict2 nameOfClass: 'classB'.
	conflictingMethod2 :=  ConflictingMethod new.
	classConflict2 setMethodConflicts: (OrderedCollection with: conflictingMethod2).
	conflictingMethod2 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'test')
			with: ((ConflictChunk new setLeft: 'left') setRight: 'right')
			with: (Chunk new setText: 'end')).
	conflictingMethod2 setName: 'method1'.
	
	conflicts := OrderedCollection with: classConflict1 with: classConflict2.
	
	^self openWithConflicts: conflicts
	