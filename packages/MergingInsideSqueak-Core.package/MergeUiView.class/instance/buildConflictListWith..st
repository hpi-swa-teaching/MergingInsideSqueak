building
buildConflictListWith: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableListSpec new.
	listSpec
		model: controller;
		list: #conflictList;
		getIndex: #conflictListIndex;
		setIndex: #conflictListIndex:;
		icon: #conflictIconAt:;
		keyPress: #conflictListKey:from:.
	
	^listSpec