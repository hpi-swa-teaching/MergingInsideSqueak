building
buildMergePartBWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		stylerClass: MISStyler;
		readOnly: true;
		name: 'partB';
		getText: #partB.
	
	^textSpec