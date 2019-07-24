as yet unclassified
patchMergeRecord: aMCMergeRecord

	| localSnapshot remoteSnapshot |
	localSnapshot := self convertMCSnapshotToMISSnapshot: aMCMergeRecord version snapshot.
	remoteSnapshot := self convertMCSnapshotToMISSnapshot: aMCMergeRecord ancestorSnapshot.
	^MISDiffer new base: localSnapshot; target: remoteSnapshot; patchIt