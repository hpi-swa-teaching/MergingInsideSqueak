as yet unclassified
patchIt
	| patchOperations differ conflictingClasses |
	
	patchOperations := OrderedCollection new.
	conflictingClasses := OrderedCollection new.
	differ := MISMyersUkkonenDiff new.
	base sources do: [:baseClass | 
		target sources detect: [:targetClass |
			baseClass = targetClass
		] ifFound: [:targetClass |
			baseClass methods do: [:baseMethod |
				targetClass methods detect: [:targetMethod |
					targetMethod methodName = baseMethod	methodName 
					and: [targetMethod classIsMeta = baseMethod classIsMeta]			
				] ifFound: [:targetMethod |
					baseMethod = targetMethod ifFalse: [ | diffChunks chunks conflictingMethod conflictingClass |
						conflictingClasses detect: [:listedClass | listedClass = baseClass] ifFound: [:foundClass |
							conflictingClass := 	foundClass.
						] ifNone: [
							conflictingClass := baseClass copy methods: (OrderedCollection new).
						].
						diffChunks := differ file1: (baseMethod source at: 1) text;
							file2: (targetMethod source at: 1) text;
							comm.
						chunks := OrderedCollection new.
						diffChunks do: [:chunk | 
							chunk key = #common ifTrue: [
								chunks add: (MISCleanChunk text: chunk value)
							] ifFalse: [
								chunks add: (MISConflictChunk left: chunk value key right: chunk value value)
							]
						].
						conflictingMethod := baseMethod copy source: chunks.
						conflictingClass methods add: (MISPatchModification initializeWithChange: conflictingMethod).
						conflictingClasses add: conflictingClass.
					]
				] ifNone: [
				
				]
			]
		] ifNone: [
		
		]
	].
	target sources do: [:targetClass | 
		
	].
	conflictingClasses do: [:class |
		patchOperations add: (MISPatchModification initializeWithChange: class)	
	].
	^patchOperations