as yet unclassified
methodMatching: aMISMethod inClass: aMISClass do: aBlock

	"self sourceMatching: aMISMethod in: aMISClass methods when: [:baseClass : ] do: ___
	aMISClass methods detect: [ :targetSource |
			aMISSource = targetSource
		] ifFound: aBlock value ifNone: []"

	