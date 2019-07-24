as yet unclassified
save: aCollectionOfPatchOperations withName: baseName

	| loader | 
	"convertedSnapshot := self convertMISSnapshotToMCSnapshot: aMISSnapshot."
	loader := MCPackageLoader new.
	loader provisions addAll: self provisions.
	"self applyTo: loader."
	"convertedSnapshot operations"
	aCollectionOfPatchOperations do: [:misDef |
		(self convertMISPatchOperationToMCOperation:misDef) do: [ :mcDef |
			self halt.
			mcDef applyTo: loader ]].
	self halt.
	loader loadWithNameLike: baseName