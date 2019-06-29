building
buildMergePartAWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		name: 'partA';
		getText: #partA.
	
	^textSpec