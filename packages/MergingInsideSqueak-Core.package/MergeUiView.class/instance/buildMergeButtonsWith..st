building
buildMergeButtonsWith: aBuilder

	| panelSpec next last a b save |
	panelSpec := aBuilder pluggablePanelSpec new
		name: 'panel';
		layout: #horizontal;
		children: OrderedCollection new;
		yourself.
	
	next := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'nextConflict';
		label: 'Next Conflict';
		action: #next;
		help: 'Show next conflict' translated;
		yourself.

	last := aBuilder pluggableButtonSpec new
		model: controller;
		label: 'Last Conflict';
		name: 'lastConflict';
		action: #last;
		help: 'Show last conflict' translated;
		yourself.
	
	a := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'buttonA';
		label: 'Choose A';
		state: #stateA;
		action: #chooseA;
		help: 'Choose solution A for this conflict' translated;
		yourself.
		
	b := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'buttonB';
		label: 'Choose B';
		state: #stateB;
		action: #chooseB;
		help: 'Choose solution B for this conflict' translated;
		yourself.
		
	save := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'saveButton';
		label: 'Save & Close';
		help: 'Save and close the merge' translated;
		yourself.
		
	panelSpec children addAll: {
		next. last. a. b. save.
	}.
	
	^panelSpec