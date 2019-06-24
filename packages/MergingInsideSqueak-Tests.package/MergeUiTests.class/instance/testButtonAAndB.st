tests
testButtonAAndB
	| currentConflict partASelectedText partANotSelectedText partBSelectedText partBNotSelectedText uiPartB uiPartA |
	
	uiPartA := view getPartA.
	uiPartB := view getPartB.
	
	partANotSelectedText := Text new.
	partANotSelectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	partANotSelectedText append: ((Text string: '12' attributes: (controller discardedColor)) addAttribute: TextEmphasis underlined).
	partANotSelectedText append: (Text fromString: '3').
	partBSelectedText := Text new.
	partBSelectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	partBSelectedText append: ((Text string: '45' attributes: (controller takenColor)) addAttribute: TextEmphasis underlined).
	partBSelectedText append: (Text fromString: '3').
	
	partASelectedText := Text new.
	partASelectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	partASelectedText append: ((Text string: '12' attributes: (controller takenColor)) addAttribute: TextEmphasis underlined).
	partASelectedText append: (Text fromString: '3').
	partBNotSelectedText := Text new.
	partBNotSelectedText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	partBNotSelectedText append: ((Text string: '45' attributes: (controller discardedColor)) addAttribute: TextEmphasis underlined).
	partBNotSelectedText append: (Text fromString: '3').
	
	currentConflict := view getController getCurrentConflictingMethod currentConflict.
	view getController chooseA.
	self assert: currentConflict getSelected size == 1.
	self assert: (currentConflict getSelected at: 1) == #left.
	self assert: currentConflict isResolved.
	self assert: (self compareText: uiPartA getText With: partASelectedText).
	self assert: (self compareText: uiPartB getText With: partBNotSelectedText).
	
	view getController chooseB.
	self assert: currentConflict getSelected size == 2.
	self assert: (currentConflict getSelected at: 1) == #left.
	self assert: (currentConflict getSelected at: 2) == #right.
	self assert: currentConflict isResolved.
	self assert: (self compareText: uiPartA getText With: partASelectedText).
	self assert: (self compareText: uiPartB getText With: partBSelectedText).
	
	view getController chooseA.
	self assert: currentConflict getSelected size == 1.
	self assert: (currentConflict getSelected at: 1) == #right.
	self assert: currentConflict isResolved.
	self assert: (self compareText: uiPartA getText With: partANotSelectedText).
	self assert: (self compareText: uiPartB getText With: partBSelectedText).