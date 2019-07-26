building
buildMergeResultWith: aBuilder

	^aBuilder pluggableCodePaneSpec new
		model: controller;
		name: 'result';
		stylerClass: MISStyler;
		getText: #resultText