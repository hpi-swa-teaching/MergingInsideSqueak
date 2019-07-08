as yet unclassified
convertMCMethodDefinitionToMISMethod: aMCMethodDefinition

	^MISMethod new
			source: 		(OrderedCollection with: (MISCleanChunk text: aMCMethodDefinition source));
			category: 	aMCMethodDefinition category;
			selector: 		aMCMethodDefinition selector;
			className: 	aMCMethodDefinition className;
			timestamp: 	aMCMethodDefinition timeStamp;
			classIsMeta: aMCMethodDefinition classIsMeta;
			yourself.