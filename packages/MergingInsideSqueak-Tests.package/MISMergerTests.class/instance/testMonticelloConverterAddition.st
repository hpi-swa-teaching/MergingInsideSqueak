as yet unclassified
testMonticelloConverterAddition

	| monticelloConverter deserialising patchAddition serialising methodDefinition |
	
	methodDefinition := self createMCMethodDefinitionFromSource: 'Hello'.
	patchAddition := MCAddition of: methodDefinition.
	
	monticelloConverter := MISMonticelloConverter new.
	serialising := monticelloConverter convertMCOperationToMISPatchOperation: patchAddition.
	deserialising := monticelloConverter convertMISPatchOperationToMCOperation: serialising.
	
	self assert:  patchAddition = deserialising.
	
