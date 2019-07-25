as yet unclassified
sourceTextColorForSide: aSide

	^self isResolved ifTrue: [
			(self selectedSides anySatisfy: [ :selected | selected = aSide ])
				ifTrue: [^MergeTextColor green]
				ifFalse: [^MergeTextColor red]
		] ifFalse: [^MergeTextColor blue]