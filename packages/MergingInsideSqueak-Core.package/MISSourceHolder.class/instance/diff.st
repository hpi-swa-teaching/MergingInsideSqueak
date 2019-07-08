as yet unclassified
diff

	self source: (self source inject: OrderedCollection new into: [:acc :chunk | 
			acc , chunk diff 
		])