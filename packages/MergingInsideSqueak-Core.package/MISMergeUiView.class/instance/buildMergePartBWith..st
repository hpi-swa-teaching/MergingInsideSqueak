building
buildMergePartBWith: aBuilder

	^aBuilder pluggableCodePaneSpec new
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		readOnly: true;
		name: 'partB';
		getText: #partB