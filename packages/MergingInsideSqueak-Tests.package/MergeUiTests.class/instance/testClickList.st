tests
testClickList
	| uiList uiPartA expectedTextA uiPartB expectedTextB uiResult expectedText |
	
	uiList := view getConflictList.
	view getController currentConflictingClass: 2.
	view getController currentConflictingMethod: 1.
	uiList update: #selectedPath.	
	
	uiPartA := view getPartA.
	expectedTextA := Text new.
	expectedTextA append: (Text fromString: 'method1', Character cr, Character cr, '	1+').
	expectedTextA append: ((Text string: '31298' attributes: (styler attributesFor: #keyword)) addAttribute: TextEmphasis underlined).
	expectedTextA append: (Text fromString: '', Character cr, '	^7').
	expectedTextA append: (Text string: '398' attributes: (styler attributesFor: #keyword)).
	self assert: (self compareText: uiPartA getText With: expectedTextA).
	
	uiPartB := view getPartB.
	expectedTextB := Text new.
	expectedTextB append: (Text fromString: 'method1', Character cr, Character cr, '	1+').
	expectedTextB append: ((Text string: '45' attributes: (styler attributesFor: #keyword)) addAttribute: TextEmphasis underlined).
	expectedTextB append: (Text fromString: '', Character cr, '	^7' ).
	expectedTextB append: (Text string: '45' attributes: (styler attributesFor: #keyword)).
	self assert: (self compareText: uiPartB getText With: expectedTextB).
	
	uiResult := view getResult.
	expectedText := Text new.
	expectedText append: (Text fromString: 'method1', Character cr, Character cr, '	1+').
	expectedText append: ((Text string: '?' attributes: (styler attributesFor: #invalid)) addAttribute: TextEmphasis underlined).
	expectedText append: (Text fromString: '', Character cr, '	^7').
	expectedText append: (Text string: '?' attributes: (styler attributesFor: #invalid)).
	self assert: (self compareText: uiResult getText With: expectedText).