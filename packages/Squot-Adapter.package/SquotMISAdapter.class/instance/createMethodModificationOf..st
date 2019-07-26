update
createMethodModificationOf:  aMISMethod
	| modification |
	
	(self getBaseArtifactFor: aMISMethod actualClass package) content startShadow definitions doWithIndex: [:definition :index | 
		(definition isMethodDefinition
		and: [definition classIsMeta = aMISMethod classIsMeta
		and: [definition selector asString = aMISMethod methodName
		and: [definition className = aMISMethod className]]]) ifTrue: [ | newMethodDefinition |
			newMethodDefinition := MCMethodDefinition className: definition className classIsMeta: definition classIsMeta selector: definition selector category: definition category timeStamp: definition timeStamp source: (aMISMethod source at: 1) text.
			modification := MCModification of: definition to: newMethodDefinition.
		]
	].
	^modification