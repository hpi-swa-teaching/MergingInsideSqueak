building
buildMergePartAWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		readOnly: true;
		name: 'partA';
		getText: #partA.
	
	^textSpec