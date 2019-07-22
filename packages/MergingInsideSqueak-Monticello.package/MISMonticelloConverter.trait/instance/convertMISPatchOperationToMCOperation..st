deserialising
convertMISPatchOperationToMCOperation: aMISPatchOperation
	
	aMISPatchOperation isAddition ifTrue: [
		^MCAddition of: (self convertMISSourceHolderToMCDefinition: aMISPatchOperation change)
	].
	aMISPatchOperation isRemoval ifTrue: [
		^MCRemoval of: (self convertMISSourceHolderToMCDefinition: aMISPatchOperation change) 
	].
	aMISPatchOperation isModification ifTrue: [
		^MCModification of: (self convertMISSourceHolderToMCDefinition: aMISPatchOperation base) to: (self convertMISSourceHolderToMCDefinition: aMISPatchOperation target).
	].
	^nil