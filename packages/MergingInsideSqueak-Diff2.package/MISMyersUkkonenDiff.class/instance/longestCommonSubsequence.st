as yet unclassified
longestCommonSubsequence
	
	^lcs ifNil: [ 
		lcs := (Array streamContents: [ :stream |
			| list |
			list := self calculateLcs.
			[ list == nil ] whileFalse: [
				stream nextPut: (list at: 1) -> (list at: 2).
				list := list at: 3 ] ]) reverse ]