as yet unclassified
buildMergePartBWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: self;
		getText: #getPartBText.
	
	^textSpec