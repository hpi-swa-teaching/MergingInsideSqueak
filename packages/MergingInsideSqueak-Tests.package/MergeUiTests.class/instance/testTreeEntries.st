tests
testTreeEntries
	
	| treeEntries |
	treeEntries := view conflictListMorph items.
	self assert: treeEntries size == 4.
	self assert: (treeEntries at: 1) getLabel = 'classA (modified)'.
	self assert: (treeEntries at: 2) getLabel = 'method1 (modified)'.
	self assert: (treeEntries at: 3) getLabel = 'method2 (modified)'.
	self assert: (treeEntries at: 4) getLabel = 'classB (modified)'.