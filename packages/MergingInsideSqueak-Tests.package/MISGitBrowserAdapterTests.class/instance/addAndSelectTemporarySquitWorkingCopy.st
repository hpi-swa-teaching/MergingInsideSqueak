as yet unclassified
addAndSelectTemporarySquitWorkingCopy
	"BetterSquitTestWorkingCopy current create.
	BetterSquitTestWorkingCopy current instance"
	(self class createWorkingCopyWithName: 'test' andDirectory: 'test' forRepository: self newRepository) in: [:workingCopy |
		"workingCopy repository: self newRepository.
		workingCopy loadedHistorian: (workingCopy repository defaultHistorian).
		workingCopy loadedHistorian: SquitHistorian new."
		browser projectIndex: (browser projectList indexOf: workingCopy).
		^ workingCopy]