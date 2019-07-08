helpers
caseOneExpectedPart: aSelectedString withColor: aColor underlined: isUnderlinedBoolean

	| attributes |
	attributes := Array with: aColor.
	isUnderlinedBoolean ifTrue: [ attributes := Array with: aColor with: TextEmphasis underlined].
	^Text new append:
		(Text string: 'method1', Character cr, Character cr, '	^test'  attribute: TextColor black),
		(Text string: aSelectedString attributes: attributes),
		(Text string: '3' attribute: TextColor black).