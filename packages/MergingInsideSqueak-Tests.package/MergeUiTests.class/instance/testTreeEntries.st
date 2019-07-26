tests
testTreeEntries
	
	| treeEntries |
	treeEntries := view conflictListMorph items.
	self assert: treeEntries size == 2.
	self assert: (treeEntries at: 1) getLabel = 'classA (modified)'.
	self assert: (treeEntries at: 2) getLabel = 'classB (modified)'.