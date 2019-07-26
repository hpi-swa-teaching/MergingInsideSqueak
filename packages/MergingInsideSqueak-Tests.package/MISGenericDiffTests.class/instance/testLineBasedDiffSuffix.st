line-diff-testing
testLineBasedDiffSuffix
	| is should |
	is := self diffClass new
			file1: 'The red brown fox' , Character cr , 
			'jumped over' , Character cr , 
			'the rolling log';
			file2: 'The red brown fox' , Character cr , 
			'jumped over'; lineBasedDiff.
			
	should := {#common->('The red brown fox', Character cr) . 
				#common->('jumped over') . 
				#different->('the rolling log'->'')}.
			
	self assert: is = should.