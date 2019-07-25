building
buildMergePartAWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		stylerClass: MISStyler;
		readOnly: true;
		name: 'partA';
		getText: #partA.
	
	^textSpec