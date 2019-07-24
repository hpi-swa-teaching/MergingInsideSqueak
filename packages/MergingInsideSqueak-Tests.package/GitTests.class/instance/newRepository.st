as yet unclassified
newRepository
	^ self targetClass new
		initializeInDirectory: self repositoryRootDirectory;
		yourself