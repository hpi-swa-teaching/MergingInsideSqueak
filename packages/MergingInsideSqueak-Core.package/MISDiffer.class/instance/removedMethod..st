as yet unclassified
removedMethod: aMISMethod
	| ownerClass |
	ownerClass := self patchedClass: aMISMethod actualClass.

	ownerClass methods add: (MISPatchRemoval initializeWithChange: aMISMethod)