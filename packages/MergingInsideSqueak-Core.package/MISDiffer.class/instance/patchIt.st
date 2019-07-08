as yet unclassified
patchIt
	
	self classesDo: [ :baseClass :targetClass |
			(baseClass isNil and: targetClass notNil) ifTrue: [
				self patchOperations add: (self addedClass: targetClass)].
			(baseClass notNil and: targetClass isNil) ifTrue: [
				self patchOperations add: (self removedClass: baseClass)].
			(baseClass notNil and: targetClass notNil) ifTrue: [
				self methodsIn: baseClass and: targetClass do: [ :baseMethod :targetMethod |
						| ownerClass |
						ownerClass := self patchedClass: baseClass.
						(baseMethod isNil and: targetMethod notNil) ifTrue: [
							ownerClass methods add: (self addedMethod: targetMethod)].
						(baseMethod notNil and: targetMethod isNil) ifTrue: [
							ownerClass methods add: (self removedMethod: baseMethod)].
						(baseMethod notNil and: targetMethod notNil) ifTrue: [
							ownerClass methods add: (self modifiedMethod: baseMethod to: targetMethod)]
		]]].
	^self patchOperations collect: [ :class |  self choosePatchForClass: class ]
	
	"
	base sources do: [:baseClass |
		sourceMatching: baseClass in: target sources do: [ :targetClass | 
			baseClass methods do: [ :baseMethod |
				sourceMatching: baseMethod in: targetClass methods do: [ :targetMethod | 
			] 
	"
	"
	base sources do: [:baseClass | 
		target sources detect: [:targetClass |
			baseClass = targetClass
		] ifFound: [:targetClass |
			self halt.
			baseClass methods do: [:baseMethod |
				targetClass methods detect: [:targetMethod |
					targetMethod methodName = baseMethod	methodName				
				] ifFound: [:targetMethod |
					self halt.
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
	^patchOperations"