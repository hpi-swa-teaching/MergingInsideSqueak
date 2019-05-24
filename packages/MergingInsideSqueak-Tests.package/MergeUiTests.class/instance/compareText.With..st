helpMethods
compareText: aTextA With: aTextB
	| allSame |
	
	allSame := true.
	^aTextA size = aTextB size
		ifFalse: [^false]
		ifTrue: [
			aTextA doWithIndex: [:char :index |
				(char = (aTextB at: index) and: 
				(aTextA attributesAt: index) = (aTextB attributesAt: index))
					ifFalse: [allSame := false.]
				].
			^allSame
			]