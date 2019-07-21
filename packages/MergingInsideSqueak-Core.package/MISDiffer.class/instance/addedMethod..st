as yet unclassified
addedMethod: aMISMethod
	| ownerClass |
	ownerClass := self patchedClass: aMISMethod actualClass.
	ownerClass methods add: (MISPatchAddition initializeWithChange: aMISMethod)