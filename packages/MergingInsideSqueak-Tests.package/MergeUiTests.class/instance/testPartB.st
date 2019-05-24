tests
testPartB
	| uiPartB expectedText |
	
	uiPartB := self getPartB.
	expectedText := Text new.
	expectedText append: (Text string: 'test' attribute: TextColor black).
	expectedText append: (Text string: 'right' attribute: TextColor blue).
	expectedText append: (Text string: 'end' attribute: TextColor black).
	
	self assert: (self compareText: uiPartB getText With: expectedText).