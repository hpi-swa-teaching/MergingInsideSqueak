as yet unclassified
mergeWithNameLike: baseName

	| changes |
	"provisions := aSnapshot definitions do: [:ea |
		provisions addAll: ea provisions]."
	"records do: [:ea | merger addBaseSnapshot: ea packageSnapshot]."
	provisions := records inject: Set new into: [:acc :record |
		acc addAll: (record packageSnapshot definitions inject: Set new into: [:acc2 :def | acc2, def provisions])].
	changes := records inject: OrderedCollection new into: [:acc :record |
		record mergePatch.
		acc add: (self patchMergeRecord: record)].
	merger conflicts: changes.
	self halt.
	self resolveConflicts ifTrue: [
		"Merge conflicts have been resolved successfully by the user"
		self halt.
		"newSnapshot := merger view currentStateAsSnapshot."
		self save: merger conflicts withName: baseName.
		self halt.
		"merger loadWithNameLike: baseName."
		records do: [:ea | ea updateWorkingCopy]].