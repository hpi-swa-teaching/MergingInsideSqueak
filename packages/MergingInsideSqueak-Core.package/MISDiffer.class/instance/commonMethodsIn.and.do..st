as yet unclassified
commonMethodsIn: aBaseMISClass and: aTargetMISClass do: aBlock

	aBaseMISClass methods do: [ :baseMethod |
		aTargetMISClass methods detect: [ :targetMethod |
			baseMethod selector = targetMethod selector
		] ifFound: [ :targetMethod |
			aBlock value: baseMethod value: targetMethod
		] ifNone: [] 
	]
	