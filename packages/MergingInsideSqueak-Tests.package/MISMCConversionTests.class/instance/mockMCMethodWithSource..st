as yet unclassified
mockMCMethodWithSource: aSourceString

	^ MCMethodDefinition
			className: 'MCMethodDefinitionTestClass'
			classIsMeta: false
			selector: 'MCMethodDefinitionTest'
			category: 'MCMethodDefinitionTestCategory'
			timeStamp: TimeStamp current
			source: 'MCMethodDefinitionTest', Character cr, Character cr, Character tab, aSourceString