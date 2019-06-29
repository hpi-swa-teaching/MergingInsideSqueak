as yet unclassified
correctForSkewFrom: smallerChunk to: biggerChunk
	"Given a biggerChunk that definitely contains smallerChunk but might have an extra head or tail, updates the receiver to include such an extra head or tail."
	| headSize tailSize |
	headSize := smallerChunk offset - biggerChunk offset.
	tailSize := biggerChunk lastIndex - smallerChunk lastIndex.
	offset := offset - headSize.
	length := length + headSize + tailSize.
