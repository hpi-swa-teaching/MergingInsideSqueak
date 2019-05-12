nil
openWithFiles: aCollection

	^(self new buildAndOpenFullMergingTool)
		mergePartAFrame: (aCollection at: 0).