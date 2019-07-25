as yet unclassified
sampleDiff: diffClass
	^ diffClass new
			file1: 'The red brown fox' , Character cr , 
			'jumped over' , Character cr , 
			'the rolling log';
			file2: 'The brown spotted fox' , Character cr , 
			'leaped over' , Character cr , 
			'the rolling log'.
