as yet unclassified
convertMCDefinitionToMISSourceHolder: aMCDefinition

	^aMCDefinition convertToMISDefinition.
	"aMCDefinition isMethodDefinition ifTrue: [
		^self convertMCMethodDefinitionToMISMethod: aMCDefinition
		].
	aMCDefinition isClassDefinition ifTrue: [
		^self convertMCClassDefinitionToMISClass: aMCDefinition
		].
	aMCDefinition isOrganizationDefinition ifTrue: [
		^nil
		].
	aMCDefinition isScriptDefinition ifTrue: [
		^nil
		]."
	"Must be a mock definition"
	"^MISSourceHolderMock new token: aMCDefinition token."