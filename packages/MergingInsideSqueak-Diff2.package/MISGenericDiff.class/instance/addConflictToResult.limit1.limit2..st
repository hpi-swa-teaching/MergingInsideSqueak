line-diffing
addConflictToResult: aCollection limit1: aLimit limit2: anOtherLimit
		
	| addedLineFile1 addedLineFile2 |
	addedLineFile1 := self sameLineBreak: aLimit and: (file1EndingConflict+1).
	addedLineFile2 := self sameLineBreak: anOtherLimit and: (file2EndingConflict+1).
		
	(addedLineFile1 and: [addedLineFile2])				
		ifTrue: [
			aCollection add: #different -> 
				((file1 copyFrom: file1EndingConflict +1 to: (self findNextLineBreakStartingAt: aLimit in: file1)) ->
				(file2 copyFrom: file2EndingConflict +1 to: (self findNextLineBreakStartingAt: anOtherLimit in: file2))).
						
			self fileEndingConflict: (self findNextLineBreakStartingAt: aLimit in: file1) in: file1.
			self fileEndingConflict: (self findNextLineBreakStartingAt: anOtherLimit in: file2) in: file2. 	
			self lineBlock: OrderedCollection new
			]
		ifFalse: [
			addedLineFile1
				ifFalse: [
					aCollection add: #different -> 
						((file1 copyFrom: file1EndingConflict +1 to: (self findNextLineBreakStartingAt: file1EndingConflict +1 in: file1))
						->'').
						
					self fileEndingConflict: (self findNextLineBreakStartingAt: file1EndingConflict+1 in: file1) in: file1.
				]
				ifTrue: [
					aCollection add: #different ->(''->
					(file2 copyFrom: file2EndingConflict +1 to: (self findNextLineBreakStartingAt: file2EndingConflict +1 in: file2))).
					
					self fileEndingConflict: (self findNextLineBreakStartingAt: file2EndingConflict+1 in: file2) in: file2.
				].
				self lineBlock: OrderedCollection new.
				self maybeAddCommonLineBlockTo: aCollection p1: file1EndingConflict p2: file2EndingConflict 
					limit1: aLimit limit2: anOtherLimit. 
			].	
