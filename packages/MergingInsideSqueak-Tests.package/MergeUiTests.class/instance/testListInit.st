tests
testListInit
	| uiList listItems |
	
	uiList := view getConflictList.
	listItems := uiList items.
	self assert: listItems size == 4.
	self assert: (listItems at: 1) getLabel = 'classA'.
	self assert: (listItems at: 2) getLabel = 'method1'.
	self assert: (listItems at: 3) getLabel = 'method2'.
	self assert: (listItems at: 4) getLabel = 'classB'.