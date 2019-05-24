tests
testPartA
	| uiPartA expectedText |
	
	uiPartA := self getPartA.
	expectedText := Text new.
	expectedText append: (Text string: 'test' attribute: TextColor black).
	expectedText append: (Text string: 'left' attribute: TextColor blue).
	expectedText append: (Text string: 'end' attribute: TextColor black).
	
	self assert: (self compareText: uiPartA getText With: expectedText).