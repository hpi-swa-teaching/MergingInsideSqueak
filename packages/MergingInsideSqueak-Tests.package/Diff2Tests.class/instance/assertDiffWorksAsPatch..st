as yet unclassified
assertDiffWorksAsPatch: d
	| p f2 |
	p := d diff.
	f2 := p applyTo: d file1.
	self assert: [f2 = d file2].