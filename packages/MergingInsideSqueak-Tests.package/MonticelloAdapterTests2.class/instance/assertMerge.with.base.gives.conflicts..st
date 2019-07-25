as yet unclassified
assertMerge: local with: remote base: ancestor gives: result conflicts: conflictResult
	
	| merger baseSnapshot targetSnapshot ancestorSnapshot |
	conflicts := #().
	self halt.
	baseSnapshot := MISMonticelloConverter new convertMCSnapshotToMISSnapshot: (self snapshotWithElements: local).
	targetSnapshot := MISMonticelloConverter convertMCSnapshotToMISSnapshot: (self snapshotWithElements: remote).
	ancestorSnapshot := MISMonticelloConverter convertMCSnapshotToMISSnapshot: (self snapshotWithElements: ancestor).
	
	merger := MISDiffer
				base: (self snapshotWithElements: local)
				target: (self snapshotWithElements: remote)
				ancestor: (self snapshotWithElements: ancestor).
	merger conflicts do: [:ea | self handleConflict: ea].
	self assert: merger mergedSnapshot definitions hasElements: result.
	self assert: conflicts asSet = conflictResult asSet.