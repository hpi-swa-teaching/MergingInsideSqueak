accessing
attributedTextForSide: aSide

	^Text string: (self textForSide: aSide) attribute: (self textColorForSide: aSide)