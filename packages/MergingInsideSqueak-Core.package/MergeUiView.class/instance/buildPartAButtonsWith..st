building
buildPartAButtonsWith: aBuilder

	| panelSpec a |
	panelSpec := aBuilder pluggablePanelSpec new
		name: 'panelA';
		layout: #horizontal;
		children: OrderedCollection new;
		yourself.
	
	a := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'buttonA';
		label: 'Choose Local';
		state: #stateA;
		action: #chooseA;
		help: 'Choose local solution for this conflict' translated;
		yourself.
		
	panelSpec children addAll: {
		a.
	}.
	
	^panelSpec