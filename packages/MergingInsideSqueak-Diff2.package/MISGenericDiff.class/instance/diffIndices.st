as yet unclassified
diffIndices
	"Returns a collection of (MISDiffChunk -> MISDiffChunk) associations mapping differing regions of file1 and file2 onto each other."
	| result p1 p2 |
	result := OrderedCollection new.
	p1 := 0.
	p2 := 0.
	self longestCommonSubsequence do: [:entry |
		self maybeAddDiffChunkTo: result p1: p1 p2: p2 limit1: entry key limit2: entry value.
		p1 := entry key.
		p2 := entry value.].
	self maybeAddDiffChunkTo: result p1: p1 p2: p2 limit1: file1 size + 1 limit2: file2 size + 1.
	^ result asArray