as yet unclassified
sameLineBreak: aLimit and: anOtherLimit

	^(self findNextLineBreakStartingAt: aLimit in: file1) = (self findNextLineBreakStartingAt: anOtherLimit in: file1)
