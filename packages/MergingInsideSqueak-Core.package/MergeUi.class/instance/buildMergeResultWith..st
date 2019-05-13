as yet unclassified
buildMergeResultWith: aBuilder

	| textSpec |
	textSpec := aBuilder pluggableCodePaneSpec new.
	textSpec
		model: self currentConflict;
		getText: #resultText.
	
	^textSpec