building
buildMergePartAWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: self currentConflict;
		getText: #partA.
	
	^textSpec