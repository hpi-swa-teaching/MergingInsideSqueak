building
buildMergePartBWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		getText: #partB.
	
	^textSpec