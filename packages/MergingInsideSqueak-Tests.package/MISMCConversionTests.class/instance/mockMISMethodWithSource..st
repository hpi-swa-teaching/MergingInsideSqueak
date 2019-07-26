as yet unclassified
mockMISMethodWithSource: aSourceString

	^ MISMethod new
			methodName: 'MCMethodDefinitionTest';
			category: 'MCMethodDefinitionTestCategory';
			comment: 'This is some comment';
			className: 'MCMethodDefinitionTestClass';
			timestamp: TimeStamp current;
			source: (OrderedCollection with: (MISCleanChunk text: 'MCMethodDefinitionTest', Character cr, Character cr, Character tab, aSourceString))