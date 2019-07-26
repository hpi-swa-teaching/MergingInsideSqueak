as yet unclassified
testCommInlineMiddleChange
	| is should |
	is := self diffClass new
			file1: 'The red brown fox' , Character cr , 
			'jumped big over' , Character cr , 
			'the rolling log';
			file2: 'The red brown fox' , Character cr , 
			'jumped over' , Character cr , 
			'the rolling log'; lineBasedDiff.
	should := {#common->('The red brown fox', Character cr) . 
				#different->(('jumped big over', Character cr)->('jumped over', Character cr)) . 
				#common->'the rolling log'}.

	self assert: is = should.