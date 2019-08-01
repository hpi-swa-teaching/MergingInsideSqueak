tests
testChoice
	
	view controller handleChangeSelection: ((view controller conflicts at: 2) change methods at:1).
	self assert: (self areEqualText: view partAMorph getText and:
		(self caseTwoExpectedParts: #('	1+31298' '	^7398') withColors: (Array with: MISMergeTextColor blue with: MISMergeTextColor blue) underlined: #(true false))).
	self assert: (self areEqualText: view partBMorph getText and:
		(self caseTwoExpectedParts: #('	1+45' '	^745') withColors: (Array with: MISMergeTextColor blue with: MISMergeTextColor blue) underlined: #(true false))).
	self assert: (self areEqualText: view resultMorph getText and:
		(self caseTwoExpectedParts: #('?' '?') withColors: (Array with: MISMergeTextColor red with: MISMergeTextColor red) underlined: #(true false))).
