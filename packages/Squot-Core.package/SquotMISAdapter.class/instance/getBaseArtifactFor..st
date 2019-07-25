accessing
getBaseArtifactFor: aPackageName

	baseVersion artifacts at: aPackageName ifPresent: [:artifact |
		^artifact	
	] ifAbsent: [
		Error signal: aPackageName, ' is not in base artifacts'.
	]