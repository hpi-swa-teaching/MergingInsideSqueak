as yet unclassified
initializeWithBase: baseSnapshot target: targetSnapshot
	| base target |	
	operations := OrderedCollection new.
	base := MISSourceHolderSet definitions: baseSnapshot definitions.
	target := MISSourceHolderSet definitions: targetSnapshot definitions.
	
	target definitionsDo:
		[:t |
		base
			definitionLike: t
			ifPresent: [:b | (b isSameRevisionAs: t) ifFalse: [operations add: ( MISPatchModification of: b to: t)]]
			ifAbsent: [operations add: (MISPatchAddition of: t)]].
		
	base definitionsDo:
		[:b |
		target
			definitionLike: b
			ifPresent: [:t]
			ifAbsent: [operations add: (MISPatchRemoval of: b)]]		