as yet unclassified
convertMCDefinitionToMISSourceHolder: aMCDefinition

	aMCDefinition isMethodDefinition ifTrue: [
		^self convertMCMethodDefinitionToMISMethod: aMCDefinition
		].
	aMCDefinition isClassDefinition ifTrue: [
		^self convertMCClassDefinitionToMISClass: aMCDefinition
		].
	aMCDefinition isOrganizationDefinition ifTrue: [
		^nil "How to handle?"
		].
	aMCDefinition isScriptDefinition ifTrue: [
		^nil "How to handle?"
		].
	self halt.
	^nil