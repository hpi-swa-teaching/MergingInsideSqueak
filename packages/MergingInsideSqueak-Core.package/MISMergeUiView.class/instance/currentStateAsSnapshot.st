accessing
currentStateAsSnapshot
	| conflicts mergedClasses |
	
	conflicts := self controller conflicts.
	mergedClasses := OrderedCollection new.
	conflicts do: [:conflict | | conflictingClass mergedClass |
		conflictingClass := conflict change.	
		mergedClass := self buildMergedClassFrom: conflictingClass.
		mergedClasses add: mergedClass.
	].
	^MISSnapshot fromSources: mergedClasses