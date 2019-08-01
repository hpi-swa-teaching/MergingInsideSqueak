patch-calculation
addedClass: aMISClass

	^aMISClass methods: (aMISClass methods collect: [ :method | MISPatchAddition initializeWithChange: method])