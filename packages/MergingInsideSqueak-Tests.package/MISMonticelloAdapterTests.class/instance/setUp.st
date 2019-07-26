as yet unclassified
setUp
	
	| repos1 |
	self clearPackageCache.
	repositoryGroup := MCRepositoryGroup new.
	workingCopy := MCWorkingCopy forPackage: self mockPackage.
	versions := Dictionary new.
	repos1 := MCDictionaryRepository new dictionary: versions.
	repositoryGroup addRepository: repos1.
	MCRepositoryGroup default removeRepository: repos1.
	workingCopy repositoryGroup: repositoryGroup.
	savedInitials := Utilities authorInitialsPerSe.
	Utilities authorInitials: 'abc'.
	