ConflictListHandler
uiConflictList: aClass
	| list |
	
	list := OrderedCollection new.
	list 
		add: 'test1';
		add: 'test2'.
	^list