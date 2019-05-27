as yet unclassified
testLcs2b
	"Based on testLcs2."
	| lcs |
	lcs := (self diffClass new
			file1: 'acba';
			file2: 'bcbb';
			longestCommonSubsequence) asArray.
	self assert: [lcs = {2->2. 3->3}].
