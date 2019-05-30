tests
testPartA
	| uiPartA expectedText |
	
	uiPartA := view getPartA.
	expectedText := Text new.
	expectedText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	expectedText append: (Text string: '12' attributes: (Array with: TextColor blue with: TextEmphasis underlined)).
	expectedText append: (Text string: '3' attribute: TextColor black).
	
	self assert: (self compareText: uiPartA getText With: expectedText).