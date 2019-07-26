as yet unclassified
loaderFor: aCollectionOfPatchOperations

	| loader | 
	loader := MCPackageLoader new.
	loader provisions addAll: self provisions.
	aCollectionOfPatchOperations do: [:misDef |
		(self convertMISPatchOperationToMCOperation:misDef) do: [ :mcDef |
			mcDef applyTo: loader]].
	^loader