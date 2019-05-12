as yet unclassified
mergeIndices
	"Returns an Array of Diff3Chunks (representing clean merges) or Diff3Conflicts (containing DiffChunks, representing conflicts), together representing the results of a three-way merge between file1/file0/file2. Does not detect 'false conflicts', and can return two Diff3Chunks next to each other in the result."
	| result commonOffset hunks lastOverlapHunkIndex hunk firstHunkIndex |
	hunks := self computeHunks.
	result := OrderedCollection new.
	commonOffset := 1.
	firstHunkIndex := 1.
	[firstHunkIndex <= hunks size] whileTrue: [
		hunk := hunks at: firstHunkIndex.
		self addCommonChunkTo: result between: commonOffset and: hunk oldChunk offset.
		lastOverlapHunkIndex := self findOverlapStartingAt: firstHunkIndex in: hunks.
		(hunk side = #original)
			ifTrue: [
				(hunk newChunk length > 0)
					ifTrue: [result add: (Diff3Chunk side: hunk side chunk: hunk newChunk)].
				commonOffset := (hunks at: lastOverlapHunkIndex) oldChunk lastIndex + 1.]
			ifFalse: [ | conflict |
				"conflict := self computeConflictFrom: firstHunkIndex
								to: lastOverlapHunkIndex
								hunks: hunks."
				conflict := Diff2Conflict new left: hunk newChunk; original:hunk oldChunk.
				result add: conflict.
				commonOffset := conflict original lastIndex + 1.].
		firstHunkIndex := lastOverlapHunkIndex + 1].
	self addCommonChunkTo: result between: commonOffset and: file0 size + 1.
	^ result asArray