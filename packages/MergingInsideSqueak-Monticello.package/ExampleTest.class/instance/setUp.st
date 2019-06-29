as yet unclassified
setUp

	
	"| repos1 repos2 versionInfo q1 repositoryGroup savedInitials versions versions2 workingCopy |
	versionInfo := self mockVersionInfo.
	q1 := MCWorkingAncestry new addAncestor: versionInfo."
	
	"self clearPackageCache.
	repositoryGroup := MCRepositoryGroup new.
	workingCopy := MCWorkingCopy forPackage: self mockPackage.
	versions := Dictionary new.
	versions2 := Dictionary new.
	repos1 := MCDictionaryRepository new dictionary: versions.
	repos2 := MCDictionaryRepository new dictionary: versions2.
	repositoryGroup addRepository: repos1.
	repositoryGroup addRepository: repos2.
	MCRepositoryGroup default removeRepository: repos1; removeRepository: repos2.
	workingCopy repositoryGroup: repositoryGroup.
	savedInitials := Utilities authorInitialsPerSe.
	Utilities authorInitials: 'abc'."