as yet unclassified
convertMCOperationToMISPatchOperation: aMCOperation
	
	^aMCOperation convertToMISPatchOperation
	"aMCOperation isAddition ifTrue: [
		^MISPatchAddition new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation definition)
	].
	aMCOperation isRemoval ifTrue: [
		^MISPatchRemoval new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation definition)
	].
	aMCOperation isModification ifTrue: [
		^MISPatchModification new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation modification)
	].
	^nil"