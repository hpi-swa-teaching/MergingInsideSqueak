as yet unclassified
methodsIn: aBaseMISClass and: aTargetMISClass do: aBlock

	aBaseMISClass methods do: [ :baseMethod |
		aTargetMISClass methods detect: [ :targetMethod |
			baseMethod selector = targetMethod selector
		] ifFound: [ :targetMethod |
			" was modified "
			aBlock value: baseMethod value: targetMethod
		] ifNone: [
			" was removed from target "
			aBlock value: baseMethod value: nil
		] 
	].
	(aTargetMISClass methods reject: [ :targetMethod |
			aBaseMISClass methods anySatisfy: [ :baseMethod | baseMethod selector = targetMethod selector]
		]) do: [ :targetMethod |
			" was added to target "
			aBlock value: nil value: targetMethod
		]
	