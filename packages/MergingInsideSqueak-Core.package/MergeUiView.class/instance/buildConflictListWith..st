building
buildConflictListWith: aBuilder

	^PluggableTreeSpec new
		model: controller;
		autoDeselect: false;
		name: 'conflictList';
		roots: #conflicts;
		label: #labelOfChange:;
		hasChildren: #classHasChildren:;
		getChildren: #childrenOfClass:;
		setSelected: #handleChangeSelection:;
		setSelectedPath: #selectedPath:;
		getSelectedPath: #selectedPath;
		yourself