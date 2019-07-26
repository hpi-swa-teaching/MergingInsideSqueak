model-access
selectedPath: aCollectionOfMISPatches
	
	"self handleChangeSelection: (self conflicts at: 1)."
	selectedPath := aCollectionOfMISPatches.
	selectedParent := aCollectionOfMISPatches at: 1 ifAbsent: [nil].
	selectedChild := aCollectionOfMISPatches at: 2 ifAbsent: [nil].
	"currentChange := aCollectionOfMISPatches at: aCollectionOfMISPatches size ifAbsent: [nil]."
	"path := Array new: 2.
	path at: 2 put: ((conflicts at: currentConflictingClass) change methods at: currentConflictingMethod).
	path at: 1 put: (conflicts at: currentConflictingClass).
	self listItemPress: ((conflicts at: currentConflictingClass) change methods at: currentConflictingMethod).
	^path"