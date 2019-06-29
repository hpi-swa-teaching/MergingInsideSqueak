as yet unclassified
definitionLike: aDefinition ifPresent: foundBlock ifAbsent: absentBlock

	^(self like: aDefinition ifAbsent: nil)
		ifNil: [ absentBlock value ]
		ifNotNil: [ :definition |
			foundBlock value: definition ]