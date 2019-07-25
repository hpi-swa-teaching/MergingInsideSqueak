as yet unclassified
maybeAddLineBlockTo: result p1: p1 p2: p2 limit1: limit1 limit2: limit2
	"For internal use by comm."
	((p1 + 1 ~= limit1) or: [p2 + 1 ~= limit2])
			ifTrue: [self halt. result add: #different -> 
						((file1 copyFrom: file1EndingConflict +1 to: (self findNextLineBreakStartingAt: limit1 in: file1)-1) ->
						(file2 copyFrom: file2EndingConflict +1 to: (self findNextLineBreakStartingAt: limit2 in: file2)-1)).
						
					self fileEndingConflict: (self findNextLineBreakStartingAt: limit1 in: file1) in: file1.
					self fileEndingConflict: (self findNextLineBreakStartingAt: limit2 in: file2) in: file2. 	
						
					self lineBlock: OrderedCollection new]
			ifFalse: [lineBlock add: limit1].