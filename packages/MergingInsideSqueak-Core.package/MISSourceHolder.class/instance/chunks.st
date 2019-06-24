testing
chunks

	^chunks ifNil: [^OrderedCollection with: (Chunk new setText: source)]