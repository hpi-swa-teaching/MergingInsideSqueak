as yet unclassified
testDiffIndices
	| p |
	p := (self sampleDiff: self diffClass) diffIndices.
	self assert: [p =  {(MISDiffChunk offset: 5 length: 4)->(MISDiffChunk offset: 5 length: 0) . (MISDiffChunk offset: 15 length: 0)->(MISDiffChunk offset: 11 length: 8) . (MISDiffChunk offset: 19 length: 3)->(MISDiffChunk offset: 23 length: 3)}].