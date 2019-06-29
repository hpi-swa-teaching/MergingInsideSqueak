accessing
patch: aMISPatch

	| conflictList |
	patch := aMISPatch.
	conflictList := patch operations inject: OrderedCollection new into: [:acc :op | 
		| classModel modifiedClass |
		modifiedClass := MISClass new className: (op change className).
		modifiedClass methods add: (
			op class new change: (op change)).
		classModel := op change: modifiedClass.
		acc add: classModel ].
	conflicts := OrderedCollection with: conflictList.