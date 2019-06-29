model-access
selectedPath
	
	"self handleChangeSelection: (self conflicts at: 1)."
	"^selectedPath ifNil: [^selectedPath := #(1 1)]" 
	^selectedPath ifNil: [
			selectedPath := OrderedCollection with: (self conflicts at: 1) with: ((self conflicts at: 1) change methods at: 1).
			"self selectedPath: selectedPath."
			^selectedPath
		].
	"self currentChange ifNil: [^'']."
	"path := Array new: 2.
	path at: 2 put: ((conflicts at: currentConflictingClass) change methods at: currentConflictingMethod).
	path at: 1 put: (conflicts at: currentConflictingClass).
	self listItemPress: ((conflicts at: currentConflictingClass) change methods at: currentConflictingMethod).
	^path"