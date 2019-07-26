converting
convertToMISDefinition
	
	^MISMethod new 
		source: (OrderedCollection with: (Chunk new text: self source));
		category:	self category;
		timestamp: self timeStamp;
		className: self className;
		methodName: self selector asString;
		classIsMeta: self classIsMeta;
		yourself.