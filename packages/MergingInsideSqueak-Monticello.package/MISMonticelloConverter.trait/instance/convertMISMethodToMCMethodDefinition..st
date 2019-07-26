as yet unclassified
convertMISMethodToMCMethodDefinition: aMISSourceHolder

	^aMISSourceHolder convertToMCDefinition
	"self halt.
	^MCMethodDefinition
			className:							aMISSourceHolder className
			classIsMeta: 						aMISSourceHolder classIsMeta
			selector: 								aMISSourceHolder methodName
			category: 							aMISSourceHolder category
			timeStamp: 							aMISSourceHolder timestamp
			source: 								aMISSourceHolder sourceText"