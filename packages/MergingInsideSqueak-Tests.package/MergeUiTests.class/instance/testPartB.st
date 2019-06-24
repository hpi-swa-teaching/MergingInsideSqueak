tests
testPartB
	| uiPartB expectedText |
	
	uiPartB := view getPartB.
	expectedText := Text new.
	expectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	expectedText append: ((Text string: '45' attributes: (controller unresolvedConflictColor)) addAttribute: TextEmphasis underlined).
	expectedText append: (Text fromString: '3').
	
	self assert: (self compareText: uiPartB getText With: expectedText).