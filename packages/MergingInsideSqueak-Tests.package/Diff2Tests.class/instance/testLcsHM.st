as yet unclassified
testLcsHM
	"Test case from Hunt & McIlroy 1976."
	| lcs |
	lcs := (self diffClass new
			file1: 'abcabba';
			file2: 'cbabac';
			longestCommonSubsequence) asArray.
	self assert: [lcs = {3->1. 4->3. 5->4. 7->5}].
