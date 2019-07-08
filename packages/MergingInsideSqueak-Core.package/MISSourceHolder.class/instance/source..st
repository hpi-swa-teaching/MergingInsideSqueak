as yet unclassified
source: aCollectionOfMISChunks

	source := aCollectionOfMISChunks.
	"conflicts := aCollectionOfMISChunks select: [ :chunk | chunk isConflict ]."
	conflicts := (1 to: aCollectionOfMISChunks size) select: [ :index | (aCollectionOfMISChunks at: index ifAbsent: [^false]) isConflict ]