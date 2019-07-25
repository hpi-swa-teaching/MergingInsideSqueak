as yet unclassified
base: baseMISSnapshot target: targetMISSnapshot ancestor: ancestorMISSnapshot
	^ self base: baseMISSnapshot patch: (targetMISSnapshot patchRelativeToBase: ancestorMISSnapshot)