building
buildPartBButtonsWith: aBuilder

	| panelSpec b |
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
		
	panelSpec children addAll: {
		b. 
	}.
	
	^panelSpec