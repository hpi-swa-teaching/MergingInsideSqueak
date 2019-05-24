building
buildMergeResultWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		name: 'result';
		getText: #resultText.
	
	^textSpec