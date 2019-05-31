as yet unclassified
destructiveMergeWith: aChunk
	| newLastIndex |
	newLastIndex := self lastIndex max: aChunk lastIndex.
	offset := offset min: aChunk offset.
	length := newLastIndex - offset + 1.