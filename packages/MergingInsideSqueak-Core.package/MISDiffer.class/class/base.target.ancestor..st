as yet unclassified
base: aMISSnapshot target: targetMISSnapshot ancestor: ancestorMISSnapshot
	^ self base: aMISSnapshot patch: (targetMISSnapshot patchRelativeToBase: ancestorMISSnapshot)