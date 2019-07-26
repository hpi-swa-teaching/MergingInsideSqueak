building
buildGeneralButtonsWith: aBuilder

	| panelSpec next previous save |
	panelSpec := aBuilder pluggablePanelSpec new
		name: 'panelGeneral';
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
		
	save := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'saveButton';
		label: 'Save & Close';
		action: #save;
		help: 'Save and close the merge' translated;
		yourself.
		
	panelSpec children addAll: {
		next. previous. save.
	}.
	
	^panelSpec