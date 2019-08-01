helpers
caseTwoExpectedParts: aCollectionOfStrings withColors: aCollectionOfColors underlined: aCollectionOfBooleans

	| attributes1 attributes2 |
	attributes1 := Array with: (aCollectionOfColors at: 1).
	attributes2 := Array with: (aCollectionOfColors at: 2).
	(aCollectionOfBooleans at: 1 ifAbsent: false) ifTrue: [ attributes1 := Array with: (aCollectionOfColors at: 1) with: TextEmphasis underlined].
	(aCollectionOfBooleans at: 2 ifAbsent: false) ifTrue: [ attributes2 := Array with: (aCollectionOfColors at: 2) with: TextEmphasis underlined].
	^Text new append:
		(Text string: 'method1', Character cr, Character cr attribute: TextColor black),
		(Text string: (aCollectionOfStrings at: 1) attributes: attributes1),
		(Text string: '', Character cr attribute: TextColor black),
		(Text string: (aCollectionOfStrings at: 2) attributes: attributes2).