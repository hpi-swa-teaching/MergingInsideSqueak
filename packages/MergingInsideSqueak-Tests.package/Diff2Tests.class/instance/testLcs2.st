as yet unclassified
testLcs2
	"Test case due to Levente Uzonyi."
	| lcs |
	lcs := (self diffClass new
			file1: 'acbcaca';
			file2: 'bcbcacb';
			longestCommonSubsequence) asArray.
	self assert: [lcs = {2->2. 3->3. 4->4. 5->5. 6->6}].
