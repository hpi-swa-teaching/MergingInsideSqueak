as yet unclassified
testComm
	
	| is should |
	is := (self sampleDiff: self diffClass) comm.
	should := {#different->('The red brown fox'->'The brown spotted fox') . #different->('jumped over'->'leaped over'). 				#common->'the rolling log'}.
	self assert: is = should.