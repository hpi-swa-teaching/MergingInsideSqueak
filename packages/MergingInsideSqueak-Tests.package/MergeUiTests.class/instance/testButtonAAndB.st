tests
testButtonAAndB
	| currentConflict partASelectedText partANotSelectedText partBSelectedText partBNotSelectedText uiPartB uiPartA |
	
	uiPartA := view getPartA.
	uiPartB := view getPartB.
	
	partANotSelectedText := Text new.
	partANotSelectedText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	partANotSelectedText append: (Text string: '12' attributes: (Array with: TextColor red with: TextEmphasis underlined)).
	partANotSelectedText append: (Text string: '3' attribute: TextColor black).
	partBSelectedText := Text new.
	partBSelectedText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	partBSelectedText append: (Text string: '45' attributes: (Array with: TextColor green with: TextEmphasis underlined)).
	partBSelectedText append: (Text string: '3' attribute: TextColor black).
	
	partASelectedText := Text new.
	partASelectedText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	partASelectedText append: (Text string: '12' attributes: (Array with: TextColor green with: TextEmphasis underlined)).
	partASelectedText append: (Text string: '3' attribute: TextColor black).
	partBNotSelectedText := Text new.
	partBNotSelectedText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	partBNotSelectedText append: (Text string: '45' attributes: (Array with: TextColor red with: TextEmphasis underlined)).
	partBNotSelectedText append: (Text string: '3' attribute: TextColor black).
	
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