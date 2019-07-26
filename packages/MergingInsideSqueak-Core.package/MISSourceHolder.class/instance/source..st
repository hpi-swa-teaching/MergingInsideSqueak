accessing
source: aCollectionOfMISChunks

	source := aCollectionOfMISChunks.
	conflicts := (1 to: aCollectionOfMISChunks size) select: [ :index | (aCollectionOfMISChunks at: index ifAbsent: [^false]) isConflict ]