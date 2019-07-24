building
buildMergeResultWith: aBuilder

	^aBuilder pluggableCodePaneSpec new
		model: controller;
		name: 'result';
		getText: #resultText