as yet unclassified
resultText

	| brk |
	brk := '', Character cr.
	^result inject: '' into: [ :mergeResult :chunk | mergeResult , [(chunk key = #conflict) 
		ifTrue: [
			'', brk, '<<<', brk, chunk value left, brk, '===', brk, chunk value original, brk, '>>>', brk
		] ifFalse: [
			chunk value inject: '' into: [ :text :char | text, char]
		]] value ]