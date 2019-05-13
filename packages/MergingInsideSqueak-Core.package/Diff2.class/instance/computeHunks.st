as yet unclassified
computeHunks
	| diff1 hunks |
	diff1 := diffClass new file1: file0; file2: file1; diffIndices.
	hunks := OrderedCollection new.
	diff1 do: [ :entry | hunks add: (Diff3Hunk side: #left entry: entry) ].
	^ hunks asSortedCollection