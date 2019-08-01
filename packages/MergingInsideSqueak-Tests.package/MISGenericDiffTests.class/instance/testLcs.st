lcs-testing
testLcs
	| lcs |
	lcs := (self sampleDiff: self diffClass) longestCommonSubsequence asArray.
	self assert: [lcs =  {1->1 . 3->2 . 4->4 . 6->6 . 7->7 . 8->8 . 9->9}].