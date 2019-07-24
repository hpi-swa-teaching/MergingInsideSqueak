as yet unclassified
convertMCClassDefinitionToMISClass: aMCClassDefinition

	^MISClass new
			className:			aMCClassDefinition className;
			source: 				(OrderedCollection with: (MISCleanChunk text: aMCClassDefinition source));
			actualClass:			aMCClassDefinition actualClass;
			superclassName: aMCClassDefinition superclassName;
			methods:				OrderedCollection new;
			category: 			aMCClassDefinition category;
			comment: 			aMCClassDefinition comment;
			yourself.