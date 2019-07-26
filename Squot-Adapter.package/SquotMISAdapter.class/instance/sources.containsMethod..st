accessing
sources: aSourceHolder containsMethod: aMISMethod

	aSourceHolder sources detect: [:classInSources |
		classInSources = aMISMethod actualClass
	] ifFound: [:classInSources |
		classInSources methods detect: [:methodInSources |
			methodInSources methodName = aMISMethod methodName 
			and: [methodInSources classIsMeta = aMISMethod classIsMeta]
		] ifFound: [:method |
			^true
		] ifNone: [
			^false
		]
	] ifNone: [
		^false
	]