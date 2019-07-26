as yet unclassified
resultTextColor

	^self isResolved ifTrue: [
				^MergeTextColor blue
			] ifFalse: [
				^MergeTextColor red
			]