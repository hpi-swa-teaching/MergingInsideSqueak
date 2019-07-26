styling
aboutToStyle: aStyler
	
	self currentChange ifNil: [^false]. 
	aStyler classOrMetaClass:  self currentChange class.
	^true.