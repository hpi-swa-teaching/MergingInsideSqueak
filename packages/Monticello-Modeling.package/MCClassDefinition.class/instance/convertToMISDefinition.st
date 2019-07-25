printing
convertToMISDefinition
	| misDefinition |
	
	misDefinition := MISClass new
			className:						self className;
			source: 							(OrderedCollection with: (MISCleanChunk text: self source));
			actualClass:						self actualClass;
			superclassName: 			self superclassName;
			type:								self type;
			traitComposition:				self traitComposition;
			classTraitComposition:	self classTraitComposition;
			methods:							OrderedCollection new;
			category: 						self category;
			comment: 						self comment;
			yourself.
	misDefinition actualClass: misDefinition.
	^misDefinition.
	"misDefinition := MISClass new 
		className: self className;
		methods: OrderedCollection new;
		yourself.
	misDefinition actualClass: misDefinition.
	^misDefinition."