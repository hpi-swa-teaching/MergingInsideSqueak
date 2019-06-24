as yet unclassified
magicMergeFor: aSnapshot to: aVersion base: aCommit ifCanceled: cancelBlock

	self halt.
	^nil.
	"mergePatch := SquotMergePatchBuilder new
		patchFrom: aSnapshot
		to: aVersion
		base: aCommit.
	self loadPatchInteractively: mergePatch ifCanceled: [^ cancelBlock value]."