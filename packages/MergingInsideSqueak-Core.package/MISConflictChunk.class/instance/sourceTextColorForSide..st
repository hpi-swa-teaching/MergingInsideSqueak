as yet unclassified
sourceTextColorForSide: aSide

	^self isResolved ifTrue: [
			(self selectedSides anySatisfy: [ :selected | selected = aSide ])
				ifTrue: [^MISMergeTextColor green]
				ifFalse: [^MISMergeTextColor red]
		] ifFalse: [^MISMergeTextColor blue]