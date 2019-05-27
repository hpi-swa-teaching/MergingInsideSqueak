building
buildConflictListWith: aBuilder

	| listSpec |
	listSpec := aBuilder pluggableTreeSpec new.
	listSpec
		color: Color red;
		model: controller;
		name: 'conflictList';
		roots: #conflictList;
		hasChildren: #classHasChildren:;
		getChildren: #getChildrenOfClass:;
		label: #labelOfObject:;
		setSelected: #listItemPress:;
		getSelectedPath: #selectedPath.
	
	^listSpec