as yet unclassified
testLcs
	| lcs |
	lcs := (self sampleDiff: self diffClass) longestCommonSubsequence asArray.
	self assert: [lcs = {1->1. 3->2. 4->4. 6->6. 7->7. 8->8. 9->9}].
"({file1index:7, file2index:7, chain:{file1index:6, file2index:6, chain:{file1index:5, file2index:5, chain:{file1index:3, file2index:3, chain:{file1index:2, file2index:1, chain:{file1index:0, file2index:0, chain:{file1index:-1, file2index:-1, chain:null}}}}}}})"