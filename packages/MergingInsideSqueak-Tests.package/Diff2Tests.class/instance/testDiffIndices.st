testing
testDiffIndices
	| p |
	p := (self sampleDiff: self diffClass) diffIndices.
	self assert: [p =   {	(MISDiffChunk offset: 2 length: 1)->(MISDiffChunk offset: 2 length: 0) . 
						(MISDiffChunk offset: 4 length: 0)->(MISDiffChunk offset: 3 length: 1) . 
						(MISDiffChunk offset: 5 length: 1)->(MISDiffChunk offset: 5 length: 1)}].