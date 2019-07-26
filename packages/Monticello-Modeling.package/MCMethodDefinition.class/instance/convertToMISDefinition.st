converting
convertToMISDefinition
	
	^MISMethod new 
		timestamp: self timeStamp;
		className: self className;
		methodName: self selector asString;
		classIsMeta: self classIsMeta;
		source: (OrderedCollection with: (MISCleanChunk new text: self source));
		yourself.