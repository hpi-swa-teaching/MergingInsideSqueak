linediffing
maybeAddCommonLineBlockTo: result p1: p1 p2: p2 limit1: limit1 limit2: limit2
	"For internal use by comm."
	((p1 + 1 ~= limit1) or: [p2 + 1 ~= limit2])
			
			ifTrue: [self addConflictToResult: result limit1: limit1 limit2: limit2.]
			ifFalse: [(file1 size < limit1)
						ifFalse: [lineBlock add: limit1]].