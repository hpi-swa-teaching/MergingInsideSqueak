tests
testPartB
	| uiPartB expectedText |
	
	uiPartB := self getPartB.
	expectedText := Text new.
	expectedText append: (Text string: 'method1', Character cr, Character cr, '	^test'  attribute: TextColor black).
	expectedText append: (Text string: '45' attribute: TextColor blue).
	expectedText append: (Text string: '3' attribute: TextColor black).
	
	self assert: (self compareText: uiPartB getText With: expectedText).