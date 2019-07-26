model-access
selectedPath: aCollectionOfMISPatches
	
	selectedPath := aCollectionOfMISPatches.
	selectedParent := aCollectionOfMISPatches at: 1 ifAbsent: [nil].
	selectedChild := aCollectionOfMISPatches at: 2 ifAbsent: [nil]