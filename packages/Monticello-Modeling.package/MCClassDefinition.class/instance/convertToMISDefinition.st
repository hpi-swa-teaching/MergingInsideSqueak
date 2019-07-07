printing
convertToMISDefinition
	| misDefinition |
	
	misDefinition := MISClass new 
		className: self className;
		methods: OrderedCollection new;
		yourself.
	misDefinition actualClass: misDefinition.
	^misDefinition.