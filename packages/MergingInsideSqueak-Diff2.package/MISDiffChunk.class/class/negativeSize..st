as yet unclassified
negativeSize: s
	"Returns a pseudo-chunk with *negative* length, useful as a kind of zero for destructiveMergeWith: operations intended to build up coverage over some set of chunks."
	^ self new offset: s + 1; length: s negated
