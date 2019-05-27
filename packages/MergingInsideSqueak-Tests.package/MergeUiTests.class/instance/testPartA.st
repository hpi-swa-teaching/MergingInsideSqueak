tests
testPartA
	| uiPartA expectedText |
	
	uiPartA := view getPartA.
	expectedText := Text new.
	expectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	expectedText append: ((Text string: '12' attributes: (controller unresolvedConflictColor)) addAttribute: TextEmphasis underlined).
	expectedText append: (Text fromString: '3').
	
	self assert: (self compareText: uiPartA getText With: expectedText).