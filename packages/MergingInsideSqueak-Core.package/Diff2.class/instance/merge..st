as yet unclassified
merge: excludeFalseConflicts
	| visitor |
	visitor := Diff2Visitor new.
	visitor files: self fileMap.
	
	self mergeIndices do: [:each | each accept: visitor].
	^ visitor result
