as yet unclassified
privateStyle: aText

	| ranges |
	ranges := self rangesIn: aText setWorkspace: true.
	ranges ifNotNil: [self setNewAttributesIn: aText fromRanges: ranges]