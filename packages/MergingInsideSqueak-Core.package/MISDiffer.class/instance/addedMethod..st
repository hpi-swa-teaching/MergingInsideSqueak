as yet unclassified
addedMethod: aMISMethod
	| ownerClass |
	ownerClass := self patchedClass: aMISMethod actualClass.
	self halt.
	ownerClass methods add: (MISPatchAddition initializeWithChange: aMISMethod)