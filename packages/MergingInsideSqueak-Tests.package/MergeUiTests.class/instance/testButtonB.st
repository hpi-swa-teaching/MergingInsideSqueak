tests
testButtonB
	| button expectedPartAText currentConflict uiPartA expectedPartBText uiPartB |
	
	uiPartA := view getPartA.
	uiPartB := view getPartB.
	button := view getButtonB.
	expectedPartAText := Text new.
	expectedPartAText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	expectedPartAText append: (Text string: '12' attributes: (Array with: TextColor red with: TextEmphasis underlined)).
	expectedPartAText append: (Text string: '3' attribute: TextColor black).
	expectedPartBText := Text new.
	expectedPartBText append: (Text string: 'method1', Character cr, Character cr, '	^test' attribute: TextColor black).
	expectedPartBText append: (Text string: '45' attributes: (Array with: TextColor green with: TextEmphasis underlined)).
	expectedPartBText append: (Text string: '3' attribute: TextColor black).
	
	self assert: button actionSelector == #chooseB.
		
	currentConflict := view getController getCurrentConflictingMethod currentConflict.
	self assert: currentConflict getSelected size == 0.
	self assert: currentConflict isResolved not.
	view getController chooseB.
	self assert: currentConflict getSelected size == 1.
	self assert: (currentConflict getSelected at: 1) == #right.
	self assert: currentConflict isResolved.
	self assert: (self compareText: uiPartA getText With: expectedPartAText).
	self assert: (self compareText: uiPartB getText With: expectedPartBText).