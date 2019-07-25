as yet unclassified
addConflictToResult: aCollection limit1: aLimit limit2: anOtherLimit

	(self sameLineBreak: aLimit and: anOtherLimit)
		ifFalse: [self halt.].

	aCollection add: #different -> 
				((file1 copyFrom: file1EndingConflict +1 to: (self findNextLineBreakStartingAt: aLimit in: file1)) ->
				(file2 copyFrom: file2EndingConflict +1 to: (self findNextLineBreakStartingAt: anOtherLimit in: file2))).
						
	self fileEndingConflict: (self findNextLineBreakStartingAt: aLimit in: file1) in: file1.
	self fileEndingConflict: (self findNextLineBreakStartingAt: anOtherLimit in: file2) in: file2. 	
	self lineBlock: OrderedCollection new