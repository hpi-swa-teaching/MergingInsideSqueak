as yet unclassified
removedMethod: aMISMethod
	| ownerClass removedMethod |
	ownerClass := self patchedClass: aMISMethod actualClass.
	removedMethod := aMISMethod copy.
	
	removedMethod source: (OrderedCollection with: (MISConflictChunk left: (removedMethod source at: 1) text right: '')).
	ownerClass methods add: (MISPatchRemoval initializeWithChange: removedMethod)