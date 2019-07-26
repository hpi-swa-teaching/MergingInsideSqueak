building
buildMergePartBWith: aBuilder

	^aBuilder pluggableCodePaneSpec new
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		stylerClass: MISStyler;
		readOnly: true;
		name: 'partB';
		getText: #partB