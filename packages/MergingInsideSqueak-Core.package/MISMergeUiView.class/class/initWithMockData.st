class initialization
initWithMockData
	
	|conflicts classConflict1 classConflict2 conflictingMethod1 conflictingMethod2 conflictingMethod3 |
	classConflict1 := MISClass new.
	classConflict1 className: 'classA'.
	conflictingMethod1 :=  MISMethod new actualClass: classConflict1.
	conflictingMethod3 :=  MISMethod new actualClass: classConflict1.
	classConflict1 methods: (OrderedCollection
		with: (MISPatchModification initializeWithChange: conflictingMethod1)
		with: (MISPatchModification initializeWithChange: conflictingMethod3)).
	conflictingMethod1 source: 
		(OrderedCollection 
			with: (MISCleanChunk text: 'method1', Character cr, Character cr)
			with: (MISConflictChunk left: '	^test123' right: '	^test453')).
	conflictingMethod1 methodName: 'method1'.
	conflictingMethod3 source: 
		(OrderedCollection 
			with: (MISCleanChunk
				text: 'method2', Character cr, Character cr)
			with: (MISConflictChunk left: '	^12342145' right: '	^9')).
	conflictingMethod3 methodName: 'method2'.
	
	classConflict2 := MISClass new.
	classConflict2 className: 'classB'.
	conflictingMethod2 :=  MISMethod new actualClass: classConflict2.
	classConflict2 methods: (OrderedCollection with: (MISPatchModification initializeWithChange: conflictingMethod2)).
	conflictingMethod2 source: 
		(OrderedCollection 
			with: (MISCleanChunk text: 'method1', Character cr, Character cr)
			with: (MISConflictChunk left: '	1+31298' right: '	1+45')
			with: (MISCleanChunk text: '', Character cr)
			with: (MISConflictChunk left: '	^7398' right: '	^745')).
	conflictingMethod2 methodName: 'method1'.
	
	conflicts := OrderedCollection
		with: (MISPatchModification initializeWithChange: classConflict1)
		with: (MISPatchModification initializeWithChange: classConflict2).
	
	^self initWithConflicts: conflicts