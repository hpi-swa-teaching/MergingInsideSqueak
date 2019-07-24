as yet unclassified
convertMISMethodToMCMethodDefinition: aMISSourceHolder

	^MCMethodDefinition
			className:							aMISSourceHolder className
			classIsMeta: 						aMISSourceHolder classIsMeta
			selector: 								aMISSourceHolder methodName
			category: 							aMISSourceHolder category
			timeStamp: 							aMISSourceHolder timestamp
			source: 								aMISSourceHolder sourceText