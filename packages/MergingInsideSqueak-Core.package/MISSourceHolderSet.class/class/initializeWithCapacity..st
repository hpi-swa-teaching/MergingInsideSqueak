as yet unclassified
initializeWithCapacity: initialCapacity

	^(self new: initialCapacity)
		keyBlock: [ :object | object description ];
		yourself