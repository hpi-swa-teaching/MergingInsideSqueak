as yet unclassified
sourceMatching: aMISSource in: aMISSnapshot do: aBlock

	aMISSnapshot sources detect: [ :targetSource |
			aMISSource = targetSource
		] ifFound: aBlock value ifNone: []

	