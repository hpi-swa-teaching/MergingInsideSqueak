comparing
= anotherMISSourceHolder
	| isEqual |
	
	isEqual := anotherMISSourceHolder sources size = self sources size.
	anotherMISSourceHolder sources do: [:anotherClass | 
		self sources detect: [:aClass | 
			aClass = anotherClass	
		] ifFound: [:aClass |
			anotherClass methods do: [:anotherMethod |
				aClass methods	detect: [:aMethod |
					aMethod = anotherMethod		
				] ifFound: [:aMethod|] ifNone: [
					^false
				]
			]
		] ifNone: [
			^false
		]	
	].
	^isEqual