as yet unclassified
addedClass: aMISClass

	^aMISClass methods: (aMISClass methods collect: [ :method | MISPatchAddition initializeWithChange: method ])