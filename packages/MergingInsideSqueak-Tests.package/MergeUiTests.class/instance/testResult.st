tests
testResult
	| uiResult expectedText |
	
	uiResult := self getResult.
	expectedText := Text new.
	expectedText append: (Text string: 'test' attribute: TextColor black).
	expectedText append: (Text string: '?' attribute: TextColor red).
	expectedText append: (Text string: 'end' attribute: TextColor black).
	
	self assert: (self compareText: uiResult getText With: expectedText).