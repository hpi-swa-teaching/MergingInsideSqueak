tests
testClickList
	| uiList uiPartA expectedTextA uiPartB expectedTextB uiResult expectedText |
	
	uiList := self getConflictList.
	view getController currentConflictingClass: 2.
	view getController currentConflictingMethod: 1.
	uiList update: #selectedPath.	
	
	uiPartA := self getPartA.
	expectedTextA := Text new.
	expectedTextA append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	expectedTextA append: (Text string: '31298' attribute: TextColor blue).
	expectedTextA append: (Text string: '7' attribute: TextColor black).
	self assert: (self compareText: uiPartA getText With: expectedTextA).
	
	uiPartB := self getPartB.
	expectedTextB := Text new.
	expectedTextB append: (Text string: 'method1', Character cr, Character cr, '	^test'  attribute: TextColor black).
	expectedTextB append: (Text string: '45' attribute: TextColor blue).
	expectedTextB append: (Text string: '7' attribute: TextColor black).
	self assert: (self compareText: uiPartB getText With: expectedTextB).
	
	uiResult := self getResult.
	expectedText := Text new.
	expectedText append: (Text string: 'method1', Character cr, Character cr, '	^test'  attribute: TextColor black).
	expectedText append: (Text string: '?' attribute: TextColor red).
	expectedText append: (Text string: '7' attribute: TextColor black).
	self assert: (self compareText: uiResult getText With: expectedText).