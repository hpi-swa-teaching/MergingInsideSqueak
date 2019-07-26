as yet unclassified
sourceTextColorForSide: aSide

	^self isResolved ifTrue: [
			(self selectedSides anySatisfy: [ :selected | selected = aSide ])
				ifTrue: [^TextColor green]
				ifFalse: [^TextColor red]
		] ifFalse: [^TextColor blue]