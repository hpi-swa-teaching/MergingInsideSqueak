as yet unclassified
resultTextColor

	^self isResolved ifTrue: [
				^MISMergeTextColor blue
			] ifFalse: [
				^MISMergeTextColor red
			]