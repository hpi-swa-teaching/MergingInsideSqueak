as yet unclassified
testOpensMerger

	workingCopy := self addAndSelectTemporarySquitWorkingCopy.
	browser actionPull.
	"MISSquitMergingFrontend magicMergeFor: nil to: aVersion base: aCommit ifCanceled: cancelBlock"