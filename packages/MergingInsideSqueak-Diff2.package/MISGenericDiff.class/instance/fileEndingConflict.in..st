linediffing
fileEndingConflict: anIndex in: aFile

	aFile = file1
		ifTrue: [file1EndingConflict := anIndex]
		ifFalse: [file2EndingConflict := anIndex].
	