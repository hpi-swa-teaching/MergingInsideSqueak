building
buildMergePartAWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		readOnly: true;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		name: 'partA';
		getText: #partA.
	
	^textSpec