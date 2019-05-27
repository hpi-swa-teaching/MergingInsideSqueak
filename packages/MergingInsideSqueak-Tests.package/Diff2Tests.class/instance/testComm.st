as yet unclassified
testComm
	| c |
	c := (self sampleDiff: self diffClass) comm.
	self assert: [c = {#common->#(#The) . #different->(#(#red)->#()) . #common->#(#brown) . #different->(#()->#(#spotted)) . #common->#(#fox) . #different->(#(#jumped)->#(#leaped)) . #common->#(#over #the #rolling #log)}].