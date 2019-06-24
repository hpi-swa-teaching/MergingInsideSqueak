as yet unclassified
merger: aMerger
	merger := aMerger.
	items :=  aMerger operations sorted collect: [:op | self convertMCOperationToMISPatchOperation: op].
	conflicts := aMerger conflicts sort: [:a :b | a operation <= b operation].