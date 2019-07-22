as yet unclassified
testMonticelloConverterRemoval

	| monticelloConverter deserialising serialising methodDefinition patchRemoval |
	
	methodDefinition := self createMCMethodDefinitionFromSource: 'Hello'.
	patchRemoval := MCRemoval of: methodDefinition.
	
	monticelloConverter := MISMonticelloConverter new.	
	serialising := monticelloConverter convertMCOperationToMISPatchOperation: patchRemoval.
	deserialising := monticelloConverter convertMISPatchOperationToMCOperation: serialising.
	
	self assert: patchRemoval = deserialising.
	
