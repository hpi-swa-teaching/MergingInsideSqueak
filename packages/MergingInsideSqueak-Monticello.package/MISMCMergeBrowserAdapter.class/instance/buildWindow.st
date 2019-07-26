as yet unclassified
buildWindow

	| patch |
	patch := MISPatch operations: items.
	window := (MergeUiView mergePatch: patch).
	^window build