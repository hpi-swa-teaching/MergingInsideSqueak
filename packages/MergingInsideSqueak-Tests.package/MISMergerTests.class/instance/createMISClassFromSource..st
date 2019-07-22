mocking
createMISClassFromSource: aSource

	| class method |
	method := MISMethod new 
		source: aSource;
		category: 'MergingInsideSqueak-Core';
		selector: '';
		className: 'MergerTests';
		timestamp: '';
		classIsMeta: false;
		yourself.
	
	class := MISClass new methods: method.
	
	^ class