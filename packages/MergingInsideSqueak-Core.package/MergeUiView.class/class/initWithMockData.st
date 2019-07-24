initialize
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
			with: (MISCleanChunk text: 'method1', Character cr, Character cr,'	^test')
			with: (MISConflictChunk left: '12' right: '45')
			with: (MISCleanChunk text: '3')).
	conflictingMethod1 methodName: 'method1'.
	conflictingMethod3 source: 
		(OrderedCollection 
			with: (MISCleanChunk
				text: 'method2', Character cr, Character cr, '	^')
			with: (MISConflictChunk left: '12342145' right: '9')).
	conflictingMethod3 methodName: 'method2'.
	
	classConflict2 := MISClass new.
	classConflict2 className: 'classB'.
	conflictingMethod2 :=  MISClass new actualClass: classConflict2.
	classConflict2 methods: (OrderedCollection with: (MISPatchModification initializeWithChange: conflictingMethod2)).
	conflictingMethod2 source: 
		(OrderedCollection 
			with: (MISCleanChunk text: 'method1', Character cr, Character cr, '	1+')
			with: (MISConflictChunk left: '31298' right: '45')
			with: (MISCleanChunk text: '', Character cr, '	^7')
			with: (MISConflictChunk left: '398' right: '45')).
	conflictingMethod2 className: 'method1'.
	
	conflicts := OrderedCollection
		with: (MISPatchModification initializeWithChange: classConflict1)
		with: (MISPatchModification initializeWithChange: classConflict2).
	
	^self initWithConflicts: conflicts