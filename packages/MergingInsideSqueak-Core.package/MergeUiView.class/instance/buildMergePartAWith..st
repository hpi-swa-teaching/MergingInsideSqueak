building
buildMergePartAWith: aBuilder

	^aBuilder pluggableCodePaneSpec new
		model: controller;
		askBeforeDiscardingEdits: false;
		indicateUnacceptedChanges: false;
		readOnly: true;
		name: 'partA';
		getText: #partA.