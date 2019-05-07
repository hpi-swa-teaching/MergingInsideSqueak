as yet unclassified
buildConflictListWith: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec
		model: self;
		list: #conflictList;
		getIndex: #conflictListIndex;
		setIndex: #conflictListIndex:;
		icon: #conflictIconAt:;
		keyPress: #conflictListKey:from:.
	
	^listSpec