as yet unclassified
diff
	"Returns a MISDiffPatch instance that can be used in future to transform file1 into file2."
	| p |
	p := MISDiffPatch new.
	p initChunks: self diffIndices file1: file1 file2: file2.
	^ p