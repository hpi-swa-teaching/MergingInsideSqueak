as yet unclassified
testLcs2a
	"Same test as testLcs2, but with file1 and file2 switched."
	| lcs |
	lcs := (self diffClass new
			file1: 'bcbcacb';
			file2: 'acbcaca';
			longestCommonSubsequence) asArray.
	self assert: [lcs = {2->2. 3->3. 4->4. 5->5. 6->6}].
