as yet unclassified
testCommSuffix
	| c |
	c := self diffClass new
			file1: #(a b c d e f);
			file2: #(a b c).
	c := c comm.
	self assert: [c = {#common->#(a b c) . #different->(#(d e f)->#())}].