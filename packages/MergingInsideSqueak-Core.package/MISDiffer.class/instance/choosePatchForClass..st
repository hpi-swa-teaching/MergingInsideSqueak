patch-calculation
choosePatchForClass: aMISClass

	| classPatch |
	classPatch := MISPatchModification.
	(aMISClass methods allSatisfy: [ :patch | patch isAddition]) ifTrue: [
		classPatch := MISPatchAddition 
	].
	(aMISClass methods allSatisfy: [ :patch | patch isRemoval]) ifTrue: [
		classPatch := MISPatchRemoval
	].
	^classPatch initializeWithChange: aMISClass