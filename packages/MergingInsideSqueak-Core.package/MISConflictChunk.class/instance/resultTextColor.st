as yet unclassified
resultTextColor

	^self isResolved ifTrue: [
				^TextColor blue
			] ifFalse: [
				^TextColor red
			]