testing
= aSourceHolder

	^aSourceHolder isMethodSource
		and: [aSourceHolder source size = 1
		and: [self source size = 1
		and: [((aSourceHolder source at: 1) text) = ((self source at: 1) text)
		and: [self classIsMeta = aSourceHolder classIsMeta]]]]