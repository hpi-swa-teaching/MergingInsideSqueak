as yet unclassified
testDiffSuffix
	self assertDiffWorksAsPatch: (self diffClass new
			file1: #(a b c d e f);
			file2: #(a b c)).
