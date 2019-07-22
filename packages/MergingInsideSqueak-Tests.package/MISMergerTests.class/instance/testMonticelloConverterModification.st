as yet unclassified
testMonticelloConverterModification

	| patchModification monticelloConverter baseDefinition targetDefinition deserialising serialising |
	
	baseDefinition := self createMCMethodDefinitionFromSource: 'Hello'.
	targetDefinition := self createMCMethodDefinitionFromSource: 'Hello World'.	
	patchModification := MCModification of: baseDefinition to: targetDefinition.

	monticelloConverter := MISMonticelloConverter new.	
	serialising := monticelloConverter convertMCOperationToMISPatchOperation: patchModification.
	deserialising := monticelloConverter convertMISPatchOperationToMCOperation: serialising.
	
	self assert: patchModification = deserialising.
	
