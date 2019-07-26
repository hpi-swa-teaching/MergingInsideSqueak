as yet unclassified
testCommPrefix
	| is should |
	is := self diffClass new
			file1: 'The red brown fox' , Character cr , 
			'jumped over' , Character cr , 
			'the rolling log';
			file2: 'jumped over' , Character cr , 
			'the rolling log'; lineBasedDiff.
	should := {#different->(('The red brown fox', Character cr)->'') . 
				#common->('jumped over', Character cr) . 
				#common->'the rolling log'}.

	self assert: is = should.