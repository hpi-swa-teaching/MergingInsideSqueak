as yet unclassified
convertMCOperationToMISPatchOperation: aMCOperation

	"| definition |
	definition := self convertMCDefinitionToMISSourceHolder: aMCOperation."
	aMCOperation isAddition ifTrue: [
		^MISPatchAddition new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation definition)
	].
	aMCOperation isRemoval ifTrue: [
		^MISPatchRemoval new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation definition)
	].
	aMCOperation isModification ifTrue: [
		" TODO: Use a Conflictable Wrapper for the change of a modification "
		^MISPatchModification new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation modification)
	].
	^nil