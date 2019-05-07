as yet unclassified
buildMergeButtonsWith: aBuilder

	| panelSpec next last a b save |
	panelSpec := aBuilder pluggablePanelSpec new
		layout: #horizontal;
		children: OrderedCollection new;
		yourself.
	
	next := aBuilder pluggableButtonSpec new
		model: self;
		label: 'Next Conflict';
		help: 'Show next conflict' translated;
		yourself.

	last := aBuilder pluggableButtonSpec new
		model: self;
		label: 'Last Conflict';
		help: 'Show last conflict' translated;
		yourself.
	
	a := aBuilder pluggableButtonSpec new
		model: self;
		label: 'Choose A';
		help: 'Choose solution A for this conflict' translated;
		yourself.
		
	b := aBuilder pluggableButtonSpec new
		model: self;
		label: 'Choose B';
		help: 'Choose solution B for this conflict' translated;
		yourself.
		
	save := aBuilder pluggableButtonSpec new
		model: self;
		label: 'Save & Close';
		help: 'Save and close the merge' translated;
		yourself.
		
	panelSpec children addAll: {
		next. last. a. b. save.
	}.
	
	^panelSpec