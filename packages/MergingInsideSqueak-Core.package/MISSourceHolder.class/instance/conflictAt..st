as yet unclassified
conflictAt: anIndex
	
	(self conflictAtIndex: anIndex) ifNotNilDo: [ :index | ^self source at: index ifAbsent: [^nil] ].
	^nil