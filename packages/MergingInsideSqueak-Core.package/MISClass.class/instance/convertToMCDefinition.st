as yet unclassified
convertToMCDefinition

	| converted |
	converted := OrderedCollection new.
	converted add: (MCClassDefinition
			name: 								self className
			superclassName: 			self superclassName
			traitComposition: 			self traitComposition
			classTraitComposition: 	self classTraitComposition
			category: 						self category
			instVarNames: 				self instanceVarNames
			classVarNames: 				self classVarNames
			poolDictionaryNames: 	self poolArray
			classInstVarNames: 		self classInstanceVarNames
			type: 								self type
			comment: 						self comment
			commentStamp: 				self commentStamp).
			
		converted addAll: (self methods collect: [ :method | method change convertToMCDefinition ]).
		^converted