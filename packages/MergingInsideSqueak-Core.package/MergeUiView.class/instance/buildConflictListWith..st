building
buildConflictListWith: aBuilder

	| listSpec |
	listSpec := PluggableTreeSpec new.
	listSpec
		model: controller;
		"nodeClass: IndentingListItemMorph; ""ObjectExplorerWrapper;"
		name: 'conflictList';
		roots: #conflictList;
		hasChildren: #classHasChildren:;
		getChildren: #getChildrenOfClass:;
		label: #labelOfObject:;
		setSelected: #listItemPress:;
		getSelectedPath: #selectedPath.
	
	^listSpec