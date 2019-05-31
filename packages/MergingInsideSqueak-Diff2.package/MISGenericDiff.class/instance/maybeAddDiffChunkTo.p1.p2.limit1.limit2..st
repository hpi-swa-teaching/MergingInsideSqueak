as yet unclassified
maybeAddDiffChunkTo: result p1: p1 p2: p2 limit1: limit1 limit2: limit2
	"For internal use by diffIndices."
	((p1 + 1 ~= limit1) or: [p2 + 1 ~= limit2])
			ifTrue: [result add: ((MISDiffChunk offset: p1 + 1 length: limit1 - p1 - 1) ->
								(MISDiffChunk offset: p2 + 1 length: limit2 - p2 - 1))].
