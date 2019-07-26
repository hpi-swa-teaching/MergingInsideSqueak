as yet unclassified
version
	| version |
	[version := workingCopy newVersion]
		on: MCVersionNameAndMessageRequest
		do: [:n | 
			n patchBlock value.
			n resume: (Array with: n suggestedName with: '' with: Set new)].
	versions at: version info put: version.
	^ version