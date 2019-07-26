ConflictListHandler
save

	self areAllResolved ifTrue: [
		self view answer: true.	
	] ifFalse: [
		self inform: 'Some conflicts must still be resolved.'
	]