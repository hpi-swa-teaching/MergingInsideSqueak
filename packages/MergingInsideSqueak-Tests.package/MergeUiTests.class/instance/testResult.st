tests
testResult
	| uiResult expectedText |
	
	uiResult := view getResult.
	expectedText := Text new.
	expectedText append: (Text string: 'method1', Character cr, Character cr, '	^test'  attribute: TextColor black).
	expectedText append: (Text string: '?' attribute: TextColor red).
	expectedText append: (Text string: '3' attribute: TextColor black).
	
	self assert: (self compareText: uiResult getText With: expectedText).