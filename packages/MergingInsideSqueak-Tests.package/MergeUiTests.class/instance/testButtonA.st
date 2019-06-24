tests
testButtonA
	| button expectedPartAText currentConflict uiPartA expectedPartBText uiPartB |
	
	uiPartA := view getPartA.
	uiPartB := view getPartB.
	button := view getButtonA.
	expectedPartAText := Text new.
	expectedPartAText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	expectedPartAText append: ((Text string: '12' attributes: (controller takenColor)) addAttribute: TextEmphasis underlined).
	expectedPartAText append: (Text fromString: '3').
	expectedPartBText := Text new.
	expectedPartBText append: (Text fromString: 'method1', Character cr, Character cr, '	^test').
	expectedPartBText append: ((Text string: '45' attributes: (controller discardedColor)) addAttribute: TextEmphasis underlined).
	expectedPartBText append: (Text fromString: '3').
	
	self assert: button actionSelector == #chooseA.
		
	currentConflict := view getController getCurrentConflictingMethod currentConflict.
	self assert: currentConflict getSelected size == 0.
	self assert: currentConflict isResolved not.
	view getController chooseA.
	self assert: currentConflict getSelected size == 1.
	self assert: (currentConflict getSelected at: 1) == #left.
	self assert: currentConflict isResolved.
	self assert: (self compareText: uiPartA getText With: expectedPartAText).
	self assert: (self compareText: uiPartB getText With: expectedPartBText).