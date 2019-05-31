as yet unclassified
testCommPrefix
	| c |
	c := self diffClass new
			file1: #(d e f a b c);
			file2: #(a b c).
	c := c comm.
	self assert: [c = {#different->(#(d e f)->#()) . #common->#(a b c)}].