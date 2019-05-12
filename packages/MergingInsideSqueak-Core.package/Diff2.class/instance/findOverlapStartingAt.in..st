as yet unclassified
findOverlapStartingAt: startIndex in: hunks
	| nextRegionLhs hunk |
	nextRegionLhs := (hunks at: startIndex) oldChunk lastIndex + 1.
	"(hunks size < 2) ifTrue:  [^-1]."
	startIndex + 1 to: hunks size do: [:index |
		hunk := hunks at: index.
		hunk oldChunk offset > nextRegionLhs ifTrue: [^ index - 1].
		nextRegionLhs := nextRegionLhs max: hunk oldChunk lastIndex + 1].
	^ hunks size.