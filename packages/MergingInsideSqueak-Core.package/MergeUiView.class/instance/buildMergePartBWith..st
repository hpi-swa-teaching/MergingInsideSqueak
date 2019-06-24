building
buildMergePartBWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		readOnly: true;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		name: 'partB';
		getText: #partB.
	
	^textSpec