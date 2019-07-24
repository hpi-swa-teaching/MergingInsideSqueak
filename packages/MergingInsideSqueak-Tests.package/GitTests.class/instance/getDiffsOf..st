as yet unclassified
getDiffsOf: aWorkingCopy
	| base target baseValue targetContent baseContent targetDefinitions baseDefinitions diff |
	
	diff := OrderedCollection new.	
	base := aWorkingCopy baseVersion.
	target := base parents first.
	base := base artifacts.
	target := target artifacts.
	base keys do: [ :key |
		target at: key ifPresent: [ :targetValue |
			baseValue := base at: key.
			targetContent := targetValue content.
			baseContent := baseValue content.
			(targetContent isNil or: baseContent isNil) ifFalse: [
				targetDefinitions := MCDefinitionIndex definitions: targetContent startShadow definitions.
				baseDefinitions := MCDefinitionIndex definitions: baseContent startShadow definitions.
				targetDefinitions definitionsDo: [ :t |
					baseDefinitions definitionLike: t ifPresent: [ :b |
						 (b isSameRevisionAs: t) ifFalse: [diff add: b description]
					] ifAbsent: [
						(diff add: t description)
					]					
				].
				baseDefinitions definitionsDo: [ :b |
					targetDefinitions definitionLike: b ifPresent: [ :t	
					] ifAbsent: [
						(diff add: b description)
					]
				]	
			]
		] ifAbsent: [
				
		]
	].

	^diff