merging
patchMergeRecord: aMCMergeRecord

	| localSnapshot remoteSnapshot |
	localSnapshot := MISSnapshot fromMCSnapshot: aMCMergeRecord version snapshot.
	remoteSnapshot := MISSnapshot fromMCSnapshot: aMCMergeRecord ancestorSnapshot.
	^MISDiffer new base: localSnapshot; target: remoteSnapshot; patch