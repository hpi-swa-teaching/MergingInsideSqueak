building
buildPartBButtonsWith: aBuilder

	| panelSpec b allB |
	panelSpec := aBuilder pluggablePanelSpec new
		name: 'panelB';
		layout: #horizontal;
		children: OrderedCollection new;
		yourself.
		
	b := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'buttonB';
		label: 'Choose Remote';
		state: #stateB;
		action: #chooseB;
		help: 'Choose remote solution for this conflict' translated;
		yourself.

	allB := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'buttonAllB';
		label: 'Choose All Remote';
		state: #stateAllB;
		action: #chooseAllB;
		help: 'Choose remote solution for all conflicts' translated;
		yourself.
		
	panelSpec children addAll: {
		b. allB.
	}.
	
	^panelSpec