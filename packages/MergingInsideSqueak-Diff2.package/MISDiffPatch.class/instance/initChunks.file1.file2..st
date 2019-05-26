as yet unclassified
initChunks: c file1: f1 file2: f2
	chunks := c.
	snippets := c collect: [:entry | (entry key extractFrom: f1) -> (entry value extractFrom: f2)].