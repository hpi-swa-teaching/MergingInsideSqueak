helpers
areEqualText: aTextA and: aTextB
	
	aTextA doWithIndex: [:char :index |
		(char = (aTextB at: index) and: (aTextA attributesAt: index) = (aTextB attributesAt: index))
			ifFalse: [^false]
		].
	^true