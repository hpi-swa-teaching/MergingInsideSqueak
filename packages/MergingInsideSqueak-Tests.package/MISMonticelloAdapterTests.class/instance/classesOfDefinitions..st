as yet unclassified
classesOfDefinitions: aCollectionOfMCDefinitions

	| classes |
	classes := Set new.
	aCollectionOfMCDefinitions do: [:def | | class |
		def isClassDefinition ifTrue: [class := def name].
		def isMethodDefinition ifTrue: [class := def className].
		class ifNotNil: [classes add: class]
	].
	^classes