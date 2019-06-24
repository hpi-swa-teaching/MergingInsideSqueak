tests
testResult
	| uiResult expectedText |
	
	uiResult := view getResult.
	expectedText := Text new.
	expectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	expectedText append: ((Text string: '?' attributes: (controller mergeConflictColor)) addAttribute: TextEmphasis underlined).
	expectedText append: (Text fromString: '3').
	
	self assert: (self compareText: uiResult getText With: expectedText).