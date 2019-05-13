as yet unclassified
left: left original: original right: right
	| c |
	self flushOk.
	c := Diff3Conflict new.
	c left: (left extractFrom: (files at: #left)).
	c original: (original extractFrom: (files at: #original)).
	"c right: (right extractFrom: (files at: #right))."
	result add: #conflict -> c.