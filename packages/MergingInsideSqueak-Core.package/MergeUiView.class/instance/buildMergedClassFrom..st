accessing
buildMergedClassFrom: aConflictingClass
	| conflictingMethods mergedMethods |
	
	conflictingMethods := aConflictingClass methods.
	mergedMethods := OrderedCollection new.
	conflictingMethods do: [:conflictingMethod | | mergedMethod |
		mergedMethod := self buildMergedMethodFrom: conflictingMethod change.
		mergedMethods add: mergedMethod.
	].
	aConflictingClass methods: mergedMethods.
	^aConflictingClass