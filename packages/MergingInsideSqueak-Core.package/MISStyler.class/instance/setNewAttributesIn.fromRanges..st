as yet unclassified
setNewAttributesIn: aText fromRanges: ranges

	| defaultAttributes newRuns newValues lastAttributes oldRuns nextIndex lastCount |	
	oldRuns := aText runs.
	defaultAttributes := self attributesFor: #default.
	newRuns := OrderedCollection new: ranges size * 2 + 1.
	newValues := OrderedCollection new: ranges size * 2 + 1.
	lastAttributes := nil.
	nextIndex := 1.
	lastCount := 0.
	ranges do: [ :range |
		| attributes |
		nextIndex < range start ifTrue: [ 
			lastAttributes == defaultAttributes 
				ifTrue: [
					lastCount := lastCount + range start - nextIndex.
					newRuns at: newRuns size put: lastCount ]
				ifFalse: [
					lastCount := range start - nextIndex.
					newRuns addLast: lastCount. 
					lastAttributes := defaultAttributes.
					newValues addLast: lastAttributes ].
			nextIndex := range start ].
		attributes := (self attributesFor: range type) ifNil: [ defaultAttributes ].
		lastAttributes == attributes
			ifTrue: [ 
				lastCount := lastCount + range end - nextIndex + 1.
				newRuns at: newRuns size put: lastCount ]
			ifFalse: [
				lastCount := range end - nextIndex + 1.
				newRuns addLast: lastCount.
				lastAttributes := attributes.
				newValues addLast: lastAttributes ].
		nextIndex := range end + 1 ].
	nextIndex <= aText size ifTrue: [
		lastAttributes == defaultAttributes 
				ifTrue: [
					lastCount := lastCount + aText size - nextIndex + 1.
					newRuns at: newRuns size put: lastCount ]
				ifFalse: [
					lastCount := aText size - nextIndex + 1.
					newRuns addLast: lastCount.
					lastAttributes := defaultAttributes.
					newValues addLast: lastAttributes ] ].
	aText runs: (RunArray runs: newRuns values: newValues).
	oldRuns withStartStopAndValueDo: [ :start :stop :attribs |
		(attribs anySatisfy: [ :each | each shoutShouldPreserve ]) ifTrue: [
			attribs do: [ :each | aText addAttribute: each from: start to: stop ] ] ].
	