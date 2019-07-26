as yet unclassified
artifacts: aArtifactDictionary do: aBlock

	aArtifactDictionary keys do: [:packageName |
		(aArtifactDictionary at: packageName) content notNil ifTrue: [
			aBlock value: packageName value: (aArtifactDictionary at: packageName) content
		]]