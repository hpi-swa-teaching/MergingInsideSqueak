merging
loaderFor: aCollectionOfPatchOperations

	| loader | 
	loader := MCPackageLoader new.
	loader provisions addAll: self provisions.
	aCollectionOfPatchOperations do: [:misPatchOperation |
		misPatchOperation convertToMCOperations do: [ :mcDef |
			mcDef applyTo: loader]].
	^loader