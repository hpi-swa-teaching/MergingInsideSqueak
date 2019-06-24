as yet unclassified
buildWindow

	| patch |
	patch := MISPatch operations: items.
	^(MergeUiView mergePatch: patch) build. "initWithMockData build."