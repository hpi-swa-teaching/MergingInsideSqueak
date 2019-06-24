as yet unclassified
convertMCOperationToMISPatchOperation: aMCOperation

	| definition |
	definition := self convertMCDefinitionToMISSourceHolder: aMCOperation.
	aMCOperation isAddition ifTrue: [
		^MISPatchAddition new modification: definition
	].
	aMCOperation isRemoval ifTrue: [
		^MISPatchRemoval new modification: definition
	].
	aMCOperation isModification ifTrue: [
		^MISPatchModification new modification: definition
	].
	^nil