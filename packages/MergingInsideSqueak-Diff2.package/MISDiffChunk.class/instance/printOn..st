accessing
printOn: aStream
	aStream
		nextPut: $(;
		nextPutAll: self class name;
		nextPutAll: ' offset: ';
		nextPutAll: self offset asString;
		nextPutAll: ' length: ';
		nextPutAll: self length asString;
		nextPut: $).