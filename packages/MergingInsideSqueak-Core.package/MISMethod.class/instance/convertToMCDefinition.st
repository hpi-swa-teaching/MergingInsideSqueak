as yet unclassified
convertToMCDefinition

	^MCMethodDefinition
			className:							self className
			classIsMeta: 						self classIsMeta
			selector: 								self methodName
			category: 							self category
			timeStamp: 							self timestamp
			source: 								self sourceText