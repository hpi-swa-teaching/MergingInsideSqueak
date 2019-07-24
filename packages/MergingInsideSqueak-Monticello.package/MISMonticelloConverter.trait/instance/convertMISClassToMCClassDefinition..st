as yet unclassified
convertMISClassToMCClassDefinition: aMISSourceHolder

	| converted |
	converted := OrderedCollection new.
	converted add: (MCClassDefinition
			name: aMISSourceHolder className
			superclassName: aMISSourceHolder superclassName
			traitComposition: nil "aMISSourceHolder traitComposition"
			classTraitComposition: nil "aMISSourceHolder classTraitComposition"
			category: aMISSourceHolder category
			instVarNames: aMISSourceHolder instanceVarNames
			classVarNames: aMISSourceHolder classVarNames
			poolDictionaryNames: Array new "aMISSourceHolder poolArray"
			classInstVarNames: aMISSourceHolder classInstanceVarNames
			type: '' "aMISSourceHolder typeSymbol"
			comment: aMISSourceHolder comment
			commentStamp: aMISSourceHolder commentStamp).
			
		converted addAll: (aMISSourceHolder methods collect: [ :method | self convertMISMethodToMCMethodDefinition: method change ]).
		^converted