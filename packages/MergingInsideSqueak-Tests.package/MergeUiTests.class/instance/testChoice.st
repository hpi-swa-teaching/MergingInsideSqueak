tests
testChoice
	
	view controller handleChangeSelection: ((view controller conflicts at: 2) change methods at:1).
	self assert: (self areEqualText: view partAMorph getText and:
		(self caseTwoExpectedParts: #('31298' '398') withColors: (Array with: TextColor blue with: TextColor blue) underlined: #(true false))).
	self assert: (self areEqualText: view partBMorph getText and:
		(self caseTwoExpectedParts: #('45' '45') withColors: (Array with: TextColor blue with: TextColor blue) underlined: #(true false))).
	self assert: (self areEqualText: view resultMorph getText and:
		(self caseTwoExpectedParts: #('?' '?') withColors: (Array with: TextColor red with: TextColor red) underlined: #(true false))).