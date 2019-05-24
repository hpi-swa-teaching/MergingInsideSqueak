tests
testPartA
	| uiPartA expectedText |
	
	uiPartA := self getPartA.
	expectedText := Text new.
	expectedText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	expectedText append: (Text string: '12' attribute: TextColor blue).
	expectedText append: (Text string: '3' attribute: TextColor black).
	
	self assert: (self compareText: uiPartA getText With: expectedText).