as yet unclassified
conflictAt: anIndex
	
	(self conflictIndexAt: anIndex) ifNotNilDo: [ :index | ^self source at: index ifAbsent: [^nil] ].
	^nil