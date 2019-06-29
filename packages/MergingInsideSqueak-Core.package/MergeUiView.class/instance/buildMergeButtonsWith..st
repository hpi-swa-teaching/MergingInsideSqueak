building
buildMergeButtonsWith: aBuilder

	| panelSpec next previous a b save |
	panelSpec := aBuilder pluggablePanelSpec new
		name: 'panel';
		layout: #horizontal;
		children: OrderedCollection new;
		yourself.
	
	next := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'nextConflict';
		label: 'Next Conflict';
		action: #nextConflict;
		help: 'Show next conflict' translated;
		yourself.

	previous := aBuilder pluggableButtonSpec new
		model: controller;
		label: 'Previous Conflict';
		name: 'previousConflict';
		action: #previousConflict;
		help: 'Show previous conflict' translated;
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
		next. previous. a. b. save.
	}.
	
	^panelSpec