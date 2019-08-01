merging
calculateChanges

	^changes := records inject: OrderedCollection new into: [:acc :record |
		record mergePatch.
		acc add: (self patchMergeRecord: record)]