as yet unclassified
changeMethod: aSelector toReturn: anObject
	self 
		compileClass: self mockClassA 
		source: aSelector, ' ^ ', anObject printString 
		category: 'numeric'