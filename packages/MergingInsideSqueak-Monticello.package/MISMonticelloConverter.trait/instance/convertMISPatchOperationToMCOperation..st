as yet unclassified
convertMISPatchOperationToMCOperation: aMISPatchOperation
	
	aMISPatchOperation isAddition ifTrue: [
		^OrderedCollection with: (MCAddition of: (self convertMISSourceHolderToMCDefinition: aMISPatchOperation change))
	].
	aMISPatchOperation isRemoval ifTrue: [
		^OrderedCollection with: (MCRemoval of: (self convertMISSourceHolderToMCDefinition: aMISPatchOperation change))
	].
	aMISPatchOperation isModification ifTrue: [
		| definitions |
		definitions := self convertMISSourceHolderToMCDefinition: aMISPatchOperation change.
		^definitions collect: [:def |
			MCModification of: def to: def]
	].
	^nil