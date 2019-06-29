building
buildMergePartBWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: controller;
		name: 'partB';
		getText: #partB.
	
	^textSpec