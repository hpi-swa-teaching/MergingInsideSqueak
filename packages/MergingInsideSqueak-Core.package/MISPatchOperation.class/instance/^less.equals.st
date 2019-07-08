as yet unclassified
<= anotherMISPatchOperation
	
	"Answer a comparison code telling how the receiver sorts relative to aString:
		1 - before
		2 - equal
		3 - after.
	"
	"^ (String compare: self change with: anotherMISPatchOperation change collated: String CaseSensitiveOrder) <= 2"
	^self change <= anotherMISPatchOperation change