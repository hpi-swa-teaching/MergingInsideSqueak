patch-calculation
removedClass: aMISClass

	^aMISClass methods: (aMISClass methods collect: [ :method | MISPatchRemoval initializeWithChange: method])