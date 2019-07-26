ConflictListHandler
save

	self areAllResolved ifTrue: [
		self view close.	
	] ifFalse: [
		self inform: 'Some conflicts must still be resolved.'
	]