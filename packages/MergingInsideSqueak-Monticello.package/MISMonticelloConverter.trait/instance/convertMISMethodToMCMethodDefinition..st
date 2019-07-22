deserialising
convertMISMethodToMCMethodDefinition: aMISSourceHolder

	^(MCMethodDefinition new
			initializeWithClassName: aMISSourceHolder className
			classIsMeta: aMISSourceHolder classIsMeta
			selector: aMISSourceHolder selector
			category: aMISSourceHolder category
			timeStamp: aMISSourceHolder timestamp
			source: aMISSourceHolder source first text).
					