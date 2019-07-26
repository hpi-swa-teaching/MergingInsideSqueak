update
getTargetArtifactFor: aPackageName

	targetVersion artifacts at: aPackageName ifPresent: [:artifact |
		^artifact	
	] ifAbsent: [
		Error signal: aPackageName, ' is not in target artifacts'.
	]