as yet unclassified
removedClass: aMISClass

	^aMISClass methods: (aMISClass methods collect: [ :method | MISPatchRemoval initializeWithChange: method ])