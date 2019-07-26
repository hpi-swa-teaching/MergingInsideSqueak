linediffing
findNextLineBreakStartingAt: aEntryPoint in: aFile

	| offset file |
	file := aFile.
	offset := 0.
	
	[(aEntryPoint + offset) < file size]
		whileTrue: [
					((file at: aEntryPoint + offset) = Character cr) 
						ifTrue: [^aEntryPoint + offset].
					offset := offset + 1.
					].
				
	^aEntryPoint + offset