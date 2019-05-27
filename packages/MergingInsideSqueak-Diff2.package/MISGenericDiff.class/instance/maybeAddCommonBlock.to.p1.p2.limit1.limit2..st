as yet unclassified
maybeAddCommonBlock: common to: result p1: p1 p2: p2 limit1: limit1 limit2: limit2
	"For internal use by comm."
	((p1 + 1 ~= limit1) or: [p2 + 1 ~= limit2])
			ifTrue: [| newCommon |
					newCommon := self addCommonBlock: common ifNonEmptyTo: result.
					result add: #different -> ((file1 copyFrom: p1 + 1 to: limit1 - 1) ->
											(file2 copyFrom: p2 + 1 to: limit2 - 1)).
					^ newCommon]
			ifFalse: [^ common].