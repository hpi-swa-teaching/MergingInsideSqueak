as yet unclassified
merge: aVersion
	
	[[aVersion merge]
		on: MCMergeResolutionRequest do: [:n | n resume: true]]
			on: MCNoChangesException do: [:n | ]