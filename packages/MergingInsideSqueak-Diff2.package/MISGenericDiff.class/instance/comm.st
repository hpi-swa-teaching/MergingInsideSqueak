as yet unclassified
comm
	"Returns a collection of similarities and differences between the two files. Each entry in the resulting collection is either (#common -> {...}) or (#different -> ({...} -> {...}))."
	| result common p1 p2 |
	result := OrderedCollection new.
	p1 := 0.
	p2 := 0.
	common := OrderedCollection new.
	self longestCommonSubsequence do: [:entry |
		"self halt."
		common := self maybeAddCommonBlock: common to: result
						p1: p1 p2: p2 limit1: entry key limit2: entry value.
		common add: (self file1 at: entry key).
		p1 := entry key.
		p2 := entry value.].
	"self halt."
	"Also maybe add the last part"
	common := self maybeAddCommonBlock: common to: result
					p1: p1 p2: p2 limit1: file1 size + 1 limit2: file2 size + 1.
	self addCommonBlock: common ifNonEmptyTo: result.
	^ result asArray