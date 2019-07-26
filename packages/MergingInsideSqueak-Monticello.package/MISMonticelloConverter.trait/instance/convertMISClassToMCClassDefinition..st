as yet unclassified
convertMISClassToMCClassDefinition: aMISSourceHolder

	^aMISSourceHolder convertToMCDefinition
	"| converted |
	converted := OrderedCollection new.
	converted add: (MCClassDefinition
			name: 								aMISSourceHolder className
			superclassName: 			aMISSourceHolder superclassName
			traitComposition: 			aMISSourceHolder traitComposition
			classTraitComposition: 	aMISSourceHolder classTraitComposition
			category: 						aMISSourceHolder category
			instVarNames: 				aMISSourceHolder instanceVarNames
			classVarNames: 				aMISSourceHolder classVarNames
			poolDictionaryNames: 	aMISSourceHolder poolArray
			classInstVarNames: 		aMISSourceHolder classInstanceVarNames
			type: 								aMISSourceHolder type
			comment: 						aMISSourceHolder comment
			commentStamp: 				aMISSourceHolder commentStamp).
			
		converted addAll: (aMISSourceHolder methods collect: [ :method | self convertMISMethodToMCMethodDefinition: method change ]).
		^converted"