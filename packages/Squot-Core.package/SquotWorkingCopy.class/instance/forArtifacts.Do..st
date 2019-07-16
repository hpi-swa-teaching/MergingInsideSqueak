creating new versions
forArtifacts: aArtifactDictionary Do: aBlock

	aArtifactDictionary keys do: [:packageName |
		(aArtifactDictionary at: packageName) content notNil ifTrue: [
			aBlock value: packageName value: (aArtifactDictionary at: packageName) content
		]
	]