building
buildMergePartAWith: aBuilder

	^aBuilder pluggableCodePaneSpec new
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		stylerClass: MISStyler;
		readOnly: true;
		name: 'partA';
		getText: #partA.