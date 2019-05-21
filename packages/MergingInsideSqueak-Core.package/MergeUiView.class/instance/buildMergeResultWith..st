building
buildMergeResultWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		getText: #resultText.
	
	^textSpec