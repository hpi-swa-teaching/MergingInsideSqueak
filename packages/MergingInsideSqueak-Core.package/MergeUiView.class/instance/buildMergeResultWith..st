building
buildMergeResultWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		stylerClass: MISStyler;
		name: 'result';
		getText: #resultText.
	
	^textSpec