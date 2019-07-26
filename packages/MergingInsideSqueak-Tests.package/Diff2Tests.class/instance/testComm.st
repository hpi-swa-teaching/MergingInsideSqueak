as yet unclassified
testComm
	
	| is should |
	is := (self sampleDiff: self diffClass) comm.
	should := {#different->(('The red brown fox', Character cr)->('The brown spotted fox', Character cr)) .
				#different->(('jumped over', Character cr)->('leaped over', Character cr)).
				#common->'the rolling log'}.
	self assert: is = should.