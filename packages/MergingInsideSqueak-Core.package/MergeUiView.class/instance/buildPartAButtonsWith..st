building
buildPartAButtonsWith: aBuilder

	| panelSpec a allA |
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
		
	allA := aBuilder pluggableButtonSpec new
		model: controller;
		name: 'buttonAllA';
		label: 'Choose All Local';
		state: #stateAllA;
		action: #chooseAllA;
		help: 'Choose for all conflicts local solution' translated;
		yourself.	
		
	panelSpec children addAll: {
		a. allA.
	}.
	
	^panelSpec