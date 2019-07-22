serialising
convertMCOperationToMISPatchOperation: aMCOperation

  aMCOperation isAddition ifTrue: [
    ^MISPatchAddition new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation definition)
  ].
  aMCOperation isRemoval ifTrue: [
    ^MISPatchRemoval new initializeWithChange: (self convertMCDefinitionToMISSourceHolder: aMCOperation definition)
  ].
  aMCOperation isModification ifTrue: [
	^MISPatchModification new initializeWithBase: (self convertMCDefinitionToMISSourceHolder: aMCOperation obsoletion) target: (self convertMCDefinitionToMISSourceHolder: aMCOperation modification) 
  ].
  ^nil