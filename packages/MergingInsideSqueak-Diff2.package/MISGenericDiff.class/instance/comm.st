as yet unclassified
comm
	"Returns a collection of similarities and differences between the two files. Each entry in the resulting collection is either (#common -> {...}) or (#different -> ({...} -> {...}))."
	| result p1 p2 |
	result := OrderedCollection new.
	p1 := 0.
	p2 := 0.
	self lineBlock: OrderedCollection new.
	self fileEndingConflict: 0 in: file1.
	self fileEndingConflict: 0 in: file2.
	
	self longestCommonSubsequence do: [:entry |
		file1EndingConflict <= p1 and: [file2EndingConflict <= p2];
			ifTrue: [
		self maybeAddLineBlockTo: result
						p1: p1 p2: p2 limit1: entry key limit2: entry value.
		
		((self file1 at: entry key) = Character cr or: [entry key = file1 size] or: [entry value = file2 size])
			ifTrue: [
				self addCommonBlock: lineBlock ifNonEmptyTo: result.
				self fileEndingConflict: (self findNextLineBreakStartingAt: entry key in: file1) in: file1.
				self fileEndingConflict: (self findNextLineBreakStartingAt: entry value in: file2) in: file2. 	
				].
			
		].
		p1 := entry key.
		p2 := entry value.].
	
	
	file1EndingConflict > p1 and: [file2EndingConflict > p2];
			ifTrue: [self maybeAddLineBlockTo: result p1: p1 p2: p2 limit1: file1 size +1 limit2: file2 size +1.
					self addCommonBlock: lineBlock ifNonEmptyTo: result].

	^ result asArray