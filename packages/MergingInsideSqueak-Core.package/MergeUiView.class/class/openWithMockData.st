initialize
openWithMockData
	|conflicts classConflict1 classConflict2 conflictingMethod1 conflictingMethod2 conflictingMethod3|
	
	classConflict1 := ConflictingClass new.
	classConflict1 nameOfClass: 'classA'.
	conflictingMethod1 :=  ConflictingMethod new conflictingClass: classConflict1.
	conflictingMethod3 :=  ConflictingMethod new conflictingClass: classConflict1.
	classConflict1 setMethodConflicts: (OrderedCollection with: conflictingMethod1 with: conflictingMethod3).
	conflictingMethod1 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'method1', Character cr, Character cr, '	^test')
			with: ((ConflictChunk new setLeft: '12') setRight: '45')
			with: (Chunk new setText: '3')).
	conflictingMethod1 setName: 'method1'.
	conflictingMethod3 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'method2', Character cr, Character cr, '	^')
			with: ((ConflictChunk new setLeft: '12342145') setRight: '9')).
	conflictingMethod3 setName: 'method2'.
	
	classConflict2 := ConflictingClass new.
	classConflict2 nameOfClass: 'classB'.
	conflictingMethod2 :=  ConflictingMethod new  conflictingClass: classConflict2.
	classConflict2 setMethodConflicts: (OrderedCollection with: conflictingMethod2).
	conflictingMethod2 setChunks: 
		(OrderedCollection 
			with: (Chunk new setText: 'method1', Character cr, Character cr, '	^test')
			with: ((ConflictChunk new setLeft: '31298') setRight: '45')
			with: (Chunk new setText: '7')).
	conflictingMethod2 setName: 'method1'.
	
	conflicts := OrderedCollection with: classConflict1 with: classConflict2.
	
	^self openWithConflicts: conflicts
	