as yet unclassified
calculateProvisions

	^ provisions := records inject: Set new into: [:acc :record |
			acc addAll: (record packageSnapshot definitions inject: Set new into: [:provisions :def | provisions, def provisions])]