accessing
patch: aMISPatch

	patch := aMISPatch.
	conflicts := aMISPatch operations sorted.
	
	"conflictClasses := Dictionary new.
	patch operations do: [ :op | 
		| modifiedClass |
		modifiedClass := MISClass new className: (op change className).
		conflictClasses at: modifiedClass ifAbsentPut: [OrderedCollection new].
		(conflictClasses at: modifiedClass) add: (op class new change: (op change))
	]."

	" Create the correct patches for the classes"
	"conflicts := OrderedCollection new.
	conflictClasses keysAndValuesDo: [:class :methodPatches | 
		| classPatch |
		classPatch := MISPatchModification.
		(methodPatches allSatisfy: [:mp | mp isAddition]) ifTrue: [
			classPatch := MISPatchAddition 
			].
		(methodPatches allSatisfy: [:mp | mp isRemoval]) ifTrue: [
			classPatch := MISPatchRemoval
			].
		class methods: methodPatches.
		conflicts add: (classPatch new change: class)
	].
	self halt."