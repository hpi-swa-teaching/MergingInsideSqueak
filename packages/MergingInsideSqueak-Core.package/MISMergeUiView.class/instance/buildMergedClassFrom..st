snapshot-creation
buildMergedClassFrom: aConflictingClass
	| conflictingMethods mergedMethods |
	
	conflictingMethods := aConflictingClass methods.
	mergedMethods := OrderedCollection new.
	conflictingMethods do: [:conflictingMethod | | mergedMethod |
		mergedMethod := self buildMergedMethodFrom: conflictingMethod change.
		(mergedMethod source size = 1 and: [(mergedMethod source at: 1) text = '']) ifFalse: [
			mergedMethods add: mergedMethod.
		]
	].
	aConflictingClass methods: mergedMethods.
	^aConflictingClass