as yet unclassified
sourceMatching: aMISSource in: aMISSnapshot when: aComparingBlock do: aResultBlock

	aMISSnapshot sources detect: [ :targetSource | aComparingBlock value ] ifFound: aResultBlock value ifNone: []

	