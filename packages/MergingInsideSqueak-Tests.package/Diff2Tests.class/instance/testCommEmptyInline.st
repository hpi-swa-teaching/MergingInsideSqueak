as yet unclassified
testCommEmptyInline
	| is should |
	is := self diffClass new
			file1: 'The red brown fox' , Character cr , 
			Character cr , 
			'jumped over' , Character cr , 
			'the rolling log';
			file2: 'The red brown fox' , Character cr , 
			'jumped over' , Character cr , 
			'the rolling log'; comm.
	should := {#common->'The red brown fox' . #different->(Character cr ->'') . #common->'jumped over' . #common->'the rolling log'}.

	self assert: is = should.