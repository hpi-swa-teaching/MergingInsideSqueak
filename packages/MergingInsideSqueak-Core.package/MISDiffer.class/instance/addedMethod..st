as yet unclassified
addedMethod: aMISMethod
	| ownerClass addedMethod |
	ownerClass := self patchedClass: aMISMethod actualClass.
	
	addedMethod := aMISMethod copy.
	addedMethod source: (OrderedCollection with: (MISConflictChunk left: '' right: (addedMethod source at: 1) text)).
	
	ownerClass methods add: (MISPatchAddition initializeWithChange: addedMethod)