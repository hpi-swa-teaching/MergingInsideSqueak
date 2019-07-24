as yet unclassified
methodsIn: aBaseMISClass and: aTargetMISClass do: aBlock

	aBaseMISClass methods do: [ :baseMethod |
		aTargetMISClass methods detect: [ :targetMethod |
			baseMethod methodName = targetMethod methodName 
			and: [baseMethod classIsMeta = targetMethod classIsMeta]
		] ifFound: [ :targetMethod |
			" was modified "
			aBlock value: baseMethod value: targetMethod
		] ifNone: [
			" was removed from target "
			aBlock value: baseMethod value: nil
		] 
	].
	(aTargetMISClass methods reject: [ :targetMethod |
			aBaseMISClass methods anySatisfy: [ :baseMethod | 
			baseMethod methodName = targetMethod methodName 
			and: [baseMethod classIsMeta = targetMethod classIsMeta]]
		]) do: [ :targetMethod |
			" was added to target "
			aBlock value: nil value: targetMethod
		]
	