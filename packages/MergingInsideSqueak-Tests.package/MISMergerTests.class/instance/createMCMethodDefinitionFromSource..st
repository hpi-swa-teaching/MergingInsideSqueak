as yet unclassified
createMCMethodDefinitionFromSource: aSource

	^ (MCMethodDefinition new initializeWithClassName: 'MergerTests'
					classIsMeta: false
					selector: ''
					category: 'MergingInsideSqueak-Core'
					timeStamp: ''
					source: aSource).