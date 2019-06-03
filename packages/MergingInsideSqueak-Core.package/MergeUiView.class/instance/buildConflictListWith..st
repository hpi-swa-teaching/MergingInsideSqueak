building
buildConflictListWith: aBuilder

	| listSpec |
	listSpec := ColoredPluggableTreeSpec new.
	listSpec
		model: controller;
		"nodeClass: IndentingListItemMorph; ""ObjectExplorerWrapper;"
		name: 'conflictList';
		roots: #conflictList;
		hasChildren: #classHasChildren:;
		getChildren: #getChildrenOfClass:;
		labelColor: #colorOfObject:;
		label: #labelOfObject:;
		setSelected: #listItemPress:;
		getSelectedPath: #selectedPath.
	
	^listSpec