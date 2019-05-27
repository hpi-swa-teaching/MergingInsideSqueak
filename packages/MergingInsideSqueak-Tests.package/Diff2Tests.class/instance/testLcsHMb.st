as yet unclassified
testLcsHMb
	"Test case from Hunt & McIlroy 1976, reversed."
	| lcs |
	lcs := (self diffClass new
			file1: 'cbabac';
			file2: 'abcabba';
			longestCommonSubsequence) asArray.
	self assert: [lcs = {2->2. 3->4. 4->5. 5->7}].
