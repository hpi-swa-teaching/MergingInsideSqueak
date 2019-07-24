as yet unclassified
merge
	self halt.
	records do: [:ea | merger addBaseSnapshot: ea packageSnapshot].
	records do: [:ea | merger applyPatch: ea mergePatch].
	self resolveConflicts ifTrue:
		[merger load.
		records do: [:ea | ea updateWorkingCopy]].