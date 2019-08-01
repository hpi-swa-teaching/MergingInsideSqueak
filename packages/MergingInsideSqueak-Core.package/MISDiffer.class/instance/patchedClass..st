patch-calculation
patchedClass: aMISClass

	| found patchedClass | 
	found := self patchOperations findFirst: [ :class | class className = aMISClass className ].
	(found = 0)
		ifFalse: [ ^self patchOperations at: found ]
		ifTrue: [
			patchedClass := aMISClass copy methods: (OrderedCollection new).
			self patchOperations add: patchedClass.
			^patchedClass]